#ifndef PTFC28_H
#define PTFC28_H
    
#include <Arduino.h>
#include <stdlib.h>
#include <Wire.h>

class PTFC28 {
public:
    PTFC28(unsigned int pin);
    ~PTFC28();
    int read();
    bool available();
private:
    int dPin;
};
    
#endif
