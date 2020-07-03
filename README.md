# NodeMCU-based home climate monitoring

The setup consists of the following modules:

1. NodeMCU (ESP8266)
2. BME280 Temperature Humidity Barometric Pressure Sensor (I2C Breakout)
3. CCS811 VOC/eCO2 Sensor (I2C Breakout)
4. SSD1306 0.96" Serial 128X64 OLED LCD Display (SPI Breakout)
5. FC-28 Soil Moisture Sensor

## Useful links and Credits

I heavily relied on all these resources and re-used much of the code from many of them. So the special thank you goes to the authors of the follosing pages:

1. NodeMCU: https://www.instructables.com/id/NodeMCU-ESP8266-Details-and-Pinout/
2. Screen info
    * Interfacing with NodeMCU: https://circuitdigest.com/microcontroller-projects/interfacing-ssd1306-oled-display-with-esp8266-nodemcu 
    * Info: https://components101.com/oled-display-ssd1306
    * Specification: https://www.vishay.com/docs/37902/oled128o064dbpp3n00000.pdf
3. BME280: https://www.instructables.com/id/ESP8266-NodeMCU-With-BME280-Gauges-Chart/
4. CCS811: https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor/
5. NodeMCU I2C/SPI pins: https://steve.fi/hardware/nodemcu/default-pins/
6. Screen code sample: https://github.com/jandelgado/arduino/blob/master/ssd1306_sample_adafruit/ssd1306_sample_adafruit.ino
7. Lots of helpful I2C info (and a nice I2S scanner): http://www.gammon.com.au/forum/?id=10896
8. Similar projects:
    * https://wemakethings.net/chirp/
    * https://simple-circuit.com/esp8266-nodemcu-bme280-weather-station/
9. Good read on power consumption: https://tinker.yeoman.com.au/2016/05/29/running-nodemcu-on-a-battery-esp8266-low-power-consumption-revisited/
10. Azure IoT hub: 
    * IoT Hub setup: https://docs.microsoft.com/en-us/learn/modules/manage-iot-devices/ 
    * Time Series Insights setup: https://docs.microsoft.com/en-us/learn/modules/explore-analyze-time-series-insights/ 
    * This doc describes auto-provisioning: https://docs.microsoft.com/en-us/azure/iot-dps/quick-create-simulated-device-x509
        * But the code won't compile in Arduino IDE. I should try a custom compiled Azure IoT SDK.
        * Here is one guy trying to do that: https://github.com/Azure/azure-iot-sdk-c/issues/1229
11. Soil moisture sensor FC-28: http://www.circuitstoday.com/arduino-soil-moisture-sensor
12. Power management: 
    * https://www.youtube.com/watch?v=wf_msvWv1jk
    * https://www.youtube.com/watch?v=oC2JlYIqQUk