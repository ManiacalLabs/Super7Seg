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

First, you must install the *male* headers onto the back of the display board where you see the labels "Controller Header This Side" and "Anchor This Side". These **_must_** be installed **_before_** the display modules otherwise there will be no way to solder them on later.

![IO Header](/doc/img/04.JPG)
![Anchor Header](/doc/img/05.JPG)
