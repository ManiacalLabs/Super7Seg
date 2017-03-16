# Super 7 Segment Assembly Instructions

![All Components](/doc/img/01.JPG)

In this guide, we'll cover the assembly of the Super7Seg serial display. The provided components are as follows:

- Super7 Display board (the larger one)
- Super7 Controller board (the smaller one)
- 6x Kingbright DC08-11SRWA Dual 7 segment displays
- ATMega328p and socket
- ULN2003AN Darlington transistor array and socket
- 74HC238 3-to-8 demux and socket
- 16x 120Ω resistors (brown/red/brown) 
- 1x 10kΩ resistor (brown/black/orange)
- 2x 0.1uF capacitor
- 2x 40 pin male header
- 1x 40 pin female header

![Control Board](/doc/img/02.JPG)
![Display Board](/doc/img/03.JPG)

## Display Board Assembly

First, you must install the *male* headers onto the back of the display board where you see the labels "Controller Header This Side" and "Anchor This Side". Simply use wire snips to cut the male headers to 4, 9, and 13 pin lengths needed. These **_must_** be installed **_before_** the display modules otherwise there will be no way to solder them on later.

![IO Header](/doc/img/04.JPG)
![Anchor Header](/doc/img/05.JPG)

Next, insert the six dual 7 segment display modules on the front side of the board. As you can see below, the display orientation must match what's shown on the silkscreen with the decimal places matching. Take your time here! Each display has 18 pins and, if they are installed upside-down, removing the correcting the displays will be quite complicated.

![Display insertion](/doc/img/06.JPG)
![All displays inserted](/doc/img/07.JPG)

**NOTE**: Start by just soldering one pin on each before moving on. That way you can correct any mistakes easily.
Once you have just that one pin soldered, you can then fix the positioning of each display by heating up the solder on that pin briefly and holding it in place while the solder cools.

![Solder one display pin](/doc/img/08.JPG)

Once all displays have been correctly positioned, go ahead and solder *all* pins. Take your time and don't forget any. There's 108 total!

![Solder display pins](/doc/img/09.JPG)

Once complete, put the display board aside. That's all!

## Controller Board Assembly

Start by installing the two capacitors, C1 & C2. Both are the same and non-polarized. Solder in place and snip the leads.

![Capacitors](/doc/img/10.JPG)
![Capacitor leads](/doc/img/11.JPG)

Next, install the 10kΩ resistor (brown/black/orange) into R7, right above the right-most capacitor. Solder in place and snip the leads.

![10k resistor](/doc/img/12.JPG)

Now we will install the sixteen 120Ω resistors (brown/red/brown) in R1 - R16 on the left side of the board. Pre-bend all the leads as shown and insert into the resistor footprints.

![120 ohm resistors](/doc/img/13.JPG)

![120 ohm inserted](/doc/img/14.JPG)

We've found that the easiest way to solder these resistors in is to clamp the board into our vice such that the resistors can just sit in the holes with the leads hanging straight down. Then, instead of bending the leads out to keep them in place and flip the board, simply solder them from above as shown below. This will be *much* faster and no need to work around all the leads.

![Soldering resistors from above](/doc/img/15.JPG)

Complete the same process for the remaining 120Ω resistors then snip all the leads from the back.

![Final resistors](/doc/img/16JPG)
![Final resistors soldered](/doc/img/17.JPG)

Next, install the IC sockets for each of the 3 chips. Make sure to align the notch in the IC socket with the notch shown on the silkscreen. The easiest way to complete this is to insert the sockets and then just flip the whole board over onto a flat surface. Solder two oposing corner pins on each socket,then pickup the board and ensure they are completely flush against the PCB. If not, reheat those pins and fix. Then solder the remaining pins.

![IC Sockets](/doc/img/18.JPG)

If you need to save a little vertical space, you could instead skip the sockets and solder each of the ICs directly to the PCB. But we highly recommend using the sockets if you can as it's much harder to fix a mistake if you incorrectly solder an IC directly. For now, we will wait to install the ICs until the end.

Now, install the input header on the right side of the board. There are a few options here:

- Install the entire 9 pin header. This will allow you to use *either* the FTDI style 6-pin input or the 3-pin (RX, Gnd, VCC).
- Just install the 3-pin (RX, Gnd, VCC) header (left most 3 pins below). Recommended for use with Arduino, Pi, etc. via direct GPIO serial.
- Just install the 6-pin FTDI style header (right most 6 pins below). Required if you want to use an FTDI style USB to serial converter and control the Super7 directly from a regular computer.
- Just solder wires from your device directly to the inputs mentioned above. 

We've supplied standard straight male headers but you could also, optionally, install female, or right angle headers if they are preferred.

![Input header](/doc/img/19.JPG)

If you are going to chain multiple Super7 displays, you can also install the output header as shown below. This will pass output data, power, and ground on to the next display. Nothing more needed. Note, however, that after more than ~3 displays the voltage drop will be too great and you will need to directly inject power into the chain instead of chaining power directly. The data, however, can be chained up to 20 displays.

![Output Header](/doc/img/20.JPG)

Last, install the female headers on the controller. You will need to snip the female header provided down to 4, 9, and 13 pin sizes. The only good way to do this is to sacrifice a few pins. Use wire snips to snap the header at the pin **_next_** to the last one for the size that you want. Then use the snips to clean up the remaining plastic.

Then get the display board and place those female headers onto the male headers already on that board. This will allow for easy alignment of all headers to the control board.

![Aligning female headers](/doc/img/21.JPG)

Then place the control board onto the exposed pins of the female headers.

![Place control board](/doc/img/22.JPG)

Finally, solder all pins.

![Solder control header pins](/doc/img/23.JPG)

## Install ICs

Now, for the grand finale. Install the three ICs into the sockets as labeled ensuring that the notch on each chip aligns with that on the socket/silkscreen. Each notch should be facing towards the input header and the text on each IC should, in fact, be upside-down relative to the control board itself as shown below. Before inserting each IC, bend the pins so they are perpendicular to the IC body by placing each side on a hard flat surface and providing easy pressure to bend the pins slightly inward. Then insert into the socket.

![Install ICs](/doc/img/24.JPG)

The provided ATMega328p is pre-programmed and you are ready to go! Upon applying power (3-5V only!) all the digits should light up as 8's including the decimal place (as shown at the beginning of the GIF below). If any digit is missing a segment, double check all of your solder points on the control board. If every digit is missing the *same* segment, double check the solder joins on the headers between the display and control board.

![Final Test](/doc/img/Super7Test.gif)

Checkout out the [Usage](/Usage.md) page for more details on using your Super7.
