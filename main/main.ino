

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>      // include Adafruit graphics library
#include <Adafruit_SSD1306.h>  // include Adafruit SSD1306 OLED display driver
#include <Adafruit_BME280.h>   // include Adafruit BME280 sensor library
#include <Adafruit_CCS811.h>   // include Adafruit CCS811 sensor library

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_MOSI  D7
#define OLED_CLK   D5
#define OLED_DC    D4
#define OLED_CS    D8
#define OLED_RESET D6

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT,
  OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);

#define BME280_I2C_ADDRESS  0x76
#define CCS811_I2C_ADDRESS  0x5A

Adafruit_BME280  bme280;

Adafruit_CCS811 ccs;


#define TEXT_LN_H 14
#define TEXT_LN_1 0
#define TEXT_LN_2 TEXT_LN_1 + TEXT_LN_H
#define TEXT_LN_3 TEXT_LN_2 + TEXT_LN_H
#define TEXT_LN_4 TEXT_LN_3 + TEXT_LN_H
#define TEXT_LN_5 TEXT_LN_4 + TEXT_LN_H

void setup() {
  Serial.begin (115200);

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if(!display.begin(SSD1306_SWITCHCAPVCC)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
  
  scan_i2c();

  init_display();
  init_bme280();
  init_ccs811();
}  // end of setup

void loop() {
  // read temperature, humidity and pressure from the BME280 sensor
  float temp = bme280.readTemperature();    // get temperature in degree Celsius
  // 1: print temperature
  display.setCursor(83, TEXT_LN_1);
  if(temp < 0)
    display.printf("-%02u.%02uC", (int)abs(temp) % 100, (int)(abs(temp) * 100) % 100 );
  else
    display.printf(" %02u.%02uC", (int)temp % 100, (int)(temp * 100) % 100 );
  // print degree symbols ( ° )
  display.drawRect(125, TEXT_LN_1, 3, 3, WHITE);

  
  float humi = bme280.readHumidity();       // get humidity in rH%
  // 2: print humidity
  display.setCursor(93, TEXT_LN_2);
  display.printf("%02u.%02u%%", (int)humi, (int)(humi * 100) % 100 );


  float pres = bme280.readPressure();       // get pressure in Pa
  // 3: print pressure
  display.setCursor(70, TEXT_LN_3);
  display.printf("%04u.%02uhPa", (int)(pres/100), (int)((uint32_t)pres % 100) );
  
  if(ccs.available()) {
    ccs.setEnvironmentalData((uint8_t)humi, (double)temp);
    if(!ccs.readData()){
      float tvoc = ccs.getTVOC();           // get Volatile organic compound
      // 5: print Volatile organic compound
      display.setCursor(110, TEXT_LN_4);
      display.printf("%03u", (int)tvoc);
      
      float eco2 = ccs.geteCO2();            // get eCO2
      // 4: print eCO2
      display.setCursor(86, TEXT_LN_5);
      display.printf("%04uppm", (int)eco2);
    }
    else{
      display.setCursor(70, TEXT_LN_4);
      Serial.println("ERROR!");
      display.setCursor(70, TEXT_LN_5);
      Serial.println("ERROR!");
      while(1);
    }
  }
 
  // update the display
  display.display();
 
  delay(5000);  // wait five seconds
}

// initialize the CCS811 sensor
void init_ccs811() {
  if(!ccs.begin())
  { // connection error or device address wrong!
    Serial.println("Failed to start CCS811! Please check your wiring.");
    // clear the display buffer.
    display.clearDisplay();
    display.setCursor(46, 13);
    display.print("CCS811");
    display.setCursor(34, 23);
    display.print("Connection");
    display.setCursor(49, 33);
    display.print("Error");
    display.display();        // update the display
    while(1)  // stay here
      delay(1000);
  }

  // Wait for the sensor to be ready
  while(!ccs.available());
}

// https://simple-circuit.com/esp8266-nodemcu-bme280-weather-station/
// initialize the BME280 sensor
void init_bme280() {
  if(bme280.begin(BME280_I2C_ADDRESS) == 0)
  { // connection error or device address wrong!
    Serial.println("Failed to start BME280! Please check your wiring.");
    // clear the display buffer.
    display.clearDisplay();
    display.setCursor(46, 13);
    display.print("BME280");
    display.setCursor(34, 23);
    display.print("Connection");
    display.setCursor(49, 33);
    display.print("Error");
    display.display();        // update the display
    while(1)  // stay here
      delay(1000);
  }
}

void init_display() {
  // clear the display buffer.
  display.clearDisplay();
 
  display.setTextSize(1);   // text size = 1
  display.setTextColor(WHITE, BLACK);  // set text color to white and black background
 
  display.setTextWrap(false);           // disable text wrap
  display.setCursor(0, 4);              // move cursor to position (0, 4) pixel
  display.print("W\nE\nA\nT\nH\nE\nR");
  display.display();        // update the display
 
  display.setCursor(13, TEXT_LN_1);
  display.print("TEMPERATURE:");
  display.setCursor(13, TEXT_LN_2);
  display.print("HUMIDITY:");
  display.setCursor(13, TEXT_LN_3);
  display.print("PRESSURE:");
  display.setCursor(13, TEXT_LN_4);
  display.print("VOC:");
  display.setCursor(13, TEXT_LN_5);
  display.print("eCO2:");
  display.display();        // update the display
}


// I2C Scanner
// Written by Nick Gammon
// Date: 20th April 2011
/*
 * Display is probably https://www.vishay.com/docs/37902/oled128o064dbpp3n00000.pdf
 * Found address: 90 (0x5A) - CCS811 https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor/
 * Found address: 118 (0x76) - BME280 kinda https://learn.adafruit.com/adafruit-bme280-humidity-barometric-pressure-temperature-sensor-breakout/
 */
void scan_i2c() {
  Serial.println ("Scanning I2C...");
  byte count = 0;
 
  Wire.begin();
  for (byte i = 1; i < 120; i++)
  {
    Wire.beginTransmission (i);
    if (Wire.endTransmission () == 0) {
      Serial.print ("Found address: ");
      Serial.print (i, DEC);
      Serial.print (" (0x");
      Serial.print (i, HEX);
      Serial.println (")");
      count++;
    } // end of good response
  } // end of for loop
  Serial.print ("Found ");
  Serial.print (count, DEC);
  Serial.println (" I2C device(s).");
}
