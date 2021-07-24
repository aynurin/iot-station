# Nour Eggboard

This is a main board of a low-power battery powered IoT device controller based on ESP8266 (ESP-WROOM-02) that drives peripheral devices on I2C bus.

Currenly the project is under development and you can help in the following way:

* Suggest new features and report bugs
* Submit pull requests
* Help fund the development by [donating via PayPal](https://www.paypal.com/donate?business=M5DEYMX2BZ4MJ&no_recurring=0&item_name=Help+support+Nour+Eggboard+development&currency_code=USD)

## LICENSE

Currently this project is licensed as  [GNU AGPLv3](./LICENSE). This is intended to be changed to Apache or MIT when I get a better feel of the project and see how it moves forward. I would accept suggestions of a qualified lawyer as I need help figuring out how to move forward.

## How is this helpful

Most prototyping boards are exactly what they say - designed for prototyping and difficult to apply in a production device or if you are a hardcore hobbyist. Unlike those projects, the Eggboard is intended to be a final solution that lets you hook your peripherals to an I2C bus and enjoy a low-power battery operation, wireless charging, and WiFi connectivity out of the box.

Features:

* WiFi capability via ESP8266
* Own I2C port that allows I2C communication, sleep power line, ability to operate when host sleeps, and a host wakeup channel
* Customizable (via resistance change) sleep timer that drives the host and all of the peripherals
* Battery operation
* Wireless and USB-C charging
* USB-C programming via esptool or Arduino IDE (and other compatible IDEs and methods)

## Nour Egg Plant station

The example implementation is a Nour Egg plant ecosystem controller that is under development. This device is going to be commercially available for purchase in 2022 along with free downloadable app and a cloud-based analytics platform.

Key features of the Nour Egg:

* Monitor air quality, soil moisture, and lighting conditions of your home plant
* Low-power operation that runs for months on a single charge, and wireless charging
* WiFi connectivity to report statistics to the cloud and Nour Egg app
* Appealing look and feel in a nice shell and beautiful RGB light indicators

Implemented peripherals:

* Soil moisture sensor based on capacitance sensing using a coplanar capacitor probe
* Air quality sensor
* Light sensor
* LED indicators board driving 18 leds or 6 RGB leds

## Roadmap

The versioning works by bird names, e.g. see [WhatBird.com NA Birds by Size](https://www.whatbird.com/browse/attribute/birds_na_147/51/Size/):

| Milestone | Release Date | Focus |
|---|---|---|
| [Pine Siskin](https://github.com/aynurin/iot-station/milestone/1) | September 2021 | Hardware design |
| [Pygmy Nuthatch](https://github.com/aynurin/iot-station/milestone/2) | December 2021 | PoC Cloud and App |
| [Winter Wren](https://github.com/aynurin/iot-station/milestone/3) | March 2022 | Production feasible enclosure |
| [Hutton's Vireo](https://github.com/aynurin/iot-station/milestone/4) | June 2022 | Production feasible hardware, test board production |

