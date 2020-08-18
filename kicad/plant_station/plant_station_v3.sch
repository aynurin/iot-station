EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 611E169D
P 10550 800
F 0 "#FLG0101" H 10550 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 973 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "~" H 10550 800 50  0001 C CNN
	1    10550 800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 611E1B09
P 10950 800
F 0 "#FLG0102" H 10950 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10950 973 50  0000 C CNN
F 2 "" H 10950 800 50  0001 C CNN
F 3 "~" H 10950 800 50  0001 C CNN
	1    10950 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 611E3051
P 10950 800
F 0 "#PWR0134" H 10950 550 50  0001 C CNN
F 1 "GND" H 10955 627 50  0000 C CNN
F 2 "" H 10950 800 50  0001 C CNN
F 3 "" H 10950 800 50  0001 C CNN
	1    10950 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0133
U 1 1 611E24F6
P 10550 800
F 0 "#PWR0133" H 10550 650 50  0001 C CNN
F 1 "+3V3" H 10565 973 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "" H 10550 800 50  0001 C CNN
	1    10550 800 
	-1   0    0    1   
$EndComp
Text Notes 2200 1650 0    50   ~ 0
usb breakout\n+tantalum decouplers\n+fix the probe\nleds board + ambient leds\nsensor board\noscillator???\n-look for a different humidity sensor\nstack boards\n+power schematics\n+analog VCC on ADC\n+sleep/wake bus
Text Label 7700 2350 2    50   ~ 0
HOST_WAKE
$Sheet
S 7700 2150 900  800 
U 5F564838
F0 "esp8266" 50
F1 "esp8266_wiring.sch" 50
F2 "SDA" B R 8600 2250 50 
F3 "SCL" O R 8600 2350 50 
F4 "ALL_EN" B L 7700 2450 50 
F5 "HOST_WAKE_UP" I L 7700 2350 50 
$EndSheet
Text Label 850  7050 1    50   ~ 0
SDA
Text Label 950  7050 1    50   ~ 0
SCL
$Comp
L power:GND #PWR0140
U 1 1 5FCFC642
P 1150 7050
F 0 "#PWR0140" H 1150 6800 50  0001 C CNN
F 1 "GND" V 1150 6850 50  0000 C CNN
F 2 "" H 1150 7050 50  0001 C CNN
F 3 "" H 1150 7050 50  0001 C CNN
	1    1150 7050
	-1   0    0    1   
$EndComp
Text Label 8600 2350 0    50   ~ 0
SCL
Text Label 8600 2250 0    50   ~ 0
SDA
Text Label 1400 7050 1    50   ~ 0
SDA
Text Label 1500 7050 1    50   ~ 0
SCL
$Comp
L power:GND #PWR0138
U 1 1 5FB01C12
P 1700 7050
F 0 "#PWR0138" H 1700 6800 50  0001 C CNN
F 1 "GND" V 1700 6850 50  0000 C CNN
F 2 "" H 1700 7050 50  0001 C CNN
F 3 "" H 1700 7050 50  0001 C CNN
	1    1700 7050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 5FAF3653
P 1600 7250
F 0 "J10" V 1600 6850 50  0000 L CNN
F 1 "I2C HOST" V 1750 7000 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1600 7250 50  0001 C CNN
F 3 "~" H 1600 7250 50  0001 C CNN
F 4 "Samtec SLW-104-01-T-S" V 1600 7250 50  0001 C CNN "Field4"
	1    1600 7250
	0    1    1    0   
$EndComp
$Sheet
S 4550 6850 900  550 
U 60DE59F5
F0 "moisture_sensor" 50
F1 "moisture_sensor.sch" 50
$EndSheet
$Comp
L power:GND #PWR01
U 1 1 6027ED70
P 1500 2350
F 0 "#PWR01" H 1500 2100 50  0001 C CNN
F 1 "GND" V 1505 2222 50  0000 R CNN
F 2 "" H 1500 2350 50  0001 C CNN
F 3 "" H 1500 2350 50  0001 C CNN
	1    1500 2350
	0    1    1    0   
$EndComp
Text Label 1500 2550 2    50   ~ 0
SDA
Text Label 1500 2650 2    50   ~ 0
SCL
Text Label 7700 2450 2    50   ~ 0
ALL_EN
Text Label 1300 2850 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D6
U 1 1 603E1FEA
P 1400 2850
F 0 "D6" H 1300 2800 50  0000 C CNN
F 1 "LS4148" H 1400 2966 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 1400 2850 50  0001 C CNN
F 3 "~" V 1400 2850 50  0001 C CNN
	1    1400 2850
	-1   0    0    1   
$EndComp
Text Label 1500 2750 2    50   ~ 0
HOST_WAKE
$Comp
L power:GND #PWR09
U 1 1 60493E6F
P 3050 2350
F 0 "#PWR09" H 3050 2100 50  0001 C CNN
F 1 "GND" V 3055 2222 50  0000 R CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	0    1    1    0   
$EndComp
Text Label 3050 2550 2    50   ~ 0
SDA
Text Label 3050 2650 2    50   ~ 0
SCL
Text Label 2850 2850 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D8
U 1 1 60493E7E
P 2950 2850
F 0 "D8" H 2850 2800 50  0000 C CNN
F 1 "LS4148" H 2950 2966 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 2950 2850 50  0001 C CNN
F 3 "~" V 2950 2850 50  0001 C CNN
	1    2950 2850
	-1   0    0    1   
$EndComp
Text Label 3050 2750 2    50   ~ 0
HOST_WAKE
$Comp
L power:GND #PWR011
U 1 1 60496837
P 3050 3300
F 0 "#PWR011" H 3050 3050 50  0001 C CNN
F 1 "GND" V 3055 3172 50  0000 R CNN
F 2 "" H 3050 3300 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	0    1    1    0   
$EndComp
Text Label 3050 3500 2    50   ~ 0
SDA
Text Label 3050 3600 2    50   ~ 0
SCL
Text Label 2850 3800 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D9
U 1 1 60496846
P 2950 3800
F 0 "D9" H 2850 3750 50  0000 C CNN
F 1 "LS4148" H 2950 3916 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 2950 3800 50  0001 C CNN
F 3 "~" V 2950 3800 50  0001 C CNN
	1    2950 3800
	-1   0    0    1   
$EndComp
Text Label 3050 3700 2    50   ~ 0
HOST_WAKE
$Sheet
S 3550 6850 900  550 
U 605E9160
F0 "env_sensor" 50
F1 "env_sensor.sch" 50
$EndSheet
$Sheet
S 5600 6850 900  550 
U 601A2964
F0 "leds" 50
F1 "leds.sch" 50
$EndSheet
$Sheet
S 2550 6850 900  550 
U 5F48275C
F0 "usb_serial" 50
F1 "usb_serial.sch" 50
$EndSheet
$Comp
L power:VDD #PWR04
U 1 1 5F9FB72E
P 1500 2450
F 0 "#PWR04" H 1500 2300 50  0001 C CNN
F 1 "VDD" V 1515 2577 50  0000 L CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR018
U 1 1 5F9FBF52
P 3050 2450
F 0 "#PWR018" H 3050 2300 50  0001 C CNN
F 1 "VDD" V 3065 2577 50  0000 L CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR021
U 1 1 5F9FC6B2
P 3050 3400
F 0 "#PWR021" H 3050 3250 50  0001 C CNN
F 1 "VDD" V 3065 3527 50  0000 L CNN
F 2 "" H 3050 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0001 C CNN
	1    3050 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR012
U 1 1 5FA09D29
P 1600 7050
F 0 "#PWR012" H 1600 6900 50  0001 C CNN
F 1 "VDD" V 1600 7250 50  0000 C CNN
F 2 "" H 1600 7050 50  0001 C CNN
F 3 "" H 1600 7050 50  0001 C CNN
	1    1600 7050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FAB0070
P 10150 800
F 0 "#FLG01" H 10150 875 50  0001 C CNN
F 1 "PWR_FLAG" H 10150 973 50  0000 C CNN
F 2 "" H 10150 800 50  0001 C CNN
F 3 "~" H 10150 800 50  0001 C CNN
	1    10150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR027
U 1 1 5FAB03BE
P 10150 800
F 0 "#PWR027" H 10150 650 50  0001 C CNN
F 1 "VDD" H 10165 973 50  0000 C CNN
F 2 "" H 10150 800 50  0001 C CNN
F 3 "" H 10150 800 50  0001 C CNN
	1    10150 800 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5FCFC63C
P 1050 7250
F 0 "J9" V 1050 6850 50  0000 L CNN
F 1 "I2C SCREEN" V 1200 6950 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1050 7250 50  0001 C CNN
F 3 "~" H 1050 7250 50  0001 C CNN
F 4 "Samtec SLW-104-01-T-S" V 1050 7250 50  0001 C CNN "Field4"
	1    1050 7250
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5FAB4B8A
P 1050 7050
F 0 "#PWR02" H 1050 6900 50  0001 C CNN
F 1 "VDD" V 1050 7250 50  0000 C CNN
F 2 "" H 1050 7050 50  0001 C CNN
F 3 "" H 1050 7050 50  0001 C CNN
	1    1050 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F3DEF4D
P 1500 4250
F 0 "#PWR05" H 1500 4000 50  0001 C CNN
F 1 "GND" V 1505 4122 50  0000 R CNN
F 2 "" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	0    1    1    0   
$EndComp
Text Label 1500 4450 2    50   ~ 0
SDA
Text Label 1500 4550 2    50   ~ 0
SCL
Text Label 1300 4750 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D12
U 1 1 5F3DEF56
P 1400 4750
F 0 "D12" H 1300 4700 50  0000 C CNN
F 1 "LS4148" H 1400 4866 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 1400 4750 50  0001 C CNN
F 3 "~" V 1400 4750 50  0001 C CNN
	1    1400 4750
	-1   0    0    1   
$EndComp
Text Label 1500 4650 2    50   ~ 0
HOST_WAKE
$Comp
L Parts:505567-0671 J4
U 1 1 5F3DEF65
P 1500 4250
F 0 "J4" H 1950 4515 50  0000 C CNN
F 1 "MB_I2C" H 1950 4424 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 2250 4350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 2250 4250 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 2250 4150 50  0001 L CNN "Description"
F 5 "4.2" H 2250 4050 50  0001 L CNN "Height"
F 6 "Molex" H 2250 3950 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 2250 3850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 2250 3750 50  0001 L CNN "Arrow Part Number"
F 9 "" H 2250 3650 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 2250 3550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 2250 3450 50  0001 L CNN "Mouser Price/Stock"
	1    1500 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F3DEF6D
P 3050 4250
F 0 "#PWR08" H 3050 4000 50  0001 C CNN
F 1 "GND" V 3055 4122 50  0000 R CNN
F 2 "" H 3050 4250 50  0001 C CNN
F 3 "" H 3050 4250 50  0001 C CNN
	1    3050 4250
	0    1    1    0   
$EndComp
Text Label 3050 4450 2    50   ~ 0
SDA
Text Label 3050 4550 2    50   ~ 0
SCL
Text Label 2850 4750 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D13
U 1 1 5F3DEF76
P 2950 4750
F 0 "D13" H 2850 4700 50  0000 C CNN
F 1 "LS4148" H 2950 4866 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 2950 4750 50  0001 C CNN
F 3 "~" V 2950 4750 50  0001 C CNN
	1    2950 4750
	-1   0    0    1   
$EndComp
Text Label 3050 4650 2    50   ~ 0
HOST_WAKE
$Comp
L Parts:505567-0671 J13
U 1 1 5F3DEF85
P 3050 4250
F 0 "J13" H 3500 4515 50  0000 C CNN
F 1 "MB_I2C" H 3500 4424 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 3800 4350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 3800 4250 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 3800 4150 50  0001 L CNN "Description"
F 5 "4.2" H 3800 4050 50  0001 L CNN "Height"
F 6 "Molex" H 3800 3950 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 3800 3850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 3800 3750 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3800 3650 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 3800 3550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 3800 3450 50  0001 L CNN "Mouser Price/Stock"
	1    3050 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR06
U 1 1 5F3DEF8D
P 1500 4350
F 0 "#PWR06" H 1500 4200 50  0001 C CNN
F 1 "VDD" V 1515 4477 50  0000 L CNN
F 2 "" H 1500 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR010
U 1 1 5F3DEF93
P 3050 4350
F 0 "#PWR010" H 3050 4200 50  0001 C CNN
F 1 "VDD" V 3065 4477 50  0000 L CNN
F 2 "" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    3050 4350
	0    -1   -1   0   
$EndComp
$Comp
L Parts:505567-0671 J2
U 1 1 6045DC89
P 1500 2350
F 0 "J2" H 1950 2615 50  0000 C CNN
F 1 "MB_I2C" H 1950 2524 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 2250 2450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 2250 2350 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 2250 2250 50  0001 L CNN "Description"
F 5 "4.2" H 2250 2150 50  0001 L CNN "Height"
F 6 "Molex" H 2250 2050 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 2250 1950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 2250 1850 50  0001 L CNN "Arrow Part Number"
F 9 "" H 2250 1750 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 2250 1650 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 2250 1550 50  0001 L CNN "Mouser Price/Stock"
	1    1500 2350
	1    0    0    -1  
$EndComp
$Comp
L Parts:505567-0671 J5
U 1 1 60493E8D
P 3050 2350
F 0 "J5" H 3500 2615 50  0000 C CNN
F 1 "MB_I2C" H 3500 2524 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 3800 2450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 3800 2350 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 3800 2250 50  0001 L CNN "Description"
F 5 "4.2" H 3800 2150 50  0001 L CNN "Height"
F 6 "Molex" H 3800 2050 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 3800 1950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 3800 1850 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3800 1750 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 3800 1650 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 3800 1550 50  0001 L CNN "Mouser Price/Stock"
	1    3050 2350
	1    0    0    -1  
$EndComp
$Comp
L Parts:505567-0671 J6
U 1 1 60496855
P 3050 3300
F 0 "J6" H 3500 3565 50  0000 C CNN
F 1 "MB_I2C" H 3500 3474 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 3800 3400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 3800 3300 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 3800 3200 50  0001 L CNN "Description"
F 5 "4.2" H 3800 3100 50  0001 L CNN "Height"
F 6 "Molex" H 3800 3000 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 3800 2900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 3800 2800 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3800 2700 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 3800 2600 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 3800 2500 50  0001 L CNN "Mouser Price/Stock"
	1    3050 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3950 2350
NoConn ~ 3950 2450
NoConn ~ 3950 3300
NoConn ~ 3950 3400
NoConn ~ 3950 4250
NoConn ~ 3950 4350
NoConn ~ 2400 4350
NoConn ~ 2400 4250
NoConn ~ 2400 2450
NoConn ~ 2400 2350
$EndSCHEMATC
