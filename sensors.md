# Sensors overview

## Temperature:

BME280  -40- +85°C / ?
LM35    −55-+150°C / ±0.5°C
SHT20   -40-+125°C / ±0.3°C
SHT21   -40-+125°C / ±0.3°C
SHT25   -40-+125°C / ±0.2°C
DS18B20 -55-+125°C / ±0.5°C
DHT22   -40- +80°C / ±0.5°C
DHT11     0- +50°C / ±2°C       --
HDC1080

## Humidity:

BME280  0-100% RH / 3%
DHT11   20-80% / 5%
DHT22   0-100% / 2-5%
SHT20   0-100% RH / 3%
SHT21 	0-100% RH / 2%
SHT25	0-100% RH / 1.8%
HDC1080

## Pressure:

BME280  300-1100 Pa / 0.2 Pa

## Params

        Interface   Price @ 1000    Resolution  Energy  Manufacturer    Datasheet
BME280  I2C         $2.52           3.4 MHz     3.6μA
SHT20   I2C         $6.00           8 sec       3.2µW   sensirion
SHT21   I2C                         8 sec       3.2µW   sensirion
SHT25   I2C                         8 sec       3.2µW   sensirion
DHT11   PWM                         1 Hz                Unknown
DHT22   PWM                         0.5 Hz              Unknown
LM35    PWM                                     60-μA   TI
DS18B20 PWM                                             maximintegrated
HDC1080 I2C                                     1.3 μA  TI

AM2302=DHT22

## Info

BME280: Humidity sensor measuring relative humidity, barometric pressure and ambient temperature 
HDC1080: Low Power,High AccuracyDigitalHumiditySensorwith TemperatureSensor