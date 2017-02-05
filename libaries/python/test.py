from super7 import Super7, BaudRates
import time

strings = [
    '999999999996',
    'Super7',
    'Hello World'
]

s7 = Super7("COM8", baudrate=BaudRates.BAUD_38400)

# s7.set_brightness(10)
# time.sleep(1)
# s7.set_brightness(2)
# time.sleep(1)
# s7.set_brightness(10)
# time.sleep(1)
# for s in strings:
#     s7.write(s)
#     time.sleep(1)

# s7.clear()

for _ in range(1):
    for i in range(1, 12, 1):
        print(i)
        s7.set_brightness(i)
        time.sleep(0.5)
        print('\n')
