from __future__ import print_function
from super7 import Super7, BaudRates
import sys
import time


rates = [str(r) for v, r in BaudRates._rate_values.items()]
s_rates = ', '.join(rates)

if len(sys.argv) < 2:
    print("""
Usage: python reset.py [DEVICE] [BAUD_RATE]
If BAUD_RATE is omitted it will reset to 38400.
Valid BAUD_RATE values: {}
""".format(s_rates))
    sys.exit(1)

if len(sys.argv) > 2:
    s_baud = sys.argv[2]
    if s_baud not in rates:
        print("Invalid BAUD_RATE value. Must be one of: {}".format(s_rates))
        sys.exit(1)
    baud = int(s_baud)
else:
    baud = BaudRates._rate_values[BaudRates.BAUD_38400]

device = sys.argv[1]

print('Factory Resetting and updating baud rate to: {}'.format(baud))
print('Each valid baud rate will be attempted to find the current setting.')

for rate in rates:
    print('Trying {}'.format(rate))
    s7 = Super7(device, baudrate=rate)
    s7.factory_reset()
    time.sleep(1)
    s7._com.close()

s7 = Super7(device, baudrate=BaudRates.BAUD_38400)
s7.write('S7 reset')
print('Setting baudrate to: {}'.format(baud))
s7.set_baud(baud)
time.sleep(1)
s7.write('rate ' + str(baud))
