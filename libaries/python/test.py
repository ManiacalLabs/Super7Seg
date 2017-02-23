from super7 import Super7, BaudRates
import serial.tools.list_ports
import time

TOTAL_CHARS = 36

s7 = Super7(serial.tools.list_ports.comports()[0].device, baudrate=BaudRates.BAUD_9600)

msg = ([' ']*TOTAL_CHARS) + [chr(i) for i in range(32, 123)]
msg = ''.join(msg)
for i in range(len(msg) + 1):
    s7.write(msg[i:i+TOTAL_CHARS])
    time.sleep(0.1)

time.sleep(1)

for i in range(0, 256 - TOTAL_CHARS):
    s7.send_raw([i+a for a in range(TOTAL_CHARS)])
    time.sleep(0.1)

# s7.write("8."*TOTAL_CHARS)
# s7.set_brightness(10)

for i in range(1, 11):
    s7.set_brightness(i)
    time.sleep(1)

s7.clear()
