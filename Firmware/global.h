#include "display.h"

#define PWM_STEPS 10
volatile byte _pwm_step = 0;
volatile byte _cath = 0;
volatile byte _pwm_level = 10;

#define CONFIG_CHECK 42
#define CONFIG_BYTE 0
#define PWM_BYTE 1
#define BAUD_BYTE 2

#define BAUD_2400	0
#define BAUD_4800	1
#define BAUD_9600	2
#define BAUD_14400	3
#define BAUD_19200	4
#define BAUD_38400	5
#define BAUD_57600	6
#define BAUD_76800	7

#define FACTORY_BAUD BAUD_38400
uint8_t _baud_rate = FACTORY_BAUD;

uint8_t _cur_value;
uint8_t _character_values[CATH_COUNT*DIG_PER_CATH] = {
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
};

#define BIT_SET(b, i) (b & _BV(i))
#define SET_PIN(val, prt, pin) val ? prt |= _BV(pin) : prt &= ~_BV(pin)
#define SET_PIN_FROM_BYTE(b, i, prt, pin) SET_PIN(BIT_SET(b, i), prt, pin)

//These are for Timer1
#define PRESCALE1_1 _BV(CS10)
#define PRESCALE1_8 _BV(CS11)
#define PRESCALE1_64 (_BV(CS11) | _BV(CS10))
#define PRESCALE1_256 _BV(CS12)
#define PRESCALE1_1024 (_BV(CS12) | _BV(CS10))

//Commands
#define CMD_BRIGHTNESS 0x10
#define CMD_RAW        0x11
#define CMD_BAUD_RATE  0x12
#define CMD_FACTORY_RESET 0x13
