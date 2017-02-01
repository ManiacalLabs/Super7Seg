#ifndef DISPLAY_H
#define DISPLAY_H

//                  +-\/-+
//            PC6  1|    |28  PC5 (AI 5)
//      (D 0) PD0  2|    |27  PC4 (AI 4)
//      (D 1) PD1  3|    |26  PC3 (AI 3)
//      (D 2) PD2  4|    |25  PC2 (AI 2)
// PWM+ (D 3) PD3  5|    |24  PC1 (AI 1)
//      (D 4) PD4  6|    |23  PC0 (AI 0)
//            VCC  7|    |22  GND
//            GND  8|    |21  AREF
//            PB6  9|    |20  AVCC
//            PB7 10|    |19  PB5 (D 13)
// PWM+ (D 5) PD5 11|    |18  PB4 (D 12)
// PWM+ (D 6) PD6 12|    |17  PB3 (D 11) PWM#
//      (D 7) PD7 13|    |16  PB2 (D 10) PWM
//      (D 8) PB0 14|    |15  PB1 (D 9) PWM
//                  +----+


#define REG_A1 DDRB
#define REG_B1 DDRB
#define REG_C1 DDRB
#define REG_D1 DDRB
#define REG_E1 DDRB
#define REG_F1 DDRB
#define REG_G1 DDRB
#define REG_DP1 DDRB

#define REG_A2 DDRC
#define REG_B2 DDRC
#define REG_C2 DDRC
#define REG_D2 DDRC
#define REG_E2 DDRC
#define REG_F2 DDRC
#define REG_G2 DDRD
#define REG_DP2 DDRD

#define PORT_A1 PORTB
#define PORT_B1 PORTB
#define PORT_C1 PORTB
#define PORT_D1 PORTB
#define PORT_E1 PORTB
#define PORT_F1 PORTB
#define PORT_G1 PORTB
#define PORT_DP1 PORTB

#define PORT_A2 PORTC
#define PORT_B2 PORTC
#define PORT_C2 PORTC
#define PORT_D2 PORTC
#define PORT_E2 PORTC
#define PORT_F2 PORTC
#define PORT_G2 PORTD
#define PORT_DP2 PORTD

#define PIN_A1 PINB0
#define PIN_B1 PINB1
#define PIN_C1 PINB2
#define PIN_D1 PINB3
#define PIN_E1 PINB4
#define PIN_F1 PINB5
#define PIN_G1 PINB6
#define PIN_DP1 PINB7

#define PIN_A2 PINC0
#define PIN_B2 PINC1
#define PIN_C2 PINC2
#define PIN_D2 PINC3
#define PIN_E2 PINC4
#define PIN_F2 PINC5
#define PIN_G2 PIND2
#define PIN_DP2 PIND3

#define DIG_PER_CATH 2
#define SEG_COUNT 8


#define CATH_COUNT 6
#define MUX_COUNT 3

#define REG_MUXA DDRD
#define REG_MUXB DDRD
#define REG_MUXC DDRD

#define PORT_MUXA PORTD
#define PORT_MUXB PORTD
#define PORT_MUXC PORTD

#define PIN_MUXA PIND4
#define PIN_MUXB PIND5
#define PIN_MUXC PIND6


//0b[DP]GFEDCBA
//####
// A
//F B
// G
//E C
// D
//####

byte characters[10] = {
    0b00111111, //0
    0b00000110, //1
    0b01011011, //2
    0b01001111, //3
    0b01100110, //4
    0b01101101, //5
    0b01111101, //6
    0b00000111, //7
    0b01111111, //8
    0b01101111  //9
};


#endif DISPLAY_H
