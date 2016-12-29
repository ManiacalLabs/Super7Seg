EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:dc08
LIBS:Super7Seg-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DC08 D1
U 1 1 585D6278
P 1750 1700
F 0 "D1" H 1750 1900 60  0000 C CNN
F 1 "DC08" H 1750 1700 60  0000 C CNN
F 2 "footprints:DC08" H 2150 1400 60  0001 C CNN
F 3 "" H 2150 1400 60  0000 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
Text GLabel 850  2100 0    50   Input ~ 0
A1
Text GLabel 850  2000 0    50   Input ~ 0
B1
Text GLabel 850  1900 0    50   Input ~ 0
C1
Text GLabel 850  1800 0    50   Input ~ 0
D1
Text GLabel 850  1700 0    50   Input ~ 0
E1
Text GLabel 850  1600 0    50   Input ~ 0
F1
Text GLabel 850  1500 0    50   Input ~ 0
G1
Text GLabel 850  1400 0    50   Input ~ 0
DP1
Text GLabel 2650 2100 2    50   Input ~ 0
A2
Text GLabel 2650 2000 2    50   Input ~ 0
B2
Text GLabel 2650 1900 2    50   Input ~ 0
C2
Text GLabel 2650 1800 2    50   Input ~ 0
D2
Text GLabel 2650 1700 2    50   Input ~ 0
E2
Text GLabel 2650 1600 2    50   Input ~ 0
F2
Text GLabel 2650 1500 2    50   Input ~ 0
G2
Text GLabel 2650 1400 2    50   Input ~ 0
DP2
$Comp
L DC08 D2
U 1 1 585D6D9A
P 4000 1700
F 0 "D2" H 4000 1900 60  0000 C CNN
F 1 "DC08" H 4000 1700 60  0000 C CNN
F 2 "footprints:DC08" H 4400 1400 60  0001 C CNN
F 3 "" H 4400 1400 60  0000 C CNN
	1    4000 1700
	1    0    0    -1  
$EndComp
Text GLabel 3100 2100 0    50   Input ~ 0
A1
Text GLabel 3100 2000 0    50   Input ~ 0
B1
Text GLabel 3100 1900 0    50   Input ~ 0
C1
Text GLabel 3100 1800 0    50   Input ~ 0
D1
Text GLabel 3100 1700 0    50   Input ~ 0
E1
Text GLabel 3100 1600 0    50   Input ~ 0
F1
Text GLabel 3100 1500 0    50   Input ~ 0
G1
Text GLabel 3100 1400 0    50   Input ~ 0
DP1
Text GLabel 4900 2100 2    50   Input ~ 0
A2
Text GLabel 4900 2000 2    50   Input ~ 0
B2
Text GLabel 4900 1900 2    50   Input ~ 0
C2
Text GLabel 4900 1800 2    50   Input ~ 0
D2
Text GLabel 4900 1700 2    50   Input ~ 0
E2
Text GLabel 4900 1600 2    50   Input ~ 0
F2
Text GLabel 4900 1500 2    50   Input ~ 0
G2
Text GLabel 4900 1400 2    50   Input ~ 0
DP2
$Comp
L Q_NPN_EBC Q1
U 1 1 585D6FCD
P 1750 950
F 0 "Q1" V 1650 1100 50  0000 R CNN
F 1 "PN2222ABU" V 1650 850 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 1950 1050 50  0001 C CNN
F 3 "" H 1750 950 50  0000 C CNN
	1    1750 950 
	0    -1   1    0   
$EndComp
$Comp
L Q_PNP_EBC Q2
U 1 1 585D70D5
P 4000 950
F 0 "Q2" V 3900 1100 50  0000 R CNN
F 1 "PN2907BU" V 3900 850 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 1050 50  0001 C CNN
F 3 "" H 4000 950 50  0000 C CNN
	1    4000 950 
	0    -1   1    0   
$EndComp
$Comp
L R R1
U 1 1 585D7F0F
P 1450 750
F 0 "R1" V 1530 750 50  0000 C CNN
F 1 "1.2K" V 1450 750 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 1380 750 50  0001 C CNN
F 3 "" H 1450 750 50  0000 C CNN
	1    1450 750 
	0    -1   -1   0   
$EndComp
Text GLabel 1250 750  0    60   Input ~ 0
DC_1
$Comp
L DC08 D3
U 1 1 585D8277
P 1750 3300
F 0 "D3" H 1750 3500 60  0000 C CNN
F 1 "DC08" H 1750 3300 60  0000 C CNN
F 2 "footprints:DC08" H 2150 3000 60  0001 C CNN
F 3 "" H 2150 3000 60  0000 C CNN
	1    1750 3300
	1    0    0    -1  
$EndComp
Text GLabel 850  3700 0    50   Input ~ 0
A1
Text GLabel 850  3600 0    50   Input ~ 0
B1
Text GLabel 850  3500 0    50   Input ~ 0
C1
Text GLabel 850  3400 0    50   Input ~ 0
D1
Text GLabel 850  3300 0    50   Input ~ 0
E1
Text GLabel 850  3200 0    50   Input ~ 0
F1
Text GLabel 850  3100 0    50   Input ~ 0
G1
Text GLabel 850  3000 0    50   Input ~ 0
DP1
Text GLabel 2650 3700 2    50   Input ~ 0
A2
Text GLabel 2650 3600 2    50   Input ~ 0
B2
Text GLabel 2650 3500 2    50   Input ~ 0
C2
Text GLabel 2650 3400 2    50   Input ~ 0
D2
Text GLabel 2650 3300 2    50   Input ~ 0
E2
Text GLabel 2650 3200 2    50   Input ~ 0
F2
Text GLabel 2650 3100 2    50   Input ~ 0
G2
Text GLabel 2650 3000 2    50   Input ~ 0
DP2
$Comp
L DC08 D4
U 1 1 585D829D
P 4000 3300
F 0 "D4" H 4000 3500 60  0000 C CNN
F 1 "DC08" H 4000 3300 60  0000 C CNN
F 2 "footprints:DC08" H 4400 3000 60  0001 C CNN
F 3 "" H 4400 3000 60  0000 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Text GLabel 3100 3700 0    50   Input ~ 0
A1
Text GLabel 3100 3600 0    50   Input ~ 0
B1
Text GLabel 3100 3500 0    50   Input ~ 0
C1
Text GLabel 3100 3400 0    50   Input ~ 0
D1
Text GLabel 3100 3300 0    50   Input ~ 0
E1
Text GLabel 3100 3200 0    50   Input ~ 0
F1
Text GLabel 3100 3100 0    50   Input ~ 0
G1
Text GLabel 3100 3000 0    50   Input ~ 0
DP1
Text GLabel 4900 3700 2    50   Input ~ 0
A2
Text GLabel 4900 3600 2    50   Input ~ 0
B2
Text GLabel 4900 3500 2    50   Input ~ 0
C2
Text GLabel 4900 3400 2    50   Input ~ 0
D2
Text GLabel 4900 3300 2    50   Input ~ 0
E2
Text GLabel 4900 3200 2    50   Input ~ 0
F2
Text GLabel 4900 3100 2    50   Input ~ 0
G2
Text GLabel 4900 3000 2    50   Input ~ 0
DP2
$Comp
L Q_NPN_EBC Q3
U 1 1 585D82C9
P 1750 2550
F 0 "Q3" V 1650 2700 50  0000 R CNN
F 1 "PN2222ABU" V 1650 2450 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 1950 2650 50  0001 C CNN
F 3 "" H 1750 2550 50  0000 C CNN
	1    1750 2550
	0    -1   1    0   
$EndComp
$Comp
L Q_PNP_EBC Q4
U 1 1 585D82CF
P 4000 2550
F 0 "Q4" V 3900 2700 50  0000 R CNN
F 1 "PN2907BU" V 3900 2450 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 2650 50  0001 C CNN
F 3 "" H 4000 2550 50  0000 C CNN
	1    4000 2550
	0    -1   1    0   
$EndComp
$Comp
L R R2
U 1 1 585D82E3
P 1450 2350
F 0 "R2" V 1530 2350 50  0000 C CNN
F 1 "1.2K" V 1450 2350 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 1380 2350 50  0001 C CNN
F 3 "" H 1450 2350 50  0000 C CNN
	1    1450 2350
	0    -1   -1   0   
$EndComp
Text GLabel 1250 2350 0    60   Input ~ 0
DC_2
$Comp
L DC08 D5
U 1 1 585D8410
P 1750 4900
F 0 "D5" H 1750 5100 60  0000 C CNN
F 1 "DC08" H 1750 4900 60  0000 C CNN
F 2 "footprints:DC08" H 2150 4600 60  0001 C CNN
F 3 "" H 2150 4600 60  0000 C CNN
	1    1750 4900
	1    0    0    -1  
$EndComp
Text GLabel 850  5300 0    50   Input ~ 0
A1
Text GLabel 850  5200 0    50   Input ~ 0
B1
Text GLabel 850  5100 0    50   Input ~ 0
C1
Text GLabel 850  5000 0    50   Input ~ 0
D1
Text GLabel 850  4900 0    50   Input ~ 0
E1
Text GLabel 850  4800 0    50   Input ~ 0
F1
Text GLabel 850  4700 0    50   Input ~ 0
G1
Text GLabel 850  4600 0    50   Input ~ 0
DP1
Text GLabel 2650 5300 2    50   Input ~ 0
A2
Text GLabel 2650 5200 2    50   Input ~ 0
B2
Text GLabel 2650 5100 2    50   Input ~ 0
C2
Text GLabel 2650 5000 2    50   Input ~ 0
D2
Text GLabel 2650 4900 2    50   Input ~ 0
E2
Text GLabel 2650 4800 2    50   Input ~ 0
F2
Text GLabel 2650 4700 2    50   Input ~ 0
G2
Text GLabel 2650 4600 2    50   Input ~ 0
DP2
$Comp
L DC08 D6
U 1 1 585D8436
P 4000 4900
F 0 "D6" H 4000 5100 60  0000 C CNN
F 1 "DC08" H 4000 4900 60  0000 C CNN
F 2 "footprints:DC08" H 4400 4600 60  0001 C CNN
F 3 "" H 4400 4600 60  0000 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
Text GLabel 3100 5300 0    50   Input ~ 0
A1
Text GLabel 3100 5200 0    50   Input ~ 0
B1
Text GLabel 3100 5100 0    50   Input ~ 0
C1
Text GLabel 3100 5000 0    50   Input ~ 0
D1
Text GLabel 3100 4900 0    50   Input ~ 0
E1
Text GLabel 3100 4800 0    50   Input ~ 0
F1
Text GLabel 3100 4700 0    50   Input ~ 0
G1
Text GLabel 3100 4600 0    50   Input ~ 0
DP1
Text GLabel 4900 5300 2    50   Input ~ 0
A2
Text GLabel 4900 5200 2    50   Input ~ 0
B2
Text GLabel 4900 5100 2    50   Input ~ 0
C2
Text GLabel 4900 5000 2    50   Input ~ 0
D2
Text GLabel 4900 4900 2    50   Input ~ 0
E2
Text GLabel 4900 4800 2    50   Input ~ 0
F2
Text GLabel 4900 4700 2    50   Input ~ 0
G2
Text GLabel 4900 4600 2    50   Input ~ 0
DP2
$Comp
L Q_NPN_EBC Q5
U 1 1 585D8462
P 1750 4150
F 0 "Q5" V 1650 4300 50  0000 R CNN
F 1 "PN2222ABU" V 1650 4050 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 1950 4250 50  0001 C CNN
F 3 "" H 1750 4150 50  0000 C CNN
	1    1750 4150
	0    -1   1    0   
$EndComp
$Comp
L Q_PNP_EBC Q6
U 1 1 585D8468
P 4000 4150
F 0 "Q6" V 3900 4300 50  0000 R CNN
F 1 "PN2907BU" V 3900 4050 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 4250 50  0001 C CNN
F 3 "" H 4000 4150 50  0000 C CNN
	1    4000 4150
	0    -1   1    0   
$EndComp
$Comp
L R R3
U 1 1 585D847C
P 1450 3950
F 0 "R3" V 1530 3950 50  0000 C CNN
F 1 "1.2K" V 1450 3950 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 1380 3950 50  0001 C CNN
F 3 "" H 1450 3950 50  0000 C CNN
	1    1450 3950
	0    -1   -1   0   
$EndComp
Text GLabel 1250 3950 0    60   Input ~ 0
DC_3
$Comp
L ATMEGA328P-P IC1
U 1 1 585D871A
P 7650 2900
F 0 "IC1" H 6900 4150 50  0000 L BNN
F 1 "ATMEGA328P-P" H 8050 1500 50  0000 L BNN
F 2 "footprints:DIP28" H 7650 2900 50  0001 C CIN
F 3 "" H 7650 2900 50  0000 C CNN
	1    7650 2900
	1    0    0    -1  
$EndComp
Text GLabel 9550 1450 2    50   Input ~ 0
A1
Text GLabel 9550 1600 2    50   Input ~ 0
B1
Text GLabel 9550 1750 2    50   Input ~ 0
C1
Text GLabel 9550 1900 2    50   Input ~ 0
D1
Text GLabel 9550 2050 2    50   Input ~ 0
E1
Text GLabel 9550 2200 2    50   Input ~ 0
F1
Text GLabel 9550 2350 2    50   Input ~ 0
G1
Text GLabel 9550 2500 2    50   Input ~ 0
DP1
$Comp
L R R5
U 1 1 585D9209
P 9400 1450
F 0 "R5" V 9480 1450 50  0000 C CNN
F 1 "120" V 9400 1450 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 1450 50  0001 C CNN
F 3 "" H 9400 1450 50  0000 C CNN
	1    9400 1450
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 585D9465
P 9400 1600
F 0 "R6" V 9480 1600 50  0000 C CNN
F 1 "120" V 9400 1600 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 1600 50  0001 C CNN
F 3 "" H 9400 1600 50  0000 C CNN
	1    9400 1600
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 585D94BB
P 9400 1750
F 0 "R7" V 9480 1750 50  0000 C CNN
F 1 "120" V 9400 1750 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 1750 50  0001 C CNN
F 3 "" H 9400 1750 50  0000 C CNN
	1    9400 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 585D94FD
P 9400 1900
F 0 "R8" V 9480 1900 50  0000 C CNN
F 1 "120" V 9400 1900 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 1900 50  0001 C CNN
F 3 "" H 9400 1900 50  0000 C CNN
	1    9400 1900
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 585D9542
P 9400 2050
F 0 "R9" V 9480 2050 50  0000 C CNN
F 1 "120" V 9400 2050 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0000 C CNN
	1    9400 2050
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 585D958A
P 9400 2200
F 0 "R10" V 9480 2200 50  0000 C CNN
F 1 "120" V 9400 2200 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2200 50  0001 C CNN
F 3 "" H 9400 2200 50  0000 C CNN
	1    9400 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 585D95D5
P 9400 2350
F 0 "R11" V 9480 2350 50  0000 C CNN
F 1 "120" V 9400 2350 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2350 50  0001 C CNN
F 3 "" H 9400 2350 50  0000 C CNN
	1    9400 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 585D9A03
P 9400 2500
F 0 "R12" V 9480 2500 50  0000 C CNN
F 1 "120" V 9400 2500 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2500 50  0001 C CNN
F 3 "" H 9400 2500 50  0000 C CNN
	1    9400 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  1400 900  1400
Wire Wire Line
	900  1500 850  1500
Wire Wire Line
	850  1600 900  1600
Wire Wire Line
	900  1700 850  1700
Wire Wire Line
	850  1800 900  1800
Wire Wire Line
	900  1900 850  1900
Wire Wire Line
	850  2000 900  2000
Wire Wire Line
	900  2100 850  2100
Wire Wire Line
	2650 1400 2600 1400
Wire Wire Line
	2600 1500 2650 1500
Wire Wire Line
	2650 1600 2600 1600
Wire Wire Line
	2600 1700 2650 1700
Wire Wire Line
	2650 1800 2600 1800
Wire Wire Line
	2600 1900 2650 1900
Wire Wire Line
	2650 2000 2600 2000
Wire Wire Line
	2600 2100 2650 2100
Wire Wire Line
	3100 1400 3150 1400
Wire Wire Line
	3150 1500 3100 1500
Wire Wire Line
	3100 1600 3150 1600
Wire Wire Line
	3150 1700 3100 1700
Wire Wire Line
	3100 1800 3150 1800
Wire Wire Line
	3150 1900 3100 1900
Wire Wire Line
	3100 2000 3150 2000
Wire Wire Line
	3150 2100 3100 2100
Wire Wire Line
	4900 1400 4850 1400
Wire Wire Line
	4850 1500 4900 1500
Wire Wire Line
	4900 1600 4850 1600
Wire Wire Line
	4850 1700 4900 1700
Wire Wire Line
	4900 1800 4850 1800
Wire Wire Line
	4850 1900 4900 1900
Wire Wire Line
	4900 2000 4850 2000
Wire Wire Line
	4850 2100 4900 2100
Wire Wire Line
	1950 1050 3800 1050
Wire Wire Line
	2900 1000 2900 1050
Connection ~ 2900 1050
Wire Wire Line
	1600 750  4000 750 
Wire Wire Line
	1550 1200 1550 1050
Wire Wire Line
	900  1200 2600 1200
Wire Wire Line
	900  1200 900  1300
Wire Wire Line
	2600 1200 2600 1300
Connection ~ 1550 1200
Wire Wire Line
	4200 1050 4200 1200
Wire Wire Line
	3150 1200 4850 1200
Wire Wire Line
	4850 1200 4850 1300
Wire Wire Line
	3150 1200 3150 1300
Connection ~ 4200 1200
Wire Wire Line
	1250 750  1300 750 
Connection ~ 1750 750 
Wire Wire Line
	850  3000 900  3000
Wire Wire Line
	900  3100 850  3100
Wire Wire Line
	850  3200 900  3200
Wire Wire Line
	900  3300 850  3300
Wire Wire Line
	850  3400 900  3400
Wire Wire Line
	900  3500 850  3500
Wire Wire Line
	850  3600 900  3600
Wire Wire Line
	900  3700 850  3700
Wire Wire Line
	2650 3000 2600 3000
Wire Wire Line
	2600 3100 2650 3100
Wire Wire Line
	2650 3200 2600 3200
Wire Wire Line
	2600 3300 2650 3300
Wire Wire Line
	2650 3400 2600 3400
Wire Wire Line
	2600 3500 2650 3500
Wire Wire Line
	2650 3600 2600 3600
Wire Wire Line
	2600 3700 2650 3700
Wire Wire Line
	3100 3000 3150 3000
Wire Wire Line
	3150 3100 3100 3100
Wire Wire Line
	3100 3200 3150 3200
Wire Wire Line
	3150 3300 3100 3300
Wire Wire Line
	3100 3400 3150 3400
Wire Wire Line
	3150 3500 3100 3500
Wire Wire Line
	3100 3600 3150 3600
Wire Wire Line
	3150 3700 3100 3700
Wire Wire Line
	4900 3000 4850 3000
Wire Wire Line
	4850 3100 4900 3100
Wire Wire Line
	4900 3200 4850 3200
Wire Wire Line
	4850 3300 4900 3300
Wire Wire Line
	4900 3400 4850 3400
Wire Wire Line
	4850 3500 4900 3500
Wire Wire Line
	4900 3600 4850 3600
Wire Wire Line
	4850 3700 4900 3700
Wire Wire Line
	1950 2650 3800 2650
Wire Wire Line
	2900 2600 2900 2650
Connection ~ 2900 2650
Wire Wire Line
	1600 2350 4000 2350
Wire Wire Line
	1550 2800 1550 2650
Wire Wire Line
	900  2800 2600 2800
Wire Wire Line
	900  2800 900  2900
Wire Wire Line
	2600 2800 2600 2900
Connection ~ 1550 2800
Wire Wire Line
	4200 2650 4200 2800
Wire Wire Line
	3150 2800 4850 2800
Wire Wire Line
	4850 2800 4850 2900
Wire Wire Line
	3150 2800 3150 2900
Connection ~ 4200 2800
Wire Wire Line
	1250 2350 1300 2350
Connection ~ 1750 2350
Wire Wire Line
	850  4600 900  4600
Wire Wire Line
	900  4700 850  4700
Wire Wire Line
	850  4800 900  4800
Wire Wire Line
	900  4900 850  4900
Wire Wire Line
	850  5000 900  5000
Wire Wire Line
	900  5100 850  5100
Wire Wire Line
	850  5200 900  5200
Wire Wire Line
	900  5300 850  5300
Wire Wire Line
	2650 4600 2600 4600
Wire Wire Line
	2600 4700 2650 4700
Wire Wire Line
	2650 4800 2600 4800
Wire Wire Line
	2600 4900 2650 4900
Wire Wire Line
	2650 5000 2600 5000
Wire Wire Line
	2600 5100 2650 5100
Wire Wire Line
	2650 5200 2600 5200
Wire Wire Line
	2600 5300 2650 5300
Wire Wire Line
	3100 4600 3150 4600
Wire Wire Line
	3150 4700 3100 4700
Wire Wire Line
	3100 4800 3150 4800
Wire Wire Line
	3150 4900 3100 4900
Wire Wire Line
	3100 5000 3150 5000
Wire Wire Line
	3150 5100 3100 5100
Wire Wire Line
	3100 5200 3150 5200
Wire Wire Line
	3150 5300 3100 5300
Wire Wire Line
	4900 4600 4850 4600
Wire Wire Line
	4850 4700 4900 4700
Wire Wire Line
	4900 4800 4850 4800
Wire Wire Line
	4850 4900 4900 4900
Wire Wire Line
	4900 5000 4850 5000
Wire Wire Line
	4850 5100 4900 5100
Wire Wire Line
	4900 5200 4850 5200
Wire Wire Line
	4850 5300 4900 5300
Wire Wire Line
	1950 4250 3800 4250
Wire Wire Line
	2900 4200 2900 4250
Connection ~ 2900 4250
Wire Wire Line
	1600 3950 4000 3950
Wire Wire Line
	1550 4400 1550 4250
Wire Wire Line
	900  4400 2600 4400
Wire Wire Line
	900  4400 900  4500
Wire Wire Line
	2600 4400 2600 4500
Connection ~ 1550 4400
Wire Wire Line
	4200 4250 4200 4400
Wire Wire Line
	3150 4400 4850 4400
Wire Wire Line
	4850 4400 4850 4500
Wire Wire Line
	3150 4400 3150 4500
Connection ~ 4200 4400
Wire Wire Line
	1250 3950 1300 3950
Connection ~ 1750 3950
Wire Wire Line
	8650 2500 9250 2500
Wire Wire Line
	8650 2400 9200 2400
Wire Wire Line
	9200 2400 9200 2350
Wire Wire Line
	9200 2350 9250 2350
Wire Wire Line
	8650 2300 9150 2300
Wire Wire Line
	9150 2300 9150 2200
Wire Wire Line
	9150 2200 9250 2200
Wire Wire Line
	8650 2200 9100 2200
Wire Wire Line
	9100 2200 9100 2050
Wire Wire Line
	9100 2050 9250 2050
Wire Wire Line
	8650 2100 9050 2100
Wire Wire Line
	9050 2100 9050 1900
Wire Wire Line
	9050 1900 9250 1900
Wire Wire Line
	8650 2000 9000 2000
Wire Wire Line
	9000 2000 9000 1750
Wire Wire Line
	9000 1750 9250 1750
Wire Wire Line
	8950 1900 8950 1600
Wire Wire Line
	8950 1600 9250 1600
Wire Wire Line
	8650 1800 8900 1800
Wire Wire Line
	8900 1800 8900 1450
Wire Wire Line
	8900 1450 9250 1450
Wire Wire Line
	8950 1900 8650 1900
Text GLabel 9550 2650 2    50   Input ~ 0
A2
Text GLabel 9550 2800 2    50   Input ~ 0
B2
Text GLabel 9550 2950 2    50   Input ~ 0
C2
Text GLabel 9550 3100 2    50   Input ~ 0
D2
Text GLabel 9550 3250 2    50   Input ~ 0
E2
Text GLabel 9550 3400 2    50   Input ~ 0
F2
Text GLabel 9550 3550 2    50   Input ~ 0
G2
Text GLabel 9550 3700 2    50   Input ~ 0
DP2
$Comp
L R R13
U 1 1 585DB9FB
P 9400 2650
F 0 "R13" V 9480 2650 50  0000 C CNN
F 1 "120" V 9400 2650 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2650 50  0001 C CNN
F 3 "" H 9400 2650 50  0000 C CNN
	1    9400 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 585DBA01
P 9400 2800
F 0 "R14" V 9480 2800 50  0000 C CNN
F 1 "120" V 9400 2800 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2800 50  0001 C CNN
F 3 "" H 9400 2800 50  0000 C CNN
	1    9400 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 585DBA07
P 9400 2950
F 0 "R15" V 9480 2950 50  0000 C CNN
F 1 "120" V 9400 2950 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 2950 50  0001 C CNN
F 3 "" H 9400 2950 50  0000 C CNN
	1    9400 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 585DBA0D
P 9400 3100
F 0 "R16" V 9480 3100 50  0000 C CNN
F 1 "120" V 9400 3100 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 3100 50  0001 C CNN
F 3 "" H 9400 3100 50  0000 C CNN
	1    9400 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 585DBA13
P 9400 3250
F 0 "R17" V 9480 3250 50  0000 C CNN
F 1 "120" V 9400 3250 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 3250 50  0001 C CNN
F 3 "" H 9400 3250 50  0000 C CNN
	1    9400 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 585DBA19
P 9400 3400
F 0 "R18" V 9480 3400 50  0000 C CNN
F 1 "120" V 9400 3400 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 3400 50  0001 C CNN
F 3 "" H 9400 3400 50  0000 C CNN
	1    9400 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R19
U 1 1 585DBA1F
P 9400 3550
F 0 "R19" V 9480 3550 50  0000 C CNN
F 1 "120" V 9400 3550 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 3550 50  0001 C CNN
F 3 "" H 9400 3550 50  0000 C CNN
	1    9400 3550
	0    -1   -1   0   
$EndComp
$Comp
L R R20
U 1 1 585DBA25
P 9400 3700
F 0 "R20" V 9480 3700 50  0000 C CNN
F 1 "120" V 9400 3700 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 9330 3700 50  0001 C CNN
F 3 "" H 9400 3700 50  0000 C CNN
	1    9400 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 2650 9250 2650
Wire Wire Line
	8650 2750 9200 2750
Wire Wire Line
	9200 2750 9200 2800
Wire Wire Line
	9200 2800 9250 2800
Wire Wire Line
	8650 2850 9150 2850
Wire Wire Line
	9150 2850 9150 2950
Wire Wire Line
	9150 2950 9250 2950
Wire Wire Line
	8650 2950 9100 2950
Wire Wire Line
	9100 2950 9100 3100
Wire Wire Line
	9100 3100 9250 3100
Wire Wire Line
	8650 3050 9050 3050
Wire Wire Line
	9050 3050 9050 3250
Wire Wire Line
	9050 3250 9250 3250
Wire Wire Line
	8650 3150 9000 3150
Wire Wire Line
	9000 3150 9000 3400
Wire Wire Line
	9000 3400 9250 3400
Text GLabel 8650 3250 2    50   Input ~ 0
PC6
Text GLabel 8650 3900 2    50   Input ~ 0
DC_1
Text GLabel 8650 4000 2    50   Input ~ 0
DC_2
Text GLabel 8650 4100 2    50   Input ~ 0
DC_3
Wire Wire Line
	9250 3550 9200 3550
Wire Wire Line
	9200 3550 9200 3600
Wire Wire Line
	9200 3600 8650 3600
Wire Wire Line
	9250 3700 8650 3700
Text GLabel 8650 3400 2    50   Input ~ 0
RX
Text GLabel 8650 3500 2    50   Input ~ 0
TX
NoConn ~ 8650 3800
$Comp
L VCC #PWR01
U 1 1 585DF033
P 6750 1650
F 0 "#PWR01" H 6750 1500 50  0001 C CNN
F 1 "VCC" H 6750 1800 50  0000 C CNN
F 2 "" H 6750 1650 50  0000 C CNN
F 3 "" H 6750 1650 50  0000 C CNN
	1    6750 1650
	1    0    0    -1  
$EndComp
Connection ~ 6750 1800
Connection ~ 6750 2100
Wire Wire Line
	6750 1650 6750 2100
$Comp
L C_Small C2
U 1 1 585DF6FF
P 6700 3150
F 0 "C2" H 6710 3220 50  0000 L CNN
F 1 "0.1uF" H 6710 3070 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6700 3150 50  0001 C CNN
F 3 "" H 6700 3150 50  0000 C CNN
	1    6700 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 585DF76E
P 6700 3300
F 0 "#PWR02" H 6700 3050 50  0001 C CNN
F 1 "GND" H 6700 3150 50  0000 C CNN
F 2 "" H 6700 3300 50  0000 C CNN
F 3 "" H 6700 3300 50  0000 C CNN
	1    6700 3300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 585DF7E3
P 6700 4000
F 0 "#PWR03" H 6700 3750 50  0001 C CNN
F 1 "GND" H 6700 3850 50  0000 C CNN
F 2 "" H 6700 4000 50  0000 C CNN
F 3 "" H 6700 4000 50  0000 C CNN
	1    6700 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 4000 6700 4000
Wire Wire Line
	6700 3300 6700 3250
Wire Wire Line
	6700 3050 6700 3000
$Comp
L VCC #PWR04
U 1 1 585E0D8B
P 6700 3000
F 0 "#PWR04" H 6700 2850 50  0001 C CNN
F 1 "VCC" H 6700 3150 50  0000 C CNN
F 2 "" H 6700 3000 50  0000 C CNN
F 3 "" H 6700 3000 50  0000 C CNN
	1    6700 3000
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 585E1667
P 6600 2400
F 0 "C1" H 6610 2470 50  0000 L CNN
F 1 "0.1uF" H 6610 2320 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6600 2400 50  0001 C CNN
F 3 "" H 6600 2400 50  0000 C CNN
	1    6600 2400
	0    1    -1   0   
$EndComp
Wire Wire Line
	6450 2400 6500 2400
Wire Wire Line
	6700 2400 6750 2400
Text GLabel 8000 1200 2    50   Input ~ 0
PC6
$Comp
L R R4
U 1 1 585E2B58
P 7850 1050
F 0 "R4" V 7930 1050 50  0000 C CNN
F 1 "10k" V 7850 1050 50  0000 C CNN
F 2 "footprints:0.125_Resistor" V 7780 1050 50  0001 C CNN
F 3 "" H 7850 1050 50  0000 C CNN
	1    7850 1050
	1    0    0    -1  
$EndComp
Text GLabel 7450 1200 0    50   Input ~ 0
RESET
$Comp
L C_Small C3
U 1 1 585E2D7F
P 7600 1200
F 0 "C3" H 7610 1270 50  0000 L CNN
F 1 "0.1uF" H 7610 1120 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0000 C CNN
	1    7600 1200
	0    1    -1   0   
$EndComp
Wire Wire Line
	7850 900  7850 850 
Wire Wire Line
	7700 1200 8000 1200
Connection ~ 7850 1200
Wire Wire Line
	7450 1200 7500 1200
$Comp
L CONN_01X06 P1
U 1 1 585E6DD7
P 6050 1150
F 0 "P1" H 6050 1500 50  0000 C CNN
F 1 "UART" V 6150 1150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 6050 1150 50  0001 C CNN
F 3 "" H 6050 1150 50  0000 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
Text GLabel 5850 1400 0    50   Input ~ 0
RESET
Text GLabel 5850 1300 0    50   Input ~ 0
TX
Text GLabel 5850 1200 0    50   Input ~ 0
RX
NoConn ~ 5850 1000
$Comp
L VCC #PWR05
U 1 1 585E2AE7
P 7850 850
F 0 "#PWR05" H 7850 700 50  0001 C CNN
F 1 "VCC" H 7850 1000 50  0000 C CNN
F 2 "" H 7850 850 50  0000 C CNN
F 3 "" H 7850 850 50  0000 C CNN
	1    7850 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 585E166D
P 6450 2400
F 0 "#PWR06" H 6450 2150 50  0001 C CNN
F 1 "GND" H 6450 2250 50  0000 C CNN
F 2 "" H 6450 2400 50  0000 C CNN
F 3 "" H 6450 2400 50  0000 C CNN
	1    6450 2400
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 585D845C
P 2900 4200
F 0 "#PWR07" H 2900 3950 50  0001 C CNN
F 1 "GND" H 2900 4050 50  0000 C CNN
F 2 "" H 2900 4200 50  0000 C CNN
F 3 "" H 2900 4200 50  0000 C CNN
	1    2900 4200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 585D82C3
P 2900 2600
F 0 "#PWR08" H 2900 2350 50  0001 C CNN
F 1 "GND" H 2900 2450 50  0000 C CNN
F 2 "" H 2900 2600 50  0000 C CNN
F 3 "" H 2900 2600 50  0000 C CNN
	1    2900 2600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 585D6EAA
P 2900 1000
F 0 "#PWR09" H 2900 750 50  0001 C CNN
F 1 "GND" H 2900 850 50  0000 C CNN
F 2 "" H 2900 1000 50  0000 C CNN
F 3 "" H 2900 1000 50  0000 C CNN
	1    2900 1000
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 585EE745
P 5600 3800
F 0 "#FLG010" H 5600 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 3980 50  0000 C CNN
F 2 "" H 5600 3800 50  0000 C CNN
F 3 "" H 5600 3800 50  0000 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 585EEC8B
P 5600 3850
F 0 "#PWR011" H 5600 3600 50  0001 C CNN
F 1 "GND" H 5600 3700 50  0000 C CNN
F 2 "" H 5600 3850 50  0000 C CNN
F 3 "" H 5600 3850 50  0000 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 585EED05
P 6050 3850
F 0 "#PWR012" H 6050 3700 50  0001 C CNN
F 1 "VCC" H 6050 4000 50  0000 C CNN
F 2 "" H 6050 3850 50  0000 C CNN
F 3 "" H 6050 3850 50  0000 C CNN
	1    6050 3850
	1    0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 585EED7F
P 6050 3800
F 0 "#FLG013" H 6050 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 3980 50  0000 C CNN
F 2 "" H 6050 3800 50  0000 C CNN
F 3 "" H 6050 3800 50  0000 C CNN
	1    6050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3800 5600 3850
Wire Wire Line
	6050 3850 6050 3800
Wire Wire Line
	6750 4100 6750 4000
$Comp
L VCC #PWR014
U 1 1 585F09FF
P 5850 1100
F 0 "#PWR014" H 5850 950 50  0001 C CNN
F 1 "VCC" V 5850 1300 50  0000 C CNN
F 2 "" H 5850 1100 50  0000 C CNN
F 3 "" H 5850 1100 50  0000 C CNN
	1    5850 1100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 585F0B43
P 5850 900
F 0 "#PWR015" H 5850 650 50  0001 C CNN
F 1 "GND" V 5850 700 50  0000 C CNN
F 2 "" H 5850 900 50  0000 C CNN
F 3 "" H 5850 900 50  0000 C CNN
	1    5850 900 
	0    1    -1   0   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 585F7453
P 6050 1850
F 0 "P2" H 6050 2000 50  0000 C CNN
F 1 "CONN_01X02" V 6150 1850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 6050 1850 50  0001 C CNN
F 3 "" H 6050 1850 50  0000 C CNN
	1    6050 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 585F7588
P 5850 1800
F 0 "#PWR016" H 5850 1550 50  0001 C CNN
F 1 "GND" V 5850 1600 50  0000 C CNN
F 2 "" H 5850 1800 50  0000 C CNN
F 3 "" H 5850 1800 50  0000 C CNN
	1    5850 1800
	0    1    -1   0   
$EndComp
Text GLabel 5850 1900 0    50   Input ~ 0
RX
$Comp
L CONN_01X02 P3
U 1 1 585F771C
P 6050 2400
F 0 "P3" H 6050 2550 50  0000 C CNN
F 1 "CONN_01X02" V 6150 2400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 6050 2400 50  0001 C CNN
F 3 "" H 6050 2400 50  0000 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 585F7722
P 5850 2350
F 0 "#PWR017" H 5850 2100 50  0001 C CNN
F 1 "GND" V 5850 2150 50  0000 C CNN
F 2 "" H 5850 2350 50  0000 C CNN
F 3 "" H 5850 2350 50  0000 C CNN
	1    5850 2350
	0    1    -1   0   
$EndComp
Text GLabel 5850 2450 0    50   Input ~ 0
TX
$Comp
L GND #PWR018
U 1 1 585F7F59
P 7400 4950
F 0 "#PWR018" H 7400 4700 50  0001 C CNN
F 1 "GND" V 7400 4750 50  0000 C CNN
F 2 "" H 7400 4950 50  0000 C CNN
F 3 "" H 7400 4950 50  0000 C CNN
	1    7400 4950
	0    -1   1    0   
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 585F8038
P 6950 4850
F 0 "CON1" H 6845 5090 50  0000 C CNN
F 1 "AVR-ISP-6" H 6685 4620 50  0000 L BNN
F 2 "footprints:ICSP" V 6430 4890 50  0001 C CNN
F 3 "" H 6925 4850 50  0000 C CNN
	1    6950 4850
	1    0    0    -1  
$EndComp
Text GLabel 6500 4950 0    50   Input ~ 0
PC6
Text GLabel 6500 4850 0    50   Input ~ 0
SCK
Text GLabel 6500 4750 0    50   Input ~ 0
MISO
$Comp
L VCC #PWR019
U 1 1 585F951B
P 7400 4750
F 0 "#PWR019" H 7400 4600 50  0001 C CNN
F 1 "VCC" H 7400 4900 50  0000 C CNN
F 2 "" H 7400 4750 50  0000 C CNN
F 3 "" H 7400 4750 50  0000 C CNN
	1    7400 4750
	0    1    -1   0   
$EndComp
Text GLabel 7400 4850 2    50   Input ~ 0
MOSI
Wire Wire Line
	6500 4750 6800 4750
Wire Wire Line
	6800 4850 6500 4850
Wire Wire Line
	6500 4950 6800 4950
Wire Wire Line
	7400 4950 7050 4950
Wire Wire Line
	7050 4850 7400 4850
Wire Wire Line
	7400 4750 7050 4750
Text GLabel 8700 2150 2    50   Input ~ 0
MISO
Wire Wire Line
	8700 2150 8650 2150
Wire Wire Line
	8650 2150 8650 2200
Text GLabel 8700 2050 2    50   Input ~ 0
MOSI
Wire Wire Line
	8700 2050 8650 2050
Wire Wire Line
	8650 2050 8650 2100
Text GLabel 8700 2250 2    50   Input ~ 0
SCK
Wire Wire Line
	8700 2250 8650 2250
Wire Wire Line
	8650 2250 8650 2300
$EndSCHEMATC
