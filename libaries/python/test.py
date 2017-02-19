from super7 import Super7, BaudRates
import time

# msg = "Hello I am Super 7. 1234567890. I show all the text"
# msg = (" "*12) + msg
s7 = Super7("/dev/ttyUSB0", baudrate=BaudRates.BAUD_38400)
for i in range(1, 11):
    s7.set_brightness(i)
    time.sleep(1)

# for i in range(len(msg) + 1):
#     # print(msg[i:i+12])
#     s7.write(msg[i:])
#     time.sleep(0.05)
# for s in strings:
#     s7.write(s)
#     time.sleep(1)
# for b in bauds:
#     s7.set_baud(b[0])
#     time.sleep(1)
#     s7.write("baud-{}".format(b[1]))
#     time.sleep(1)


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
