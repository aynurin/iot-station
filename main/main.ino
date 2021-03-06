#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <Arduino.h>
#include <Esp.h>
#include <Adafruit_BME280.h>  // include Adafruit BME280 sensor library
#include <Adafruit_CCS811.h>  // include Adafruit CCS811 sensor library
#include <Adafruit_ADS1015.h>  // include Adafruit ADS1115 sensor library
#include <Wire.h>

// #define WIFI_EN
#define DEBUG
#define DEBUG_LOOP

#ifndef DEBUG_LOOP
#ifdef WIFI_EN
#define ENABLE_CLOUD
#endif
#endif

#include "PTIoT.h"
#include "st_config.h"
#include "PTData.h"
#include "PTWiFi.h"
#include "PTI2C.h"
#include "PTTime.h"
#include "PTDisplay.h"
#include "PTFC28.h"
#include "PTLP5018.h"
#include "PTADC081.h"

/*
 * Display is probably https://www.vishay.com/docs/37902/oled128o064dbpp3n00000.pdf
 * Found address: 90 (0x5A) - CCS811 https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor/
 * Found address: 118 (0x76) - BME280 kinda https://learn.adafruit.com/adafruit-bme280-humidity-barometric-pressure-temperature-sensor-breakout/
 */

bool __offline = true;
PTSensorData sensors[KNOWN_SENSORS_COUNT];

/******************************* INIT PERIPHERALS **********************************/

Adafruit_CCS811 ccs;
Adafruit_BME280 bme280;
Adafruit_ADS1115 ads1115(0x48);

PTWiFi wifi;
PTI2C i2c;
PTTime ptTime;
PTDisplay display;
PTIoT iot;
//PTFC28 fc28(WROOM_IO4);
PTLP5018 leds;
PTADC081 adc;

bool __wifi_on = false;
bool __bme280_on = false;
bool __ccs811_on = false;
bool __screen_on = false;

void init_peripherals()
{
  pinMode(WROOM_IO4, OUTPUT);
  digitalWrite(WROOM_IO4, HIGH);
  //ads1115.begin();
  int adc_res = adc.init();
  Serial.print("Found ADC: ");
  Serial.println(adc_res);
/*
  if (display.begin())
  {
    __screen_on = true;
  }
  else
  {
    alert_error("SSD1306 allocation failed", "");
  }
*/

  Serial.print("i2c.scan");
  i2c.scan();
  Serial.print("i2c.scan complete");

  // BME280
  if (i2c.devices.BME280 != PT_NO_DEVICE && bme280.begin(i2c.devices.BME280) != 0)
  {
    __bme280_on = true;
  }
  else if (i2c.devices.BME280 == PT_NO_DEVICE)
  {
    alert_error("BME280 not found", "");
  }
  else
  {
    i2c.devices.BME280 = PT_NO_DEVICE;
    alert_error("Failed to init BME280", "0x76");
  }

  // CCS811
  if (i2c.devices.CCS811 != PT_NO_DEVICE && ccs.begin(i2c.devices.CCS811) != 0)
  {
    // Wait for the sensor to be ready
    while (!ccs.available())
      ;
    __ccs811_on = true;
  }
  else if (i2c.devices.CCS811 == PT_NO_DEVICE)
  {
    alert_error("CCS811 not found", "");
  }
  else
  {
    i2c.devices.CCS811 = PT_NO_DEVICE;
    alert_error("Failed to init CCS811", "0x5A");
  }

#ifdef WIFI_EN

  // WiFi
  int conn_status = wifi.init();
  if (conn_status == PTWIFI_CONNECTED)
  {
    String ipAddr = wifi.ESPWIFI.localIP().toString();
    display.println(TP_SCR_LINE_6, TP_SCR_COL_SPAN, "IP:", ipAddr.c_str());
    __wifi_on = true;
  }
  else
  {
    __wifi_on = false;
    alert_error("Failed to connect to WiFi ", PT_WIFI_SSID);
  }

  Serial.print("Fetching time... ");
  time_t epochTime = ptTime.init();
  Serial.println(epochTime);
#else
  WiFi.forceSleepBegin();
#endif
}

void alert_error(const char *message_line_1, const char *message_line_2)
{ // connection error or device address wrong!
  Serial.println(message_line_1);
  Serial.println(message_line_2);

  if (__screen_on == true)
  {
    display.alert(message_line_1, message_line_2);
    delay(5000);
  }
}

void read_sensors() {
  if (__bme280_on) {
    sensors[BME280_TEMP].value = bme280.readTemperature();
    sensors[BME280_HUMI].value = bme280.readHumidity();
    sensors[BME280_PRES].value = bme280.readPressure() / 100;
  }
  else {
    Serial.println("BME280 is not available");
    sensors[BME280_TEMP].value = -1;
    sensors[BME280_HUMI].value = -1;
    sensors[BME280_PRES].value = -1;
  }

  if (__ccs811_on && ccs.available()) {
    if (__bme280_on) {
      ccs.setEnvironmentalData(sensors[BME280_HUMI].value, sensors[BME280_TEMP].value);
    }
    uint8_t readStatus = ccs.readData();
    if (readStatus == 0)
    {
      sensors[CCS811_TVOC].value = ccs.getTVOC();
      sensors[CCS811_ECO2].value = ccs.geteCO2();
    }
    else {
      sensors[CCS811_TVOC].value = -1;
      sensors[CCS811_ECO2].value = -1;
      Serial.print("CCS811 read error: ");
      Serial.println(readStatus);
    }
  }
  else {
    sensors[CCS811_TVOC].value = -1;
    sensors[CCS811_ECO2].value = -1;
    Serial.println("CCS811 is not available");
  }

  // if (fc28.available()) {
  //   sensors[FC28SL_WATR].value = ads1115.readADC_SingleEnded(3);
  // }
  // else {
  //   sensors[FC28SL_WATR].value = -1;
  // }


  if (adc.available()) {
    sensors[ADC081_SOIL].value = adc.read();
  }
  else {
    sensors[ADC081_SOIL].value = -1;
  }
}

void test_sleep() {
  pinMode(WROOM_IO5, OUTPUT);
  digitalWrite(WROOM_IO5, LOW);
  Serial.println("Started.");
  Serial.print("Started. Sleep in... ");

  int i = 10;
  while (i > 0) {
    Serial.print(i, DEC);
    Serial.print(", ");
    delay(1000);
    i--;
  }

  Serial.println("Sleep...");
  digitalWrite(WROOM_IO5, HIGH);
  Serial.print("Am I sleeping?");
  while(true) {
    Serial.print(i, DEC);
    Serial.print(", ");
    delay(1000);
    i++;
  }
}

/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
void setup()
{
  i2c.init();
  Serial.begin(115200);
  Serial.setTimeout(2000);
#ifdef DEBUG_LOOP
  while(!Serial) { }
  delay(1000);
#endif

  test_sleep();

  init_peripherals();
  //dt_enable(5000);

#ifdef DEBUG_LOOP
  Serial.println("Setup complete, running in 5s...");
  delay(5000);
#endif

  sensors[BME280_TEMP].sensor_id = BME280_TEMP;
  sensors[BME280_HUMI].sensor_id = BME280_HUMI;
  sensors[BME280_PRES].sensor_id = BME280_PRES;
  sensors[CCS811_TVOC].sensor_id = CCS811_TVOC;
  sensors[CCS811_ECO2].sensor_id = CCS811_ECO2;
  sensors[FC28SL_WATR].sensor_id = FC28SL_WATR;
} // end of setup

/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
void loop()
{
#ifndef DEBUG_LOOP
  process_loop();
#else
  debug_loop();
  // debug_leds_loop();
#endif
  delay(PT_BATCH_DELAY_SEC * 1000);
}

// deep sleep whereabouts:
// Save power by sleeping WiFi?
// WiFi.forceSleepBegin();
// WiFi.forceSleepWake();
// deep sleep:
// ESP.deepSleep(PT_BATCH_DELAY_SEC + 1e6, WAKE_RF_DEFAULT);
// delay(100); 
// wiring with external interrupt: https://www.youtube.com/watch?v=pPd362tRx5o, https://www.esp8266.com/viewtopic.php?f=11&t=4458
// FET brief: https://www.youtube.com/watch?v=nbMfb0dIvYc


int output_value;

void debug_loop() {
  Serial.println("DEBUG LOOP...");
  read_sensors();

  for( unsigned int a = 0; a < KNOWN_SENSORS_COUNT; a = a + 1 ) {
    Serial.print(SENSOR_NAMES_U[a]);
    Serial.println(sensors[a].value);
  }

  // display.readings(sensors, KNOWN_SENSORS_COUNT);
  // iot.wait(5000);
}

void debug_leds_loop() {
  Serial.println("DEBUG LEDS LOOP...");

  while (true) {
    uint8_t ledsStatus = leds.init();
    if (ledsStatus != 0) {
      Serial.print("Error messaging with leds: ");
      Serial.println(ledsStatus);
      delay(2000);
    }
    else {
      for (uint8_t led = 0; led < 6; led++) {
        leds.brightness(led, 0x60);
      }
      leds.color(0, 0, 0, 0);
      leds.color(1, 0, 0, 0);
      leds.color(2, 0, 0, 0);
      leds.color(3, 0, 0, 0);
      leds.color(4, 0, 0, 0);
      leds.color(5, 0, 0, 0);

      // leds 4 and 5 blue won't lit up :(

      leds.color(0, 0xff, 0x0, 0x00);
      delay(2000);
      leds.color(0, 0, 0, 0);
      
      leds.color(1, 0x00, 0x0, 0xff);
      delay(2000);
      leds.color(1, 0, 0, 0);
      
      leds.color(0, 0xff, 0x0, 0x00);
      leds.color(1, 0x00, 0x0, 0xff);
      delay(2000);
      leds.color(0, 0, 0, 0);
      leds.color(1, 0, 0, 0);
      
      leds.color(0, 0xff, 0x0, 0x00);
      leds.color(1, 0x00, 0x0, 0xff);
      leds.color(4, 0, 0xff, 0);
      delay(2000);
      leds.color(0, 0, 0, 0);
      leds.color(1, 0, 0, 0);
      leds.color(4, 0, 0, 0);
      
      delay(2000);
    }
  }
}

void process_loop() {
  Serial.println("PROCESSING...");
#ifdef ENABLE_CLOUD
  if (iot.begin_batch()) {
    while (iot.get_messages_sent() < PT_MESSAGES_PER_BATCH) {
      read_sensors();
      iot.send(sensors, KNOWN_SENSORS_COUNT);
      display.readings(sensors, KNOWN_SENSORS_COUNT);
      iot.wait(5000);
    }
    Serial.print("Messages sent: ");
    Serial.println(iot.get_messages_sent());
    iot.end_batch();
  } 
  else {
    Serial.println("iot.begin_batch is FALSE");
  }
#else
  read_sensors();
  display.readings(sensors, KNOWN_SENSORS_COUNT);
#endif
}
