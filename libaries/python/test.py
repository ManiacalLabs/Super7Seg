from super7 import Super7, BaudRates
import time

strings = [
    '999999999996',
    'Super7',
    # 'Hello World'
]

bauds = [
    (BaudRates.BAUD_9600, 9600),
    (BaudRates.BAUD_19200, 19200),
    (BaudRates.BAUD_38400, 38400),
]

s7 = Super7("/dev/ttyUSB0", baudrate=bauds[0][0])
s7.set_brightness(3)
for s in strings:
    s7.write(s)
    time.sleep(1)
for b in bauds:
    s7.set_baud(b[0])
    time.sleep(1)
    s7.write("baud-{}".format(b[1]))
    time.sleep(1)


# for i in range(0, 245):
#     s7.send_raw([i+a for a in range(12)])
    # time.sleep(0.1)

# s7.set_brightness(10)
# time.sleep(1)
# s7.set_brightness(2)
# time.sleep(1)
# s7.set_brightness(10)
# time.sleep(1)
# for s in strings:
#     # print(s)
#     s7.write(s)
#     time.sleep(1)

# s7.clear()

# for _ in range(1):
#     for i in range(1, 12, 1):
#         print(i)
#         s7.set_brightness(i)
#         time.sleep(0.5)
#         print('\n')
