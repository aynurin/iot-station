
#include "PTLP5018.h"

PTLP5018::PTLP5018()
{ /*nothing to construct*/
}

//<<destructor>>
PTLP5018::~PTLP5018()
{ /*nothing to destruct*/
}

uint8_t PTLP5018::init()
{
  Wire.beginTransmission(PT_LP5018_I2CADDR);
  Wire.write(LP50XX_DEV_CFG0);
  Wire.write(LP50XX_CHIP_EN);
  // Wire.write(LP50XX_DEV_CFG1);
  // Wire.write(LP50XX_LOG_SCALE_EN & LP50XX_POWERSAVE_EN);
  __available = Wire.endTransmission();
  return __available;
}

uint8_t PTLP5018::brightness(uint8_t led_number, uint8_t val)
{
  PT_LP50XX_LED l = get_led_regs(led_number);
  Wire.beginTransmission(PT_LP5018_I2CADDR);
  Wire.write(l.bright_reg);
  Wire.write(val);
  __available = Wire.endTransmission();
  return __available;
}

uint8_t PTLP5018::color(uint8_t led_number, uint8_t r, uint8_t g, uint8_t b)
{
  PT_LP50XX_LED l = get_led_regs(led_number);
  Wire.beginTransmission(PT_LP5018_I2CADDR);
  Serial.print("Led ");
  Serial.print(led_number, DEC);
  Serial.print(" reg ");
  Serial.println(l.color_reg, HEX);
  Wire.write(l.color_reg);
  Wire.write(r);
  Wire.write(g);
  Wire.write(b);
  __available = Wire.endTransmission();
  return __available;
}

uint8_t PTLP5018::color_reg(uint8_t reg, uint8_t c)
{
  Wire.beginTransmission(PT_LP5018_I2CADDR);
  Serial.print("Reg ");
  Serial.println(reg, HEX);
  Wire.write(reg);
  Wire.write(c);
  __available = Wire.endTransmission();
  return __available;
}

bool PTLP5018::available()
{
  return __available == 0;
}

PT_LP50XX_LED get_led_regs(uint8_t led_number) {
	struct PT_LP50XX_LED led =
    {
        led_number : led_number,
        color_reg : LP5024_OUT0_CLR + (led_number * 3),
        bright_reg : LP5024_LED0_BRT + led_number,
    };
	return led;
}

// void color_mix(uint32_t mixed_value)
// {
// 	uint8_t red = ((mixed_value & 0xff0000) >> 16);
// 	uint8_t green = ((mixed_value & 0xff00) >> 8);
// 	uint8_t blue = ((mixed_value & 0xff));
// }