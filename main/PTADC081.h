#ifndef PTADC081_H
#define PTADC081_H
    
#include <Arduino.h>
#include <stdlib.h>
#include <Wire.h>

#include "PTADC081REGS.h"

#define PT_PTADC081_I2CADDR 0x54
#define PT_PTADC081_CONFIG \
    ADC081_CFG_CONV_INT_2048 | \
    ADC081_CFG_ALERT_SELF_CLEAR | \
    ADC081_CFG_ALERT_FLAG_OFF | \
    ADC081_CFG_ALERT_PIN_OFF | \
    ADC081_CFG_ALERT_PIN_HIGH

class PTADC081 {
public:
    PTADC081();
    ~PTADC081();
    uint8_t init();
    uint8_t read();
    bool available();

private:
    uint8_t __available;
    uint8_t __lastValue;
    uint8_t __alertState;
};

#endif
