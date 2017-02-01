#include "display.h"

#define PWM_STEPS 20
#define PWM_HIGH PWM_STEPS
#define PWM_LOW 10
volatile byte _pwm_step = 0;
volatile byte _cath = 0;

#define CONFIG_CHECK 42
#define CONFIG_BYTE 0
bool _pwm_level = true;
#define PWM_BYTE 1
#define TARGET_BYTE 2

uint8_t _cur_value;
byte _character_values[CATH_COUNT*DIG_PER_CATH] = {
    characters[2],
    characters[3],
    characters[4],
    characters[5],
    characters[6],
    characters[7],
    characters[8],
    characters[9],
    characters[0],
    characters[1],
    characters[2],
    characters[3],
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
