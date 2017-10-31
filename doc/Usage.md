# Super7Seg Usage

The Super7 is designed to be usable via any device that supports a serial connection. On the input side, a standard 6 pin FTDI-style header is provided for use with a USB to serial adapter, as well as a 3-pin (RX, Ground, Power) input.

![Input header](/doc/img/19.JPG)

By default the display communicates at 38,400 baud but this can be changed via the provided basic API.

In general usage, however, no special API is needed to communicate with the display. But we do provide an easy to use [Python API](/doc/Libraries/Python.md).

## Alphanumerics

The simplest usage is to just send plain ASCII text over the serial connection. The only requirement is that the input string must end with a newline character which in any language can be declared as ```\n```. On many platforms, serial functions are even provided that automatically include this newline. For example, on Arduino:

```
Serial.begin(38400);
Serial.println("12345");
```

The above will display ```12345```, left justified, on the display. If using a serial output method that does not provide an automatic newline you can just add the newline, like below:

```
Serial.begin(38400);
Serial.write("12345\n");
```

The display automatically fills characters from left to right as it receives text. So, if the above text was to be fully right-justified, padding characters must be sent along with the rest:

```
Serial.println("       12345");
```

The above is assuming a single Super7 display which has 12 total digits and therefore 7 spaces were included to push the remaining 5 all the way to the right. See below for chaining displays.

The Super7, while not a full alpha-numeric display, has a font built in that does it's best to cover every possible ASCII character, so more than just numbers can be sent. See the demo below for an example:


![Final Test](/doc/img/Super7Test.gif)

The one character that is special and needs to be accounted for is the decimal. As each digit includes a decimal place, the Super7 will automatically take an input decimal that is next to another valid character and place that decimal on the same physical display digit. So, for example, the string ```8.8.8.8.8.8.8.8.8.8.8.8.```, while technically 24 characters will actually be seen by the display as merely 12 characters as each decimal can be place with another character. The string ```Test...```, however, will consume 6 digits on the Super7 as the first decimal gets place with the last 't' but the remaining 2 will each use up an entire digit on the display.

## Commands

Aside from basic ASCII strings, the Super7 can take 4 different commands that allow other functionality. Each of these commands requires the first byte of the input to be a non-printable opcode as described below:

### 0x10 - Brightness
The Super7 provides 10 brightness levels and defaults to full brightness. Once set, the value is stored in EEPROM and will persist between reboots. A propper brightness command contains:

```
0x10, <value>, \n
```

Where value, above, is between 1 and 10. On the Arduino this would look like:

```
Serial.write(0x10);
Serial.write(val);
Serial.write('\n');
```

This command will automatically be chained to the output and passed to any further displays inline.

### 0x11 - Raw Values
If you require specifically setting individual segments of each digit that is not provided by an ASCII character, you can sent raw byte values directly using the 0x11 opcode. For reference, each digit is mapped as follows:

```
 A
F B
 G
E C
 D  DP
```
*DP is the decimal point.*

Where the sent byte represents this as:
```
0b[DP]GFEDCBA
```

The above being a standard binary formatted value. So, for example, if you wanted to set only segments B, F, and DP the you would send a byte: 0b10100010 which is decimal 162 and hex 0xA2.

The full protocol is:
```
0x11, <msg_length>, <raw_bytes>, \n
```

So if you wanted to send 3 raw bytes it would be sent as:

```
0x11, 0x03, 0xA2, 0xB3, 0xF0, \n
```

Or, on the Arduino:

```
Serial.write(0x11);
Serial.write(0x03);
Serial.write(0xA2);
Serial.write(0xB3);
Serial.write(0xF0);
Serial.write('\n');
```

### 0x12 - Baud Rate

The Super7 supports the following serial baud rates:
```
2400, 4800, 9600, 14400, 19200, 38400, 57600, 76800
```

The default is 38400 and nothing over 76800 is available as the onboard ATMega328p is run at only 8Mhz internal clock and does not reliably support faster speeds. The provided speeds, however, are more than enough for very speedy updates.

If you need to change the set baud rate, send:
```
0x12, <baud_ID>, \n
```

As the baud rate values are large numbers, the above command requires a single byte baud ID as specified below:
```
0: 2400
1: 4800
2: 9600
3: 14400
4: 19200
5: 38400
6: 57600
7: 76800
```

So, to set the display to 9600 baud, send:
```
0x12, 0x02, \n
```

Note that after this command is set your code must be changed to use the new baud rate.

### 0x13 - Factory Reset

This is the nuclear option. In the case that you want to rest the brightness and baud rate, a full factory reset can be called using this command. When complete the device should be fully reset back to full brightness and 38400 baud.

The full command to send is merely:
```
0x13, \n
```

However, this only works if you already know the baud rate the device is set to! To solve that problem we've provided a simply reset python script. Download or clone this repository then change toe the `./libraries/python/` directory in your terminal. Finally, run the command:
```
python reset.py [COM_DEVICE]
```

`COM_DEVICE` is whatever the system path to your serial port is. Optionally you can provide one of the above listed baud rates to set it to that specific rate. Otherwise it will reset to the default 38400 baud.

## Display Chaining

If only using one display, you never need worry about this but you can chain one display to another using the TX, Ground, Power pins on the output side of the control board. Simply connect these 3 pins to the matching RX, Ground, and Power on the next display. Up to 10 displays can be chained for 120 total digits!

For normal alphanumeric usage, anything over 12 digits is automatically passed via the output header to the next display up to 20 displays or 255 characters total. If, for example, a 30 character string is passed to the first 12 display on the first display which then outputs starting from character 13 to the next display. The next display will display the next 12 characters and then pass the final 6 characters to the next display in the chain. The only exception here is decimal characters as described above.

For the brightness command, the display will always just send the same command to the output so that any chained display picks it up. This will continue on with all displays in the chain.

For the raw command the same basic process as with alphanumeric strings occurs except that if remaining values are detected the command sent to the next display will be changed such that the length value is updated accordingly.

The baud rate and factory reset commands, however, do *not* chain to additional displays. These must be sent to each one individually.
