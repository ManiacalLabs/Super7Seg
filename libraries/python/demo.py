from super7 import Super7, BaudRates
import serial.tools.list_ports
import time
import random
from datetime import datetime

DAYS = [
    'MOn',
    'tUE',
    'WEd',
    'thU',
    'FrI',
    'SAt',
    'SUn',
]

MONTHS = [
    'JAn',
    'FEb',
    'MAr',
    'APr',
    'MAy',
    'JUn',
    'JUL',
    'AUg',
    'SEP',
    'OCt',
    'nOv',
    'DEC'
]


TOTAL_CHARS = 36


def scroll_msg(msg, delay=0.1):
    msg = ''.join(([' '] * TOTAL_CHARS)) + msg
    for i in range(len(msg) + 1):
        s7.write(msg[i:i + TOTAL_CHARS])
        time.sleep(delay)


s7 = Super7(serial.tools.list_ports.comports()[0].device,
            baudrate=BaudRates.BAUD_38400)

# for m in MONTHS:
#     s7.write(m)
#     time.sleep(2)


def get_time():
    now = datetime.now()
    msg = '{} {} {} {} {}-{}-{} {}'.format(
        DAYS[now.weekday()],
        MONTHS[now.month - 1],
        str(now.day).zfill(2),
        now.year,
        str(now.hour).zfill(2),
        str(now.minute).zfill(2),
        str(now.second).zfill(2),
        str(now.microsecond).zfill(6)[:3]
    )
    return msg


msg = get_time()

padding = TOTAL_CHARS - len(msg)
count = padding
sub_count = 0
d = -1
while True:
    msg = get_time()
    s7.write((' ' * count) + msg)
    sub_count += 1
    if sub_count >= 10:
        count += d
        if d == -1 and count <= 0:
            d = 1
        elif d == 1 and count >= padding:
            d = -1
        sub_count = 0
    time.sleep(0.05)

# scroll_msg('GEEkSPArK 2017', 0.15)
#
# s7.clear()

# s7.write('SAT - Sept 16 - 2017 - 20-45')
# time.sleep(5)

for day in DAYS:
    s7.write(day)
    time.sleep(2)

while True:
    msg = ""
    for _ in range(TOTAL_CHARS):
        msg += str(random.randint(0, 9))
    s7.write(msg)
    time.sleep(0.1)

s7.clear()
