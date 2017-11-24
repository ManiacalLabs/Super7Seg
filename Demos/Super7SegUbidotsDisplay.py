# Super7Seg_UbidotsDisplay.py
#
# Demo of Maniacal Labs Super 7 Seg Display
# 
# Use the Ubidots API to obtain values for given variables
# which corespond to sensor readings.

import json
import requests
import time
from super7 import Super7, BaudRates

# Ubidots API Token.
# https://ubidots.com/docs/
API_KEY = "----YOUR API KEY HERE----"

# Total display width. Equal to number of S7 displays x 12
TOTAL_CHARS = 12

# Device and Sensors ("variables") 
DEVICE = "----YOUR DEVICE NAME HERE----"
# Variables under the above device
SENSORS = ["VARIABLE1", "VARIABLE2", "VARIABLE3"]
# Custom names to show on the Super7Seg for each variable
# ***List must be the same length as SENSORS list***
CUSTOM_NAMES = ["Var1", "Var2", "Var3"]

# Delay between each value displayed
VALUE_DISPLAY_DELAY = 5

# List of variables will display this many times before values are updated
GET_VALUES_LOOP_COUNT = 5

# Initialize S7 display
# --Specify your COM port here--
s7 = Super7('COM4', baudrate=BaudRates.BAUD_38400)
s7.clear()

def scroll_msg(msg, delay=0.1):
    """Scroll text from R to L across available S7 displays."""
    msg = ''.join(([' '] * TOTAL_CHARS)) + msg
    for i in range(len(msg) + 1):
        s7.write(msg[i:i + TOTAL_CHARS])
        time.sleep(delay)

def get_current_value(device, variable):
    """Requests current value of given variable on given device"""
    r = requests.get("http://things.ubidots.com/api/v1.6/devices/" + device +"/" + variable + "/lv?token=" + API_KEY)
    value = float(r.content)
    del r
    return value

def update_values(device, variables):
    """Get current values, return dict with {variable_name : value}.
    
    Uses the CUSTOM_NAMES list. This list must be the same length
    as the SENSORS list
    """
    i = 0
    dict_values = {}
    for v in variables:
        dict_values[CUSTOM_NAMES[i]] = get_current_value(device, v)
        i = i + 1
    return dict_values

while True:
    s7.clear()
    s7.write("-GET VALUES-")
    valuesToPrint = update_values(DEVICE, SENSORS)
    for i in range(GET_VALUES_LOOP_COUNT):
        for k, v in valuesToPrint.items():
            # --Uncomment the next two lines for static display (no scroll)
            # s7.write("" + k + " {0:.2f}".format(v))
            # time.sleep(VALUE_DISPLAY_DELAY)
            # --OR--
            # --Uncomment the next two lines for scrolling display
            msg = "" + k + " {0:.2f}".format(v)
            scroll_msg(msg, 0.3)
            