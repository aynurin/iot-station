
#ifndef PTLP5018REGS_H
#define PTLP5018REGS_H

#include <stdio.h>
#include <Arduino.h>

#define LP50XX_DEV_CFG0		0x00
#define LP50XX_DEV_CFG1		0x01
#define LP50XX_LED_CFG0		0x02

/* LP5018 and LP5024 registers */
#define LP5024_BNKC_CLR		0x06
#define LP5024_LED0_BRT		0x07 // LP5024: 0x07 .. 0x0e; LP5018: 0x07 .. 0x0c
#define LP5024_OUT0_CLR		0x0f // LP5024: 0x0f .. 0x26; LP5018: 0x0f .. 0x23
#define LP5024_RESET		0x27

#define LP50XX_SW_RESET		0xff

#define LP50XX_CHIP_EN		BIT(6) // LP50XX_DEV_CFG0

#define LP50XX_LOG_SCALE_EN BIT(5) // LP50XX_DEV_CFG1, Logarithmic scale brightness
#define LP50XX_POWERSAVE_EN BIT(4) // LP50XX_DEV_CFG1, Automatic Power Save when all LEDs off > 30ms

struct PT_LP50XX_LED {
	uint8_t led_number;
	uint8_t color_reg;
	uint8_t bright_reg;
};

#endif