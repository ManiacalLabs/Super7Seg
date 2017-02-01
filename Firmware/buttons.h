#ifndef BUTTONS_H
#define BUTTONS_H

typedef struct {
    byte pin;
    uint16_t count;
    bool hold_flag;
    bool hold_clear;
    bool press_flag;
    bool reset;
} _button;

volatile _button btns[2] = {
    {   //Button A
        2, //pin
        0, //count
        false, //hold_flag
        false, //hold_clear
        false, //press_flag
        false, //reset
    },
    {   //Button B
        3, //pin
        0, //count
        false, //hold_flag
        false, //hold_clear
        false, //press_flag
        false, //reset
    }
};

#define BTN_A btns[0]
#define BTN_B btns[1]
#define BTN_SCAN_PERIOD 5
#define BTN_HOLD_TIME 750
#define BTN_PRESS_TIME 50
#define HOLD_BTN_A BTN_A.hold_flag && !BTN_A.reset
#define HOLD_BTN_B BTN_B.hold_flag && !BTN_B.reset
#define PRESS_BTN_A BTN_A.press_flag && !BTN_A.reset
#define PRESS_BTN_B BTN_B.press_flag && !BTN_B.reset

#endif BUTTONS_H
