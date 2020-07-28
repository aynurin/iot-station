
#ifndef PTADC081REGS_H
#define PTADC081REGS_H

#include <stdio.h>
#include <Arduino.h>

#define ADC081_CONV_RES		0x00
#define ADC081_ALERT_ST		0x01
#define ADC081_CONFIG		0x02
#define ADC081_LOW_LIM		0x03
#define ADC081_HIGH_LIM		0x04
#define ADC081_HYSTERIS		0x05
#define ADC081_LOW_VAL		0x06
#define ADC081_HIGH_VAL		0x07

#define ADC081_CFG_CONV_INT_OFF 	0x00<<5	// 0 ksps
#define ADC081_CFG_CONV_INT_0032	0x01<<5	// 27 ksps
#define ADC081_CFG_CONV_INT_0064	0x02<<5	// 13.5 ksps
#define ADC081_CFG_CONV_INT_0128	0x03<<5	// 6.7 ksps
#define ADC081_CFG_CONV_INT_0256	0x04<<5	// 3.4 ksps
#define ADC081_CFG_CONV_INT_0512	0x05<<5	// 1.7 ksps
#define ADC081_CFG_CONV_INT_1024	0x06<<5	// 0.9 ksps
#define ADC081_CFG_CONV_INT_2048	0x07<<5	// 0.4 ksps

#define ADC081_CFG_ALERT_SELF_CLEAR	0x00<<4	// Alert self-clears
#define ADC081_CFG_ALERT_HOLD		0x01<<4	// Alert stays

#define ADC081_CFG_ALERT_FLAG_OFF	0x00<<3	// Diables Alert Status bit [D15] in the Conversion Result Register
#define ADC081_CFG_ALERT_FLAG_ON	0x01<<3	// Enables Alert Status bit [D15] in the Conversion Result Register

#define ADC081_CFG_ALERT_PIN_OFF	0x00<<2	// Disables ALERT output pin. The alert status will tri-state when the pin is disabled
#define ADC081_CFG_ALERT_PIN_ON		0x01<<2	// Enables ALERT output pin

#define ADC081_CFG_ALERT_PIN_LOW	0x00<<0	// Sets ALERT pin to active low
#define ADC081_CFG_ALERT_PIN_HIGH	0x01<<0	// Sets ALERT pin to active high

#endif