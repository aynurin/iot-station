EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L RF_Module:ESP-WROOM-02 U1
U 1 1 5F56E2A3
P 6350 2350
F 0 "U1" H 6450 3000 50  0000 C CNN
F 1 "ESP-WROOM-02" H 6700 2900 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 6950 1800 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 6400 3850 50  0001 C CNN
	1    6350 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR017
U 1 1 5F58E4CD
P 6350 1650
F 0 "#PWR017" H 6350 1500 50  0001 C CNN
F 1 "+3V3" H 6365 1823 50  0000 C CNN
F 2 "" H 6350 1650 50  0001 C CNN
F 3 "" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F5BD3EE
P 6350 3050
F 0 "#PWR020" H 6350 2800 50  0001 C CNN
F 1 "GND" H 6355 2877 50  0000 C CNN
F 2 "" H 6350 3050 50  0001 C CNN
F 3 "" H 6350 3050 50  0001 C CNN
	1    6350 3050
	1    0    0    -1  
$EndComp
Text Label 6850 2250 0    50   ~ 0
READY_TO_SLEEP
Text Label 6850 2650 0    50   ~ 0
GPIO15
Text Label 3350 2100 0    50   ~ 0
ESP_RST
$Comp
L Device:C C?
U 1 1 5FE1427F
P 3050 2100
AR Path="/60DE59F5/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5F564838/5FE1427F" Ref="C2"  Part="1" 
F 0 "C2" V 3200 2150 50  0000 L CNN
F 1 "0.1μF" V 3100 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3088 1950 50  0001 C CNN
F 3 "~" H 3050 2100 50  0001 C CNN
	1    3050 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FE14279
P 4150 2100
F 0 "R1" V 4050 2000 50  0000 L CNN
F 1 "10K" V 4150 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 2100 50  0001 C CNN
F 3 "~" H 4150 2100 50  0001 C CNN
	1    4150 2100
	0    1    1    0   
$EndComp
Text Notes 3600 3400 0    50   ~ 0
Config
Text Label 6850 2150 0    50   ~ 0
ALL_EN
Text Label 3200 2600 0    50   ~ 0
GPIO15
$Comp
L Device:R R?
U 1 1 5F2D9143
P 4150 2350
AR Path="/5F2D9143" Ref="R?"  Part="1" 
AR Path="/5F564838/5F2D9143" Ref="R4"  Part="1" 
F 0 "R4" V 4050 2250 50  0000 L CNN
F 1 "10K" V 4150 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 2350 50  0001 C CNN
F 3 "~" H 4150 2350 50  0001 C CNN
	1    4150 2350
	0    1    1    0   
$EndComp
Text Label 4000 2350 2    50   ~ 0
BOOT_MODE
$Comp
L Device:CP C1
U 1 1 5F49AC3D
P 3500 1850
F 0 "C1" V 3245 1850 50  0000 C CNN
F 1 "220uF" V 3336 1850 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3538 1700 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	0    1    1    0   
$EndComp
Text Label 6850 2750 0    50   ~ 0
GPIO16
Text Label 8950 2100 2    50   ~ 0
SCL
Text Label 8950 2300 2    50   ~ 0
ALL_EN
Text Label 8950 2200 2    50   ~ 0
HOST_WAKE_UP
Text Label 3200 2850 0    50   ~ 0
HOST_WAKE_UP
Text HLabel 8950 2200 2    50   Input ~ 0
HOST_WAKE_UP
Text HLabel 8950 2300 2    50   Output ~ 0
ALL_EN
NoConn ~ 5850 2250
$Comp
L power:GND #PWR019
U 1 1 618B8B9F
P 2700 3050
F 0 "#PWR019" H 2700 2800 50  0001 C CNN
F 1 "GND" H 2705 2877 50  0000 C CNN
F 2 "" H 2700 3050 50  0001 C CNN
F 3 "" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 618B9C58
P 4500 1650
F 0 "#PWR016" H 4500 1500 50  0001 C CNN
F 1 "+3V3" H 4515 1823 50  0000 C CNN
F 2 "" H 4500 1650 50  0001 C CNN
F 3 "" H 4500 1650 50  0001 C CNN
	1    4500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2100 4500 2100
Wire Wire Line
	2900 2100 2700 2100
Wire Wire Line
	2900 2600 2700 2600
Wire Wire Line
	2900 2850 2700 2850
Wire Wire Line
	4300 2350 4500 2350
Connection ~ 4500 2350
Wire Wire Line
	4500 2350 4500 2100
Connection ~ 2700 2100
Connection ~ 4500 2100
Wire Wire Line
	2700 1850 2700 2100
Connection ~ 4500 1850
Wire Wire Line
	4500 1850 4500 2100
Wire Wire Line
	4500 1650 4500 1850
Text Label 6850 2550 0    50   ~ 0
SCL
Text HLabel 8950 2100 2    50   Output ~ 0
SCL
Text Label 8950 2000 2    50   ~ 0
SDA
Text HLabel 8950 2700 2    50   Input ~ 0
UART_TXD
Text HLabel 8950 2800 2    50   Output ~ 0
UART_RXD
Text HLabel 8950 2600 2    50   Input ~ 0
CHIP_RESET
Text HLabel 8950 2500 2    50   Input ~ 0
BOOT_MODE
Text HLabel 8950 2400 2    50   Output ~ 0
BATT_GAUGE_SHDN
$Comp
L Device:R R?
U 1 1 5F95CF4F
P 4150 2600
AR Path="/5F95CF4F" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF4F" Ref="R6"  Part="1" 
F 0 "R6" V 4050 2500 50  0000 L CNN
F 1 "4K7" V 4150 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 2600 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F95CF55
P 4150 2850
AR Path="/5F95CF55" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF55" Ref="R8"  Part="1" 
F 0 "R8" V 4050 2750 50  0000 L CNN
F 1 "4K7" V 4150 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 2850 50  0001 C CNN
F 3 "~" H 4150 2850 50  0001 C CNN
	1    4150 2850
	0    1    1    0   
$EndComp
Text Label 4000 2600 2    50   ~ 0
SDA
Text Label 4000 2850 2    50   ~ 0
SCL
Wire Wire Line
	4500 2850 4300 2850
Wire Wire Line
	4300 2600 4500 2600
Wire Wire Line
	4500 2350 4500 2600
Wire Wire Line
	4500 2600 4500 2850
Connection ~ 4500 2600
Text Label 4400 6200 0    50   ~ 0
READY_TO_SLEEP
Text Label 6550 5750 0    50   ~ 0
HOST_WAKE_UP
Text Label 4600 5850 0    50   ~ 0
SYS_EN_DRV
Text Notes 4400 6950 0    50   ~ 0
System Sleep Timer
Wire Wire Line
	4250 6200 4400 6200
Wire Wire Line
	2900 5950 3050 5950
Connection ~ 2900 5950
Wire Wire Line
	2700 5950 2900 5950
Wire Wire Line
	3650 6350 3650 6450
Wire Wire Line
	2900 6050 2900 5950
Wire Wire Line
	2700 5950 2700 6050
$Comp
L power:+3V3 #PWR022
U 1 1 619FA10B
P 3650 4950
F 0 "#PWR022" H 3650 4800 50  0001 C CNN
F 1 "+3V3" H 3665 5123 50  0000 C CNN
F 2 "" H 3650 4950 50  0001 C CNN
F 3 "" H 3650 4950 50  0001 C CNN
	1    3650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5950 4250 6200
Wire Wire Line
	4150 5950 4250 5950
$Comp
L power:GND #PWR027
U 1 1 5F7D7D75
P 3650 6450
F 0 "#PWR027" H 3650 6200 50  0001 C CNN
F 1 "GND" H 3655 6277 50  0000 C CNN
F 2 "" H 3650 6450 50  0001 C CNN
F 3 "" H 3650 6450 50  0001 C CNN
	1    3650 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F7DFB68
P 3800 5200
F 0 "C4" V 3550 5200 50  0000 C CNN
F 1 "0.1uF" V 3650 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3838 5050 50  0001 C CNN
F 3 "~" H 3800 5200 50  0001 C CNN
F 4 "Short Traces" V 3950 5300 50  0000 C CNN "Note"
	1    3800 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4950 3650 5200
Connection ~ 3650 5200
Wire Wire Line
	3650 5200 3650 5450
$Comp
L power:GND #PWR023
U 1 1 5F7ECA85
P 3950 4950
F 0 "#PWR023" H 3950 4700 50  0001 C CNN
F 1 "GND" H 3955 4777 50  0000 C CNN
F 2 "" H 3950 4950 50  0001 C CNN
F 3 "" H 3950 4950 50  0001 C CNN
	1    3950 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 4950 3950 5200
Wire Wire Line
	3650 5200 2900 5200
Wire Wire Line
	2900 5850 3050 5850
$Comp
L power:GND #PWR026
U 1 1 5F7FBED9
P 2800 6450
F 0 "#PWR026" H 2800 6200 50  0001 C CNN
F 1 "GND" V 2805 6322 50  0000 R CNN
F 2 "" H 2800 6450 50  0001 C CNN
F 3 "" H 2800 6450 50  0001 C CNN
	1    2800 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F800035
P 2700 6200
F 0 "R12" H 2600 6350 50  0000 C CNN
F 1 "16.9K" V 2700 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 6200 50  0001 C CNN
F 3 "~" H 2700 6200 50  0001 C CNN
F 4 "Short Traces" V 2500 6200 50  0000 C CNN "Note"
	1    2700 6200
	1    0    0    -1  
$EndComp
Text Notes 2000 7300 0    50   ~ 0
Tip=20s, Rext=14.41K (16.9 / 97.6)\nTip=20m, Rext=77.57K (140.0 / 174.0)\n\nuC must drive GPIO5 UP when it finishes \nand ready to go to sleep (DS 8.3.2)
$Comp
L Device:R R13
U 1 1 5F850A50
P 2900 6200
F 0 "R13" H 2800 6350 50  0000 C CNN
F 1 "97.6K" V 2900 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 6200 50  0001 C CNN
F 3 "~" H 2900 6200 50  0001 C CNN
F 4 "Short Traces" V 3000 6200 50  0000 C CNN "Note"
	1    2900 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5200 2900 5850
Wire Wire Line
	2700 6350 2800 6350
Connection ~ 2800 6350
Wire Wire Line
	2800 6350 2900 6350
Wire Wire Line
	2800 6350 2800 6450
Text Notes 1800 5100 0    50   ~ 0
TODO: Figure out how to do that. \nSee TPL5110 7.5.2.2 for details.\n\n1. Avoid dirty current on DELAY/M_DRV \nto ensure clean reading of the resistance.\n2. See if we need to convert a driven up \nWAKE_UP to a short impulse? I don't \nthink it's necessary.\n\nGPIO16 can be connected to WAKE_UP.\nIf uC wants to stay awake - it pulls it \nso the timer keeps driving power.\nUseful for e.g. setting up or OTA.
Text Notes 4250 4450 0    50   ~ 0
Questions:\nShould we drive ESP_EN using the timer, \nor the entire power plane?\nWhat if we ground a pulled up ALL_EN?\nWhat is the power consumption of a single resistor? \nI.e., VDD - R - GND scheme if we pull down ALL_EN using the timer
Text Notes 4700 5750 0    25   ~ 0
ACTIVE LOW
Text Notes 6150 3400 0    50   ~ 0
ESP8266
Wire Wire Line
	6350 1650 6350 1750
Wire Wire Line
	6350 2950 6350 3050
Text Label 5850 1950 2    50   ~ 0
SYS_EN
Text HLabel 8950 2000 2    50   BiDi ~ 0
SDA
Text Label 6850 2050 0    50   ~ 0
SDA
Text Label 8950 2500 2    50   ~ 0
BOOT_MODE
Text Label 6850 1950 0    50   ~ 0
BOOT_MODE
Text Label 5850 2050 2    50   ~ 0
CHIP_RESET
Text Label 8950 2600 2    50   ~ 0
CHIP_RESET
Text Label 8950 2700 2    50   ~ 0
UART_TXD
Text Label 5850 2450 2    50   ~ 0
UART_TXD
Text Label 8950 2800 2    50   ~ 0
UART_RXD
Text Label 5850 2550 2    50   ~ 0
UART_RXD
Text Label 8950 2400 2    50   ~ 0
BATT_GAUGE_SHDN
Text Label 6850 2350 0    50   ~ 0
BATT_GAUGE_SHDN
Wire Wire Line
	4150 5850 5350 5850
$Comp
L power:+3V3 #PWR024
U 1 1 610C1912
P 5100 4950
F 0 "#PWR024" H 5100 4800 50  0001 C CNN
F 1 "+3V3" H 5115 5123 50  0000 C CNN
F 2 "" H 5100 4950 50  0001 C CNN
F 3 "" H 5100 4950 50  0001 C CNN
	1    5100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5500 5100 5500
Text Label 6550 5500 0    50   ~ 0
SYS_EN
Wire Wire Line
	5350 6100 5100 6100
Wire Wire Line
	5100 6100 5100 5500
Text Label 6550 6100 0    50   ~ 0
TPL_MDRV
Text Label 2700 5950 0    50   ~ 0
TPL_MDRV
$Comp
L Device:R R11
U 1 1 5F58F54F
P 5100 5200
F 0 "R11" V 5000 5150 50  0000 L CNN
F 1 "10K" V 5100 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 5200 50  0001 C CNN
F 3 "~" H 5100 5200 50  0001 C CNN
	1    5100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4950 5100 5050
Wire Wire Line
	5100 5350 5100 5500
Connection ~ 5100 5500
$Comp
L Parts:SSM6L40TU U2
U 1 1 610AF8EB
P 5950 5800
F 0 "U2" H 5950 5150 60  0000 C CNN
F 1 "SSM6L40TU" H 5950 5250 60  0000 C CNN
F 2 "Parts:SSM6L40TU" H 7200 7800 60  0001 C CNN
F 3 "" H 6600 7550 60  0000 C CNN
	1    5950 5800
	-1   0    0    1   
$EndComp
$Comp
L Timer:TPL5110 U3
U 1 1 5F7D3440
P 3650 5850
F 0 "U3" H 3350 6300 50  0000 C CNN
F 1 "TPL5110" H 3350 6200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3650 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpl5110.pdf" H 3450 5450 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 610F8C2E
P 3050 2350
AR Path="/60DE59F5/610F8C2E" Ref="C?"  Part="1" 
AR Path="/610F8C2E" Ref="C?"  Part="1" 
AR Path="/5F564838/610F8C2E" Ref="C3"  Part="1" 
F 0 "C3" V 3200 2400 50  0000 L CNN
F 1 "0.1μF" V 3100 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3088 2200 50  0001 C CNN
F 3 "~" H 3050 2350 50  0001 C CNN
	1    3050 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F53A6CA
P 3050 2850
F 0 "R7" V 3150 2850 50  0000 L CNN
F 1 "10K" V 3050 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6033FDF8
P 3050 2600
AR Path="/6033FDF8" Ref="R?"  Part="1" 
AR Path="/5F564838/6033FDF8" Ref="R5"  Part="1" 
F 0 "R5" V 3150 2550 50  0000 L CNN
F 1 "10K" V 3050 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 2600 50  0001 C CNN
F 3 "~" H 3050 2600 50  0001 C CNN
	1    3050 2600
	0    -1   -1   0   
$EndComp
Connection ~ 2700 2600
Connection ~ 2700 2850
Wire Wire Line
	2700 2850 2700 3050
Wire Wire Line
	2700 2100 2700 2350
Wire Wire Line
	2700 2600 2700 2850
Text Label 3200 2350 0    50   ~ 0
SYS_EN
Wire Wire Line
	2900 2350 2700 2350
Connection ~ 2700 2350
Wire Wire Line
	2700 2350 2700 2600
Wire Wire Line
	3200 2100 4000 2100
Wire Wire Line
	3650 1850 4500 1850
Wire Wire Line
	2700 1850 3350 1850
NoConn ~ 6850 2750
$Comp
L Device:LED D3
U 1 1 61089518
P 1600 2500
F 0 "D3" V 1665 2382 50  0000 R CNN
F 1 "LED" V 1574 2382 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1600 2500 50  0001 C CNN
F 3 "~" H 1600 2500 50  0001 C CNN
F 4 "PWR" V 1502 2382 25  0000 R CNN "Note"
	1    1600 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6108B46C
P 1250 2500
F 0 "D2" V 1315 2382 50  0000 R CNN
F 1 "LED" V 1224 2382 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1250 2500 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
F 4 "SYS_EN" V 1152 2382 25  0000 R CNN "Note"
	1    1250 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6108BF5E
P 1250 2200
F 0 "R2" H 1180 2154 50  0000 R CNN
F 1 "2K" H 1180 2245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 2200 50  0001 C CNN
F 3 "~" H 1250 2200 50  0001 C CNN
	1    1250 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6108C6D1
P 1600 2200
F 0 "R3" H 1530 2154 50  0000 R CNN
F 1 "2K" H 1530 2245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 2200 50  0001 C CNN
F 3 "~" H 1600 2200 50  0001 C CNN
	1    1600 2200
	-1   0    0    1   
$EndComp
Text Label 1250 1700 1    50   ~ 0
SYS_EN
$Comp
L power:+3V3 #PWR015
U 1 1 6109988C
P 1600 1650
F 0 "#PWR015" H 1600 1500 50  0001 C CNN
F 1 "+3V3" H 1615 1823 50  0000 C CNN
F 2 "" H 1600 1650 50  0001 C CNN
F 3 "" H 1600 1650 50  0001 C CNN
	1    1600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 610A661A
P 1450 3050
F 0 "#PWR018" H 1450 2800 50  0001 C CNN
F 1 "GND" H 1455 2877 50  0000 C CNN
F 2 "" H 1450 3050 50  0001 C CNN
F 3 "" H 1450 3050 50  0001 C CNN
	1    1450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1650 1600 2050
Wire Wire Line
	1250 1700 1250 2050
Wire Wire Line
	1600 2650 1600 2950
Wire Wire Line
	1600 2950 1450 2950
Wire Wire Line
	1250 2950 1250 2650
Wire Wire Line
	1450 2950 1450 3050
Connection ~ 1450 2950
Wire Wire Line
	1450 2950 1250 2950
Text Notes 900  1350 0    50   ~ 0
Does SYS_EN provide enough \npower to power this LED?
$Comp
L Switch:SW_Push SW2
U 1 1 610C680A
P 8950 4850
F 0 "SW2" H 8950 4650 50  0000 C CNN
F 1 "SW_Reset" H 8950 4750 50  0000 C CNN
F 2 "" H 8950 5050 50  0001 C CNN
F 3 "~" H 8950 5050 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 610C7B67
P 8950 4650
F 0 "SW1" H 8950 4935 50  0000 C CNN
F 1 "SW_Wakeup" H 8950 4844 50  0000 C CNN
F 2 "" H 8950 4850 50  0001 C CNN
F 3 "~" H 8950 4850 50  0001 C CNN
	1    8950 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 610C84A2
P 9550 4650
F 0 "R9" V 9650 4650 50  0000 C CNN
F 1 "10K" V 9550 4650 50  0000 C CNN
F 2 "" V 9480 4650 50  0001 C CNN
F 3 "~" H 9550 4650 50  0001 C CNN
	1    9550 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 4650 9150 4650
$Comp
L power:+3V3 #PWR021
U 1 1 610CA54C
P 9850 4500
F 0 "#PWR021" H 9850 4350 50  0001 C CNN
F 1 "+3V3" H 9865 4673 50  0000 C CNN
F 2 "" H 9850 4500 50  0001 C CNN
F 3 "" H 9850 4500 50  0001 C CNN
	1    9850 4500
	1    0    0    -1  
$EndComp
Text Label 8600 4650 2    50   ~ 0
HOST_WAKE_UP
$Comp
L power:GND #PWR025
U 1 1 610D24DB
P 9850 5000
F 0 "#PWR025" H 9850 4750 50  0001 C CNN
F 1 "GND" H 9855 4827 50  0000 C CNN
F 2 "" H 9850 5000 50  0001 C CNN
F 3 "" H 9850 5000 50  0001 C CNN
	1    9850 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 610D3AFC
P 9550 4850
F 0 "R10" V 9450 4850 50  0000 C CNN
F 1 "4.7K" V 9550 4850 50  0000 C CNN
F 2 "" V 9480 4850 50  0001 C CNN
F 3 "~" H 9550 4850 50  0001 C CNN
	1    9550 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 4850 9150 4850
Wire Wire Line
	9850 4850 9850 5000
Wire Wire Line
	9700 4850 9850 4850
Wire Wire Line
	9850 4650 9700 4650
Wire Wire Line
	8750 4650 8600 4650
Text Label 8600 4850 2    50   ~ 0
CHIP_RESET
Wire Wire Line
	8600 4850 8750 4850
Wire Wire Line
	9850 4500 9850 4650
Text HLabel 8950 2900 2    50   Input ~ 0
nCH_PGOOD
Text Label 6850 2450 0    50   ~ 0
nCH_PGOOD
Text Notes 8850 5450 0    50   ~ 0
Manual Switches
Text Notes 8250 3300 0    50   ~ 0
Todo: Figure out how to kick the timer to enable \nthe system for one round. The system will sleep \nagain if it decides it doesn't need to run.
Text Label 8950 2900 2    50   ~ 0
nCH_PGOOD
$EndSCHEMATC
