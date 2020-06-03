#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <Arduino.h>
#include <Esp.h>
#include <Adafruit_BME280.h>  // include Adafruit BME280 sensor library
#include <Adafruit_CCS811.h>  // include Adafruit CCS811 sensor library

#include "PTIoT.h"
#include "st_config.h"
#include "PTData.h"
#include "PTWiFi.h"
#include "PTI2C.h"
#include "PTTime.h"
#include "PTDisplay.h"

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

PTWiFi wifi;
PTI2C i2c;
PTTime ptTime;
PTDisplay display;
PTIoT iot;

bool __wifi_on = false;
bool __bme280_on = false;
bool __ccs811_on = false;
bool __screen_on = false;

void init_peripherals()
{
  if (display.begin())
  {
    __screen_on = true;
  }
  else
  {
    alert_error("SSD1306 allocation failed", "");
  }
  
  i2c.scan();

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

  // WiFi
  int conn_status = wifi.init();
  if (conn_status == PTWIFI_CONNECTED)
  {
    String ipAddr = wifi.ESPWIFI.localIP().toString();
    display.println(TEXT_LN_6, "IP:", ipAddr.c_str());
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
    Serial.println("CCS811 is not available");
  }
}

/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
void setup()
{
  Serial.begin(115200);
  init_peripherals();
  wdt_enable(5000);

  sensors[BME280_TEMP].sensor_id = BME280_TEMP;
  sensors[BME280_HUMI].sensor_id = BME280_HUMI;
  sensors[BME280_PRES].sensor_id = BME280_PRES;
  sensors[CCS811_TVOC].sensor_id = CCS811_TVOC;
  sensors[CCS811_ECO2].sensor_id = CCS811_ECO2;
} // end of setup

/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
void loop()
{
  process_loop();
  delay(PT_BATCH_DELAY_SEC * 1000);
}

void process_loop() {
  Serial.println("PROCESSING...");
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
    read_sensors();
    display.readings(sensors, KNOWN_SENSORS_COUNT);
  }
}
