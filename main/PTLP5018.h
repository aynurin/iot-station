#ifndef PTLP5018_H
#define PTLP5018_H
    
#include <Arduino.h>
#include <stdlib.h>
#include <Wire.h>

#include "nmcu.h"
#include "PTLP5018REGS.h"

#define PT_LP5018_I2CADDR 0x28

class PTLP5018 {
public:
    PTLP5018();
    ~PTLP5018();
    uint8_t init();
    uint8_t brightness(uint8_t led, uint8_t val);
    uint8_t color(uint8_t led, uint8_t r, uint8_t g, uint8_t b);
    uint8_t set_led(PT_LP50XX_LED l);
    bool available();
};

PT_LP50XX_LED get_led_regs(uint8_t led_number);
    
#endif
