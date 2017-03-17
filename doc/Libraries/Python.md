# Super7Seg Python Library

If using the Super7Seg via either a USB to serial adapter or on a platform like the Raspberry Pi with direct you can use the provided Python module at [/libraries/python/super7.py](/libraries/python/super7.py). It's not absolutely necessary as you can just directly interface with the display as documented on the [Usage](/doc/Usage.md) page, but this module wraps everything in an much easier to use class.

## Super7 Methods

#### \_\_init\_\_(dev, baudrate)

The constructor for the Super7 interface class.

- **dev**: Serial device path to connect to, such as: /dev/ttyUSB0 or COM3
- **baudrate**: Instance of super7.BaudRates. Defaults to BAUD_38400


#### write(msg)

Sends ASCII string to display, automatically applying the required newline (```\n```) character. Automatically chains to additional displays.

- **msg**: ASCII string to send to the display.

#### clear()

Clears the display and automatically chains to additional displays.

#### set_brightness(level)

Sets display brightness.

- **level**: Brightness level (int) from 1 to 10.

#### set_baud(baudrate)

Sets display baudrate. Does *not* automatically chain to additional displays. The class will automatically close the connection and reconnect with the new baudrate after setting.

- **baudrate**: Instance of super7.BaudRates. Defaults to BAUD_38400

#### factory_reset()

Resets the display to factory baudrate and brightness. Does *not* automatically chain to additional displays. The class will automatically close the connection and reconnect with the default baudrate after resetting.
