

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>      // include Adafruit graphics library
#include <Adafruit_SSD1306.h>  // include Adafruit SSD1306 OLED display driver
#include <Adafruit_BME280.h>   // include Adafruit BME280 sensor library
#include <Adafruit_CCS811.h>   // include Adafruit CCS811 sensor library
#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>
#include <AzureIoTHub.h>

#define is_esp_board

#include "iot_configs.h"

/********************************** SCREEN SETUP **********************************/
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_MOSI  D7
#define OLED_CLK   D5
#define OLED_DC    D4
#define OLED_CS    D8
#define OLED_RESET D6

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT,
  OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);

#define TEXT_LN_H 11
#define TEXT_LN_1 0
#define TEXT_LN_2 TEXT_LN_1 + TEXT_LN_H
#define TEXT_LN_3 TEXT_LN_2 + TEXT_LN_H
#define TEXT_LN_4 TEXT_LN_3 + TEXT_LN_H
#define TEXT_LN_5 TEXT_LN_4 + TEXT_LN_H
#define TEXT_LN_6 TEXT_LN_5 + TEXT_LN_H

void init_display() {
  // clear the display buffer.
  display.clearDisplay();
 
  display.setTextSize(1);   // text size = 1
  display.setTextColor(WHITE, BLACK);  // set text color to white and black background
 
  display.setTextWrap(false);           // disable text wrap
  display.setCursor(0, 8);              // move cursor to position (0, 4) pixel
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
  display.setCursor(13, TEXT_LN_6);
  display.print("IP:");
  display.display();        // update the display
}

/********************************** BME280 SETUP **********************************/
#define BME280_I2C_ADDRESS  0x76

Adafruit_BME280  bme280;

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

/********************************** CCS811 SETUP **********************************/
#define CCS811_I2C_ADDRESS  0x5A
Adafruit_CCS811 ccs;

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

/**********************************  WIFI  SETUP **********************************/
const char* ssid = IOT_CONFIG_WIFI_SSID;
const char* password = IOT_CONFIG_WIFI_PASSWORD;

void init_wifi() {
  Serial.print("connecting to ");
  Serial.println(ssid);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  
  display.setCursor(74, TEXT_LN_6);
  display.print(WiFi.localIP());
  display.display();        // update the display
}

/**********************************  TIME  SETUP **********************************/
#define MIN_EPOCH (40 * 365 * 24 * 3600)

void init_time() {  
   time_t epochTime;

   configTime(0, 0, "pool.ntp.org", "time.nist.gov");

   while (true) {
       epochTime = time(NULL);

       if (epochTime < MIN_EPOCH) {
           Serial.println("Fetching NTP epoch time failed, will retry in 5 seconds...");
           delay(5000);
       } else {
           Serial.print("Fetched NTP epoch time: ");
           Serial.println(epochTime);
           break;
       }
   }
}

/********************************** I2C SCANNER  **********************************/
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

/**********************************  AZURE IOT   **********************************/
#include "Esp.h"
#include "AzureIoTProtocol_MQTT.h"
#include "iothubtransportmqtt.h"

static const char* connectionString = DEVICE_CONNECTION_STRING;
IOTHUB_CLIENT_TRANSPORT_PROVIDER protocol = MQTT_Protocol;
IOTHUB_DEVICE_CLIENT_LL_HANDLE device_ll_handle;
static int callbackCounter;
int receiveContext = 0;

void init_azure_iot() {
  // Create the iothub handle here
  device_ll_handle = IoTHubDeviceClient_LL_CreateFromConnectionString(connectionString, protocol);
  // Used to initialize IoTHub SDK subsystem
  (void)IoTHub_Init();
  
  Serial.println("Creating IoTHub Device handle");
  LogInfo("Creating IoTHub Device handle\r\n");
  if (device_ll_handle == NULL)
  {
      Serial.println("Error AZ002: Failure createing Iothub device. Hint: Check you connection string.");
      LogInfo("Error AZ002: Failure createing Iothub device. Hint: Check you connection string.\r\n");
      while(1);
  }
  
  // Set any option that are neccessary.
  // For available options please see the iothub_sdk_options.md documentation
  // turn off diagnostic sampling
  int diag_off=0;
  IoTHubDeviceClient_LL_SetOption(device_ll_handle, OPTION_DIAGNOSTIC_SAMPLING_PERCENTAGE, &diag_off);

  // Example sdk status tracing for troubleshooting
  bool traceOn = true;
  IoTHubDeviceClient_LL_SetOption(device_ll_handle, OPTION_LOG_TRACE, &traceOn);

  // Setting the Trusted Certificate.
  IoTHubDeviceClient_LL_SetOption(device_ll_handle, OPTION_TRUSTED_CERT, certificates);

  //Setting the auto URL Encoder (recommended for MQTT). Please use this option unless
  //you are URL Encoding inputs yourself.
  //ONLY valid for use with MQTT
  bool urlEncodeOn = true;
  IoTHubDeviceClient_LL_SetOption(device_ll_handle, OPTION_AUTO_URL_ENCODE_DECODE, &urlEncodeOn);
  /* Setting Message call back, so we can receive Commands. */
  if (IoTHubClient_LL_SetMessageCallback(device_ll_handle, receive_message_callback, &receiveContext) != IOTHUB_CLIENT_OK)
  {
      Serial.println("ERROR: IoTHubClient_LL_SetMessageCallback..........FAILED!");
      LogInfo("ERROR: IoTHubClient_LL_SetMessageCallback..........FAILED!\r\n");
  }

  // Setting connection status callback to get indication of connection to iothub
  (void)IoTHubDeviceClient_LL_SetConnectionStatusCallback(device_ll_handle, connection_status_callback, NULL);
}

void deinit_azure_iot() {
    if (device_ll_handle != NULL)
    {
        IoTHubDeviceClient_LL_Destroy(device_ll_handle);
    }
    // Free all the sdk subsystem
    IoTHub_Deinit();
}

int send_to_iot_hub(float temp, float humidity, float pressure, float evoc, float eco2) {
    time_t tm = time(NULL);
    String buf;
    buf += F("{\"epoch_time\":");
    buf += String(tm);
    buf += F(",\"temperature\":");
    buf += String(temp, 3);
    buf += F(",\"humidity\":");
    buf += String(humidity, 3);
    buf += F(",\"pressure\":");
    buf += String(pressure, 3);
    buf += F(",\"evoc\":");
    buf += String(evoc, 3);
    buf += F(",\"eco2\":");
    buf += String(eco2, 3);
    buf += F("}");
    Serial.println(buf);
    
    // Construct the iothub message from a string or a byte array
    IOTHUB_MESSAGE_HANDLE message_handle = IoTHubMessage_CreateFromString(buf.c_str());
    //IOTHUB_MESSAGE_HANDLE message_handle = IoTHubMessage_CreateFromByteArray(bufbytes, buf.length());

    (void)IoTHubMessage_SetContentTypeSystemProperty(message_handle, "application/json");

    IoTHubMessage_SetProperty(message_handle, "epoch_time", String(tm).c_str());
    
    // Set Message property
    /*(void)IoTHubMessage_SetMessageId(message_handle, "MSG_ID");
    (void)IoTHubMessage_SetCorrelationId(message_handle, "CORE_ID");
    (void)IoTHubMessage_SetContentEncodingSystemProperty(message_handle, "utf-8");*/

    Serial.print("Sending message to IoTHub...");
    LogInfo("Sending message to IoTHub\r\n");
    int result = IoTHubDeviceClient_LL_SendEventAsync(device_ll_handle, message_handle, send_confirm_callback, NULL);
    if (result == 0) {
      Serial.println("OK");
    } else {
      Serial.println(result, DEC);
    }
    // The message is copied to the sdk so the we can destroy it
    IoTHubMessage_Destroy(message_handle);

    IoTHubDeviceClient_LL_DoWork(device_ll_handle);
    ThreadAPI_Sleep(3);
    return result;
}

/* -- receive_message_callback --
 * Callback method which executes upon receipt of a message originating from the IoT Hub in the cloud. 
 * Note: Modifying the contents of this method allows one to command the device from the cloud. 
 */
static IOTHUBMESSAGE_DISPOSITION_RESULT receive_message_callback(IOTHUB_MESSAGE_HANDLE message, void* userContextCallback)
{
    int* counter = (int*)userContextCallback;
    const char* buffer;
    size_t size;
    MAP_HANDLE mapProperties;
    const char* messageId;

    // Message properties
    if ((messageId = IoTHubMessage_GetMessageId(message)) == NULL)
    {
        messageId = "<null>";
    }

    // Message content
    if (IoTHubMessage_GetByteArray(message, (const unsigned char**)&buffer, &size) != IOTHUB_MESSAGE_OK)
    {
        LogInfo("unable to retrieve the message data\r\n");
    }
    else
    {
        LogInfo("Received Message [%d]\r\n Message ID: %s\r\n Data: <<<%.*s>>> & Size=%d\r\n", *counter, messageId, (int)size, buffer, (int)size);
        // If we receive the work 'quit' then we stop running
        if (size == (strlen("quit") * sizeof(char)) && memcmp(buffer, "quit", size) == 0)
        {
            // quit
        }
    }

    /* Some device specific action code goes here... */
    (*counter)++;
    return IOTHUBMESSAGE_ACCEPTED;
}


/* -- send_confirm_callback --
 * Callback method which executes upon confirmation that a message originating from this device has been received by the IoT Hub in the cloud.
 */
static void send_confirm_callback(IOTHUB_CLIENT_CONFIRMATION_RESULT result, void* userContextCallback)
{
    (void)userContextCallback;
    // When a message is sent this callback will get envoked
    LogInfo("Confirm Callback");
    // LogInfo("Confirmation callback received for message %lu with result %s\r\n", (unsigned long)g_message_count_send_confirmations, MU_ENUM_TO_STRING(IOTHUB_CLIENT_CONFIRMATION_RESULT, result));
}

/* -- connection_status_callback --
 * Callback method which executes on receipt of a connection status message from the IoT Hub in the cloud.
 */
static void connection_status_callback(IOTHUB_CLIENT_CONNECTION_STATUS result, IOTHUB_CLIENT_CONNECTION_STATUS_REASON reason, void* user_context)
{
    (void)reason;
    (void)user_context;
    // This sample DOES NOT take into consideration network outages.
    if (result == IOTHUB_CLIENT_CONNECTION_AUTHENTICATED)
    {
        LogInfo("The device client is connected to iothub\r\n");
    }
    else
    {
        LogInfo("The device client has been disconnected\r\n");
    }
}

/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
/**********************************   STARTUP    **********************************/
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
  init_wifi();
  init_time();
  wdt_enable(5000);
  init_azure_iot();
}  // end of setup

/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
/**********************************  MAIN LOOP   **********************************/
void loop() {
  float temp = -1;
  float humi = -1;
  float pres = -1;
  float tvoc = -1;
  float eco2 = -1;
  
  // read temperature, humidity and pressure from the BME280 sensor
  temp = bme280.readTemperature();    // get temperature in degree Celsius
  // 1: print temperature
  display.setCursor(83, TEXT_LN_1);
  if(temp < 0)
    display.printf("-%02u.%02uC", (int)abs(temp) % 100, (int)(abs(temp) * 100) % 100 );
  else
    display.printf(" %02u.%02uC", (int)temp % 100, (int)(temp * 100) % 100 );
  // print degree symbols ( ° )
  display.drawRect(125, TEXT_LN_1, 3, 3, WHITE);

  
  humi = bme280.readHumidity();       // get humidity in rH%
  // 2: print humidity
  display.setCursor(93, TEXT_LN_2);
  display.printf("%02u.%02u%%", (int)humi, (int)(humi * 100) % 100 );


  pres = bme280.readPressure();       // get pressure in Pa
  // 3: print pressure
  display.setCursor(70, TEXT_LN_3);
  display.printf("%04u.%02uhPa", (int)(pres/100), (int)((uint32_t)pres % 100) );
  
  if(ccs.available()) {
    ccs.setEnvironmentalData((uint8_t)humi, (double)temp);
    if(!ccs.readData()){
      tvoc = ccs.getTVOC();           // get Volatile organic compound
      // 5: print Volatile organic compound
      display.setCursor(110, TEXT_LN_4);
      display.printf("%03u", (int)tvoc);
      
      eco2 = ccs.geteCO2();            // get eCO2
      // 4: print eCO2
      display.setCursor(86, TEXT_LN_5);
      display.printf("%04uppm", (int)eco2);
    }
    else{
      display.setCursor(70, TEXT_LN_4);
      Serial.println("ERROR!");
      display.setCursor(70, TEXT_LN_5);
      Serial.println("ERROR!");
    }
  }
 
  // update the display
  display.display();

  send_to_iot_hub(temp, humi, pres/100, tvoc, eco2);
 
  delay(60000);  // wait for a minute
}
