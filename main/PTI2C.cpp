
#include "PTI2C.h"

PTI2C::PTI2C(){
  devices.CCS811 = 0;
  devices.BME280 = 0;
}
 
//<<destructor>>
PTI2C::~PTI2C(){/*nothing to destruct*/}
 
void PTI2C::scan(){
  Wire.begin();

  Wire.beginTransmission(PT_CCS811_I2C_ADDRESS);
  if (Wire.endTransmission() == 0)
  {
    devices.CCS811 = PT_CCS811_I2C_ADDRESS;
    // Serial.println("Found CCS811");
  }

  Wire.beginTransmission(PT_BME280_I2C_ADDRESS);
  if (Wire.endTransmission() == 0)
  {
    devices.BME280 = PT_BME280_I2C_ADDRESS;
    // Serial.println("Found BME280");
  }

  // // I2C Scanner
  // // Written by Nick Gammon
  // // Date: 20th April 2011
  // uint8_t count = 0;
  // for (uint8_t i = 1; i < 120; i++)
  // {
  //   if (i == PT_CCS811_I2C_ADDRESS || i == PT_BME280_I2C_ADDRESS) {
  //     continue;
  //   }
  //   Wire.beginTransmission(i);
  //   if (Wire.endTransmission() == 0)
  //   {
  //     Serial.print("Found address: ");
  //     Serial.print(i, DEC);
  //     Serial.print(" (0x");
  //     Serial.print(i, HEX);
  //     Serial.println(")");
  //     count++;
  //   }
  // }
}