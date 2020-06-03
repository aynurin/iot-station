#ifndef PTTime_H
#define PTTime_H
    
#include <ESP8266WiFi.h>

#define MIN_EPOCH (40 * 365 * 24 * 3600)

class PTTime {
public:
    PTTime();
    ~PTTime();
    time_t init();
};
    
#endif
