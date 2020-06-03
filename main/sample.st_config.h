// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

#ifndef IOT_CONFIGS_H
#define IOT_CONFIGS_H

/*
 * Create a copy of this file and rename it to st_config.h
 * Fill in the values below.
 * */

#define is_esp_board

/**
 * WiFi setup
 */
#define PT_WIFI_SSID            ""
#define PT_WIFI_PASSWORD        ""
#define PT_WIFI_TIMEOUT         60 * 1000 // 1 minute
#define PT_MESSAGES_PER_BATCH   5
#define PT_BATCH_DELAY_SEC      30
/**
 * IoT Hub Device Connection String setup
 * Find your Device Connection String by going to your Azure portal, creating (or navigating to) an IoT Hub, 
 * navigating to IoT Devices tab on the left, and creating (or selecting an existing) IoT Device. 
 * Then click on the named Device ID, and you will have able to copy the Primary or Secondary Device Connection String to this sample.
 */
#define DEVICE_CONNECTION_STRING    ""

// The protocol you wish to use should be uncommented
//
#define SAMPLE_MQTT
//#define SAMPLE_HTTP

#endif /* IOT_CONFIGS_H */
