
#include "PTADC081.h"

PTADC081::PTADC081()
{ /*nothing to construct*/
}

//<<destructor>>
PTADC081::~PTADC081()
{ /*nothing to destruct*/
}

uint8_t PTADC081::init()
{
  Wire.beginTransmission(PT_PTADC081_I2CADDR);
  Wire.write(ADC081_CONFIG);
  Wire.write(PT_PTADC081_CONFIG);
  // Wire.write(LP50XX_DEV_CFG1);
  // Wire.write(LP50XX_LOG_SCALE_EN | LP50XX_POWERSAVE_EN);
  __available = Wire.endTransmission();
  return __available;
}

uint8_t PTADC081::read()
{
  byte result[2];
  Wire.beginTransmission(PT_PTADC081_I2CADDR);
  Wire.write(ADC081_CONV_RES);
  Wire.endTransmission();
  Wire.requestFrom(PT_PTADC081_I2CADDR, 2);
  int sizeRead = Wire.readBytes(result, 2);

  if (sizeRead != 2) {
    Serial.print("Not enough bytes read: ");
    Serial.println(sizeRead);
  }
  else {
    Serial.print("Bytes read: ");
    Serial.print(result[0]);
    Serial.print(" ");
    Serial.println(result[1]);
    __lastValue = result[0] << 4 | result[1] >> 4;
    __alertState = result[0] & 0x01>>7 == 1;
  }
  int readStatus = Wire.endTransmission();
  if (readStatus != 0) {
    Serial.print("ADC081 did not ack: ");
    Serial.println(readStatus);
  }
  
  return __lastValue;
}

bool PTADC081::available()
{
  return __available == 0;
}
