# Maniacal Labs Super 7 Seg

The **Super 7 Seg** kit takes using a 7 Segment display to the extreme! It started as an exercise in "how many 7 segment displays can I drive with a single ATMega328p" and we are quite proud of the result.

Twelve beautiful, bright, 0.8" tall digits powered and driven by only 3 pins. The simple serial connection (literally just sending text) means you can have a simple to use 7 segment display controlled by anything able to output a serial signal, including but not limited to Arduino, Raspberry Pi, and any normal computer (with a USB to serial cable). If required, there are also basic, easy to use, commands that can be sent allowing direct control over each segment of each digit of the display.

But wait, is twelve digits not enough for you? Fear not! You can chain up to 10 Super 7 Seg displays together and still control all of them from just the same 3 pins! Every bit of text that won't fit on the first display is automatically sent down the line to the next and the next after that.

# What's In The Bag

The Super 7 Seg is a user assembled kit which requires basic through-hole solder skills and comes with the following components:

- Super7 Display board (the larger one)
- Super7 Controller board (the smaller one)
- 6x Kingbright DC08-11SRWA Dual 7 segment displays
- ATMega328p and socket
- ULN2003AN Darlington transistor array and socket
- 74HC238 3-to-8 demux and socket
- 16x 120Ω resistors (brown/red/brown)
- 1x 10kΩ resistor (brown/black/orange)
- 2x 0.1uF capacitor
- 1x 40 pin male header
- 1x 40 pin female header

# Assembly

Check out the full [Assembly doc](https://github.com/ManiacalLabs/Super7Seg/blob/master/doc/Assembly.md)

# Usage

For all the details on using your Super 7 Seg, check out the [Usage doc](https://github.com/ManiacalLabs/Super7Seg/blob/master/doc/Usage.md)

## Python Library

Interacting with the Super 7 Seg is incredibly easy but we've provided a python module to make it even easier! For more, check out the [Super7 Python module doc](/doc/Libraries/Python.md).
