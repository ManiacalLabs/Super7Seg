import logging as log
import time

try:
    import serial
    import serial.tools.list_ports
except ImportError as e:
    error = "Please install pyserial 2.7+! pip install pyserial"
    log.error(error)
    raise ImportError(error)

from distutils.version import LooseVersion

if LooseVersion(serial.VERSION) < LooseVersion('2.7'):
    error = ("pyserial v{} found, please upgrade to v2.7+!"
             " pip install pyserial --upgrade").format(serial.VERSION)
    log.error(error)
    raise ImportError(error)


class BaudRates():
    BAUD_2400 = 0
    BAUD_4800 = 1
    BAUD_9600 = 2
    BAUD_14400 = 3
    BAUD_19200 = 4
    BAUD_38400 = 5
    BAUD_57600 = 6
    BAUD_76800 = 7

    _rate_values = {
        0: 2400,
        1: 4800,
        2: 9600,
        3: 14400,
        4: 19200,
        5: 38400,
        6: 57600,
        7: 76800
    }


class Commands():
    BRIGHTNESS = 0x10
    RAW = 0x11
    BAUD = 0x12
    FACTORY_RESET = 0x13


class Super7(object):

    def __init__(self, dev, baudrate=BaudRates.BAUD_38400):
        self.dev = dev
        if baudrate in BaudRates._rate_values:
            self.baudrate = BaudRates._rate_values[baudrate]
        else:
            self.baudrate = baudrate
        self._com = None
        self.connect()

    @staticmethod
    def findSerialDevices():
        result = []
        for port in serial.tools.list_ports.comports():
            result.append(port.device)
        return result

    def connect(self):
        try:
            log.info('Reconnecting...')
            if self._com:
                self._com.close()
            self._com = serial.Serial(self.dev, baudrate=self.baudrate)
            time.sleep(1)  # S7 usually resets. Wait for it...
        except serial.SerialException:
            ports = Super7.findSerialDevices()
            error = 'Invalid port specified. No COM ports available.'
            if len(ports) > 0:
                error = 'Invalid port specified. Try using one of: \n' + \
                    '\n'.join(ports)
            log.info(error)
            raise Exception(error)

    def write(self, msg):
        msg = msg.replace('\n', '')
        msg += '\n'
        self._com.write(msg)
        # time.sleep(1)
        # print(list(self._com.read_all()))

    def clear(self):
        self.write('')

    def send_command(self, cmd, count=None, value=None):
        # print(locals())
        packet = bytearray()
        packet.append(cmd)
        if count is not None:
            packet.append(count)
        if value is not None:
            if isinstance(value, (str, bytearray, list)):
                packet.extend(value)
            else:
                packet.append(value)

        packet.append('\n')
        # print(list(packet))
        self._com.write(packet)
        # time.sleep(1)
        # print([ord(i) for i in list(self._com.read_all())])

    def set_brightness(self, level):
        self.send_command(Commands.BRIGHTNESS, value=level)

    def send_raw(self, raw_bytes):
        self.send_command(Commands.RAW, count=len(raw_bytes), value=raw_bytes)

    def set_baud(self, baudrate):
        self.send_command(Commands.BAUD, value=baudrate)
        time.sleep(1)  # must provide time to set baud before reconnect
        self.baudrate = BaudRates._rate_values[baudrate]
        self.connect()

    def factory_reset(self):
        self.send_command(Commands.FACTORY_RESET)
        time.sleep(1)  # must provide time to reset before reconnect
        self.baudrate = BaudRates._rate_values[BaudRates.BAUD_38400]
        self.connect()
