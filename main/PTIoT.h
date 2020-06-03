#ifndef PTIoT_H
#define PTIoT_H

#include <Esp.h>
#include <AzureIoTHub.h>
#include <AzureIoTProtocol_MQTT.h>
#include <iothubtransportmqtt.h>

#include "PTData.h"
#include "st_config.h"

void confirm_send(IOTHUB_CLIENT_CONFIRMATION_RESULT result, void *userContextCallback);
void confirm_connected(IOTHUB_CLIENT_CONNECTION_STATUS result, IOTHUB_CLIENT_CONNECTION_STATUS_REASON reason, void *user_context);
IOTHUBMESSAGE_DISPOSITION_RESULT message_received(IOTHUB_MESSAGE_HANDLE message, void *userContextCallback);

class PTIoT {
public:
    PTIoT();
    ~PTIoT();

    bool begin_batch();
    void end_batch();
    int send(PTSensorData * readings, unsigned int length);
    int get_messages_sent();
    void wait(int delay);
};
    
#endif
