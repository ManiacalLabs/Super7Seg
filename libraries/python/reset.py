from super7 import Super7, BaudRates
import sys
import time

bauds = [
    (BaudRates.BAUD_2400, '2400'),
    (BaudRates.BAUD_4800, '4800'),
    (BaudRates.BAUD_9600, '9600'),
    (BaudRates.BAUD_14400, '14400'),
    (BaudRates.BAUD_19200, '19200'),
    (BaudRates.BAUD_38400, '38400'),
    (BaudRates.BAUD_57600, '57600'),
    (BaudRates.BAUD_76800, '76800')
]

for rate in bauds:
    print(rate[1])
    s7 = Super7(sys.argv[1], baudrate=rate[0])
    s7.factory_reset()
    s7._com.close()

s7 = Super7(sys.argv[1], baudrate=BaudRates.BAUD_9600)
s7.write("S7 Reset")
# s7.write("do reset")
# time.sleep(1)
# s7.factory_reset()
# time.sleep(2)
