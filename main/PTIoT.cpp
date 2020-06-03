
#include "PTIoT.h"

IOTHUB_DEVICE_CLIENT_LL_HANDLE __deviceHdl;
int __batchMessagesSent;
int __receiveContext = 0;

/* -- send_confirm_callback --
 * Callback method which executes upon confirmation that 
 * a message originating from this device has been received by the 
 * IoT Hub in the cloud.
 */
void confirm_send(IOTHUB_CLIENT_CONFIRMATION_RESULT result, void *userContextCallback)
{
  (void)userContextCallback;
  __batchMessagesSent += 1;
}

/* -- connection_status_callback --
 * Callback method which executes on receipt of a 
 * connection status message from the IoT Hub in the cloud.
 */
void confirm_connected(IOTHUB_CLIENT_CONNECTION_STATUS result, IOTHUB_CLIENT_CONNECTION_STATUS_REASON reason, void *user_context)
{
  (void)reason;
  (void)user_context;
  // This sample DOES NOT take into consideration network outages.
  if (result == IOTHUB_CLIENT_CONNECTION_AUTHENTICATED)
  {
    Serial.println("The device client is CONNECTED to IoTHub");
  }
  else
  {
    Serial.println("The device client has been DISCONNECTED");
  }
}

/* -- receive_message_callback --
 * Callback method which executes upon receipt of a message originating from the IoT Hub in the cloud. 
 * Note: Modifying the contents of this method allows one to command the device from the cloud. 
 */
IOTHUBMESSAGE_DISPOSITION_RESULT message_received(IOTHUB_MESSAGE_HANDLE message, void *userContextCallback)
{
  int *counter = (int *)userContextCallback;
  const char *buffer;
  size_t size;
  MAP_HANDLE mapProperties;
  const char *messageId;

  // Message properties
  if ((messageId = IoTHubMessage_GetMessageId(message)) == NULL)
  {
    messageId = "<null>";
  }

  // Message content
  if (IoTHubMessage_GetByteArray(message, (const unsigned char **)&buffer, &size) != IOTHUB_MESSAGE_OK)
  {
    Serial.println("unable to retrieve the message data");
  }
  else
  {
    Serial.print("Received Message ");
    Serial.println(*counter);
    Serial.print("Data: ");
    Serial.println(buffer);
    // LogInfo("Received Message [%d]\r\n Message ID: %s\r\n Data: <<<%.*s>>> & Size=%d\r\n", *counter, messageId, (int)size, buffer, (int)size);
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

PTIoT::PTIoT()
{ /*nothing to construct*/
}

//<<destructor>>
PTIoT::~PTIoT()
{ /*nothing to destruct*/
}

bool PTIoT::begin_batch()
{
  // Create the iothub handle here
  IOTHUB_DEVICE_CLIENT_LL_HANDLE hdl = IoTHubDeviceClient_LL_CreateFromConnectionString(DEVICE_CONNECTION_STRING, MQTT_Protocol);
  // Used to initialize IoTHub SDK subsystem
  (void)IoTHub_Init();

  Serial.println("Creating IoTHub Device handle");
  if (hdl == NULL)
  {
    Serial.println("Error AZ002: Failure createing Iothub device. Hint: Check you connection string.");
    while (1)
      ;
  }

  // Set any option that are neccessary.
  // For available options please see the iothub_sdk_options.md documentation
  // turn off diagnostic sampling
  int diag_off = 0;
  IoTHubDeviceClient_LL_SetOption(hdl, OPTION_DIAGNOSTIC_SAMPLING_PERCENTAGE, &diag_off);

  // Example sdk status tracing for troubleshooting
  bool traceOn = true;
  IoTHubDeviceClient_LL_SetOption(hdl, OPTION_LOG_TRACE, &traceOn);

  // Setting the Trusted Certificate.
  IoTHubDeviceClient_LL_SetOption(hdl, OPTION_TRUSTED_CERT, certificates);

  //Setting the auto URL Encoder (recommended for MQTT). Please use this option unless
  //you are URL Encoding inputs yourself.
  //ONLY valid for use with MQTT
  bool urlEncodeOn = true;
  IoTHubDeviceClient_LL_SetOption(hdl, OPTION_AUTO_URL_ENCODE_DECODE, &urlEncodeOn);

  int keepalive = 100;
  IoTHubDeviceClient_LL_SetOption(hdl, "keepalive", &keepalive);

  bool workOffline = false;

  /* Setting Message call back, so we can receive Commands. */
  if (IoTHubClient_LL_SetMessageCallback(hdl, message_received, &__receiveContext) != IOTHUB_CLIENT_OK)
  {
    Serial.println("ERROR: IoTHubClient_LL_SetMessageCallback..........FAILED!");
    workOffline = true;
  }

  // Setting connection status callback to get indication of connection to iothub
  if (IoTHubDeviceClient_LL_SetConnectionStatusCallback(hdl, confirm_connected, NULL) != IOTHUB_CLIENT_OK)
  {
    Serial.println("ERROR: IoTHubDeviceClient_LL_SetConnectionStatusCallback..........FAILED!");
    workOffline = true;
  }

  __deviceHdl = hdl;
  __batchMessagesSent = 0;
  return !workOffline;
}

void PTIoT::end_batch()
{
  if (__deviceHdl != NULL)
  {
    IoTHubDeviceClient_LL_Destroy(__deviceHdl);
  }
  // Free all the sdk subsystem
  IoTHub_Deinit();
}

int PTIoT::send(PTSensorData * readings, unsigned int length)
{
  time_t tm = time(NULL);
  String buf;
  buf += F("{\"epoch_time\":");
  buf += String(tm);

  for (unsigned int a = 0; a < length; a = a + 1)
  {
    buf += F(",\"");
    buf += SENSOR_NAMES[readings[a].sensor_id];
    buf += F("\":");
    buf += String(readings[a].value, 3);
  }

  buf += F("}");

  // Construct the iothub message from a string or a byte array
  IOTHUB_MESSAGE_HANDLE message_handle = IoTHubMessage_CreateFromString(buf.c_str());
  //IOTHUB_MESSAGE_HANDLE message_handle = IoTHubMessage_CreateFromByteArray(bufbytes, buf.length());

  (void)IoTHubMessage_SetContentTypeSystemProperty(message_handle, "application/json");

  IoTHubMessage_SetProperty(message_handle, "epoch_time", String(tm).c_str());

  // Set Message property
  /*(void)IoTHubMessage_SetMessageId(message_handle, "MSG_ID");
    (void)IoTHubMessage_SetCorrelationId(message_handle, "CORE_ID");
    (void)IoTHubMessage_SetContentEncodingSystemProperty(message_handle, "utf-8");*/

  int result = IoTHubDeviceClient_LL_SendEventAsync(__deviceHdl, message_handle, confirm_send, NULL);

  // The message is copied to the sdk so the we can destroy it
  IoTHubMessage_Destroy(message_handle);

  IoTHubDeviceClient_LL_DoWork(__deviceHdl);
  ThreadAPI_Sleep(3);
  Serial.println(buf);
  return result;
}

int PTIoT::get_messages_sent() {
  return __batchMessagesSent;
}

void PTIoT::wait(int ms)
{
  unsigned long time_now = millis();
  while (millis() < time_now + ms)
  {
    delay(100);
  }
}