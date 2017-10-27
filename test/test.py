import sys
sys.path.append('../libraries/python/')
from super7 import Super7, BaudRates
import serial.tools.list_ports
import time

TOTAL_CHARS = 24

s7 = Super7(serial.tools.list_ports.comports()[0].device,
            baudrate=BaudRates.BAUD_38400)

msg = ([' '] * TOTAL_CHARS) + [chr(i) for i in range(32, 123)]
msg = ''.join(msg)
for i in range(len(msg) + 1):
    extra = msg[i:i + TOTAL_CHARS].count('.')
    s7.write(msg[i:i + TOTAL_CHARS + extra])
    time.sleep(0.05)

s7.clear()

for i in range(0, 64 - TOTAL_CHARS):
    s7.send_raw([i + a for a in range(TOTAL_CHARS)])
    time.sleep(0.05)

for i in range(1, 11):
    s7.set_brightness(i)
    time.sleep(0.5)

s7.clear()
