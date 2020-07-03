#ifndef PTI2C_H
#define PTI2C_H
    
#include <Arduino.h>
#include <stdlib.h>
#include <Wire.h>

#include "nmcu.h"

#define PT_CCS811_I2C_ADDRESS 0x5A
#define PT_BME280_I2C_ADDRESS 0x76

#define PT_NO_DEVICE 0


struct TKnownDevices {
  uint8_t BME280 = PT_NO_DEVICE;
  uint8_t CCS811 = PT_NO_DEVICE;
};

class PTI2C {
public:
    PTI2C();
    ~PTI2C();
    void scan();
    TKnownDevices devices;
    void Write(uint8_t DeviceI2C_Address, uint8_t *RawData, uint8_t Length);
};
    
#endif
