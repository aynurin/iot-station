
#include "PTWiFi.h"
#include "st_config.h"

PTWiFi::PTWiFi(){/*nothing to construct*/}
 
//<<destructor>>
PTWiFi::~PTWiFi(){/*nothing to destruct*/}
 
//turn the LED on
int PTWiFi::init(){
  Serial.print("connecting to ");
  Serial.print(PT_WIFI_SSID);
  WiFi.mode(WIFI_STA);
  WiFi.begin(PT_WIFI_SSID, PT_WIFI_PASSWORD);
  int waited = 0;
  while (WiFi.status() != WL_CONNECTED && waited < PT_WIFI_TIMEOUT)
  {
    delay(500);
    waited += 500;
    Serial.print(".");
  }
  if (WiFi.status() != WL_CONNECTED) {
      return PTWIFI_CONNECT_TIMEOUT;
  }
  Serial.print("Connected with IP ");
  Serial.println(WiFi.localIP());
  ESPWIFI = WiFi;
  return PTWIFI_CONNECTED;
}

bool PTWiFi::isConnected() {
    return ESPWIFI.status() == WL_CONNECTED;
}