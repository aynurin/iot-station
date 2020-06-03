#ifndef PTWiFi_H
#define PTWiFi_H
    
#include <ESP8266WiFi.h>

#define PTWIFI_CONNECTED 0
#define PTWIFI_CONNECT_TIMEOUT 1

class PTWiFi {
public:
    PTWiFi();
    ~PTWiFi();
    int init();
    ESP8266WiFiClass ESPWIFI;
    bool isConnected();
};
    
#endif
