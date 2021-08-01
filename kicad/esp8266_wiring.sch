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
L RF_Module:ESP-WROOM-02 U4
U 1 1 5F56E2A3
P 4900 2400
F 0 "U4" V 4800 2450 50  0000 C CNN
F 1 "ESP-WROOM-02" V 5000 2400 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 5500 1850 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 4950 3900 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0145
U 1 1 5F58E4CD
P 4900 1700
F 0 "#PWR0145" H 4900 1550 50  0001 C CNN
F 1 "+3V3" H 4915 1873 50  0000 C CNN
F 2 "" H 4900 1700 50  0001 C CNN
F 3 "" H 4900 1700 50  0001 C CNN
	1    4900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5F5BD3EE
P 4900 3100
F 0 "#PWR0150" H 4900 2850 50  0001 C CNN
F 1 "GND" H 4905 2927 50  0000 C CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Text Label 5400 2300 0    50   ~ 0
READY_TO_SLEEP
Text Label 5400 2500 0    50   ~ 0
GPIO13
Text Label 5400 2700 0    50   ~ 0
GPIO15
Text Label 2150 2150 0    50   ~ 0
ESP_RST
$Comp
L Device:C C?
U 1 1 5FE1427F
P 1850 2150
AR Path="/60DE59F5/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5F564838/5FE1427F" Ref="C6"  Part="1" 
F 0 "C6" V 2000 2200 50  0000 L CNN
F 1 "0.1μF" V 1900 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1888 2000 50  0001 C CNN
F 3 "~" H 1850 2150 50  0001 C CNN
	1    1850 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FE14279
P 2700 2150
F 0 "R10" V 2600 2050 50  0000 L CNN
F 1 "10K" V 2700 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2150 50  0001 C CNN
F 3 "~" H 2700 2150 50  0001 C CNN
	1    2700 2150
	0    1    1    0   
$EndComp
Text Notes 2150 3450 0    50   ~ 0
Config
Text Label 5400 2200 0    50   ~ 0
ALL_EN
$Comp
L Device:R R?
U 1 1 6033FDF8
P 1850 2550
AR Path="/6033FDF8" Ref="R?"  Part="1" 
AR Path="/5F564838/6033FDF8" Ref="R12"  Part="1" 
F 0 "R12" V 1950 2500 50  0000 L CNN
F 1 "10K" V 1850 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2550 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	0    -1   -1   0   
$EndComp
Text Label 2000 2550 0    50   ~ 0
GPIO15
$Comp
L Device:R R?
U 1 1 5F2D9143
P 2700 2400
AR Path="/5F2D9143" Ref="R?"  Part="1" 
AR Path="/5F564838/5F2D9143" Ref="R13"  Part="1" 
F 0 "R13" V 2600 2300 50  0000 L CNN
F 1 "10K" V 2700 2300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	0    1    1    0   
$EndComp
Text Label 2550 2400 2    50   ~ 0
GPIO0
$Comp
L Device:CP C10
U 1 1 5F49AC3D
P 2300 1900
F 0 "C10" V 2045 1900 50  0000 C CNN
F 1 "220uF" V 2136 1900 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 2338 1750 50  0001 C CNN
F 3 "~" H 2300 1900 50  0001 C CNN
	1    2300 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F53A6CA
P 1850 2800
F 0 "R7" V 1950 2800 50  0000 L CNN
F 1 "10K" V 1850 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2800 50  0001 C CNN
F 3 "~" H 1850 2800 50  0001 C CNN
	1    1850 2800
	0    -1   -1   0   
$EndComp
Text Label 5400 2800 0    50   ~ 0
GPIO16
Text Label 9400 2100 2    50   ~ 0
SCL
Text Label 9400 2300 2    50   ~ 0
ALL_EN
Text Label 9400 2200 2    50   ~ 0
HOST_WAKE_UP
Text Label 2000 2800 0    50   ~ 0
WAKE_UP
$Comp
L Device:C Cdec?
U 1 1 5F5944DB
P 7100 2800
AR Path="/60DE59F5/5F5944DB" Ref="Cdec?"  Part="1" 
AR Path="/5F5944DB" Ref="Cdec?"  Part="1" 
AR Path="/5F564838/5F5944DB" Ref="C9"  Part="1" 
F 0 "C9" V 6950 2650 50  0000 L CNN
F 1 "0.1μF" V 7050 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7138 2650 50  0001 C CNN
F 3 "~" H 7100 2800 50  0001 C CNN
	1    7100 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F58F54F
P 7600 2050
F 0 "R17" V 7500 2000 50  0000 L CNN
F 1 "10K" V 7600 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 2050 50  0001 C CNN
F 3 "~" H 7600 2050 50  0001 C CNN
	1    7600 2050
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:DMG2301L Q4
U 1 1 5F96E6B6
P 7250 2400
F 0 "Q4" H 7200 2650 50  0000 C CNN
F 1 "DMG2301L" H 7050 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 2325 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2301L.pdf" H 7250 2400 50  0001 L CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
Text HLabel 9400 2200 2    50   Input ~ 0
HOST_WAKE_UP
Text HLabel 9400 2300 2    50   Output ~ 0
ALL_EN
Text Label 7450 2800 0    50   ~ 0
SYS_EN
NoConn ~ 4400 2300
$Comp
L power:GND #PWR?
U 1 1 618B8B9F
P 1500 3100
F 0 "#PWR?" H 1500 2850 50  0001 C CNN
F 1 "GND" H 1505 2927 50  0000 C CNN
F 2 "" H 1500 3100 50  0001 C CNN
F 3 "" H 1500 3100 50  0001 C CNN
	1    1500 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 618B9C58
P 3050 1700
F 0 "#PWR?" H 3050 1550 50  0001 C CNN
F 1 "+3V3" H 3065 1873 50  0000 C CNN
F 2 "" H 3050 1700 50  0001 C CNN
F 3 "" H 3050 1700 50  0001 C CNN
	1    3050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2150 2550 2150
Wire Wire Line
	2850 2150 3050 2150
Wire Wire Line
	2450 1900 3050 1900
Wire Wire Line
	1500 1900 2150 1900
Wire Wire Line
	1700 2150 1500 2150
Wire Wire Line
	1700 2550 1500 2550
Wire Wire Line
	1700 2800 1500 2800
Wire Wire Line
	2850 2400 3050 2400
Connection ~ 3050 2400
Wire Wire Line
	3050 2400 3050 2150
Connection ~ 1500 2550
Wire Wire Line
	1500 2550 1500 2800
Connection ~ 1500 2150
Wire Wire Line
	1500 2150 1500 2550
Connection ~ 3050 2150
Wire Wire Line
	1500 1900 1500 2150
Connection ~ 3050 1900
Wire Wire Line
	3050 1900 3050 2150
Wire Wire Line
	3050 1700 3050 1900
Text Label 5400 2600 0    50   ~ 0
SCL
Text HLabel 9400 2100 2    50   Output ~ 0
SCL
Text Label 9400 2000 2    50   ~ 0
SDA
Text HLabel 9400 2700 2    50   Input ~ 0
UART_TXD
Text HLabel 9400 2800 2    50   Output ~ 0
UART_RXD
Text HLabel 9400 2600 2    50   Input ~ 0
CHIP_RESET
Text HLabel 9400 2500 2    50   Input ~ 0
BOOT_MODE
Text HLabel 9400 2400 2    50   Output ~ 0
BATT_GAUGE_SHDN
Wire Wire Line
	7450 2800 7350 2800
Wire Wire Line
	7350 2800 7350 2600
Wire Wire Line
	7450 2050 7350 2050
Wire Wire Line
	7350 2050 7350 2200
Wire Wire Line
	7350 2800 7250 2800
Connection ~ 7350 2800
Wire Wire Line
	6950 2800 6850 2800
$Comp
L power:GND #PWR?
U 1 1 61A7D518
P 6850 3100
F 0 "#PWR?" H 6850 2850 50  0001 C CNN
F 1 "GND" H 6855 2927 50  0000 C CNN
F 2 "" H 6850 3100 50  0001 C CNN
F 3 "" H 6850 3100 50  0001 C CNN
	1    6850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2050 7850 2050
$Comp
L power:+3V3 #PWR?
U 1 1 619FACAE
P 7850 1700
F 0 "#PWR?" H 7850 1550 50  0001 C CNN
F 1 "+3V3" H 7865 1873 50  0000 C CNN
F 2 "" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
Text Notes 6850 3550 0    50   ~ 0
System Enable Driver block\n(Active High)
Text Label 6850 2400 2    50   ~ 0
SYS_EN_DRV
Wire Wire Line
	7050 2400 6850 2400
$Comp
L Device:R R?
U 1 1 5F95CF4F
P 2700 2650
AR Path="/5F95CF4F" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF4F" Ref="R3"  Part="1" 
F 0 "R3" V 2600 2550 50  0000 L CNN
F 1 "4K7" V 2700 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2650 50  0001 C CNN
F 3 "~" H 2700 2650 50  0001 C CNN
	1    2700 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F95CF55
P 2700 2900
AR Path="/5F95CF55" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF55" Ref="R9"  Part="1" 
F 0 "R9" V 2600 2800 50  0000 L CNN
F 1 "4K7" V 2700 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2900 50  0001 C CNN
F 3 "~" H 2700 2900 50  0001 C CNN
	1    2700 2900
	0    1    1    0   
$EndComp
Text Label 2550 2650 2    50   ~ 0
SDA
Text Label 2550 2900 2    50   ~ 0
SCL
Wire Wire Line
	3050 2900 2850 2900
Wire Wire Line
	2850 2650 3050 2650
Wire Wire Line
	3050 2400 3050 2650
Wire Wire Line
	3050 2650 3050 2900
Connection ~ 3050 2650
Text Label 4400 6200 0    50   ~ 0
READY_TO_SLEEP
Text Label 2350 5600 2    50   ~ 0
HOST_WAKE_UP
Text Label 4400 5500 0    50   ~ 0
SYS_EN_DRV
Text Notes 3200 6900 0    50   ~ 0
System Sleep Timer
Wire Wire Line
	4400 5500 4250 5500
Wire Wire Line
	4250 6200 4400 6200
Wire Wire Line
	2900 5950 3050 5950
Connection ~ 2900 5950
Wire Wire Line
	2700 5950 2900 5950
$Comp
L Timer:TPL5110 U5
U 1 1 5F7D3440
P 3650 5850
F 0 "U5" H 3250 6350 50  0000 C CNN
F 1 "TPL5110" H 3350 6250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3650 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpl5110.pdf" H 3450 5450 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6350 3650 6450
Wire Wire Line
	2900 6050 2900 5950
Connection ~ 2700 5950
Wire Wire Line
	2700 5950 2700 6050
$Comp
L power:+3V3 #PWR?
U 1 1 619FA10B
P 3650 4950
F 0 "#PWR?" H 3650 4800 50  0001 C CNN
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
L power:GND #PWR036
U 1 1 5F7D7D75
P 3650 6450
F 0 "#PWR036" H 3650 6200 50  0001 C CNN
F 1 "GND" H 3655 6277 50  0000 C CNN
F 2 "" H 3650 6450 50  0001 C CNN
F 3 "" H 3650 6450 50  0001 C CNN
	1    3650 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F7DFB68
P 3800 5200
F 0 "C8" V 3550 5200 50  0000 C CNN
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
L power:GND #PWR038
U 1 1 5F7ECA85
P 3950 4950
F 0 "#PWR038" H 3950 4700 50  0001 C CNN
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
Connection ~ 2900 5200
Wire Wire Line
	2900 5850 3050 5850
$Comp
L power:GND #PWR031
U 1 1 5F7FBED9
P 2800 6450
F 0 "#PWR031" H 2800 6200 50  0001 C CNN
F 1 "GND" V 2805 6322 50  0000 R CNN
F 2 "" H 2800 6450 50  0001 C CNN
F 3 "" H 2800 6450 50  0001 C CNN
	1    2800 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F800035
P 2700 6200
F 0 "R2" H 2600 6350 50  0000 C CNN
F 1 "16.9K" V 2700 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 6200 50  0001 C CNN
F 3 "~" H 2700 6200 50  0001 C CNN
F 4 "Short Traces" V 2500 6200 50  0000 C CNN "Note"
	1    2700 6200
	1    0    0    -1  
$EndComp
Text Notes 2650 7500 0    50   ~ 0
Tip=20s, Rext=14.41K (16.9 / 97.6)\nTip=20m, Rext=77.57K (140.0 / 174.0)\n\nuC must drive GPIO5 UP when it finishes \nand ready to go to sleep (DS 8.3.2)
$Comp
L Device:R R6
U 1 1 5F850A50
P 2900 6200
F 0 "R6" H 2800 6350 50  0000 C CNN
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
Wire Wire Line
	4250 5850 4150 5850
Wire Wire Line
	4250 5500 4250 5850
$Comp
L Transistor_BJT:DTC113Z Q2
U 1 1 60F12921
P 2600 5600
F 0 "Q2" H 2300 5900 50  0000 L CNN
F 1 "DTC113Z" H 2300 5800 50  0000 L CNN
F 2 "" H 2600 5600 50  0001 L CNN
F 3 "" H 2600 5600 50  0001 L CNN
	1    2600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5800 2700 5950
Wire Wire Line
	2700 5400 2700 5200
Wire Wire Line
	2700 5200 2900 5200
Text Notes 1800 5100 0    50   ~ 0
TODO: Figure out how to do that. \nSee TPL5110 7.5.2.2 for details.\n\n1. Avoid dirty current on DELAY/M_DRV \nto ensure clean reading of the resistance.\n2. See if we need to convert a driven up \nWAKE_UP to a short impulse? I don't \nthink it's necessary.\n\nGPIO16 can be connected to WAKE_UP.\nIf uC wants to stay awake - it pulls it \nso the timer keeps driving power.\nUseful for e.g. setting up or OTA.
Text Notes 4250 4450 0    50   ~ 0
Questions:\nShould we drive ESP_EN using the timer, \nor the entire power plane?\nWhat if we ground a pulled up ALL_EN?\nWhat is the power consumption of a single resistor? \nI.e., VDD - R - GND scheme if we pull down ALL_EN using the timer
Text Notes 4300 5800 0    50   ~ 0
DRV is \nACTIVE LOW
Text Notes 4700 3450 0    50   ~ 0
ESP8266
Wire Wire Line
	4900 1700 4900 1800
Wire Wire Line
	4900 3000 4900 3100
Wire Wire Line
	1500 2800 1500 3100
Connection ~ 1500 2800
Wire Wire Line
	7850 1700 7850 2050
Wire Wire Line
	6850 2800 6850 3100
Text Label 4400 2000 2    50   ~ 0
SYS_EN
Text HLabel 9400 2000 2    50   BiDi ~ 0
SDA
Text Label 5400 2100 0    50   ~ 0
SDA
Text Label 9400 2500 2    50   ~ 0
BOOT_MODE
Text Label 5400 2000 0    50   ~ 0
BOOT_MODE
Text Label 4400 2100 2    50   ~ 0
CHIP_RESET
Text Label 9400 2600 2    50   ~ 0
CHIP_RESET
Text Label 9400 2700 2    50   ~ 0
UART_TXD
Text Label 4400 2500 2    50   ~ 0
UART_TXD
Text Label 9400 2800 2    50   ~ 0
UART_RXD
Text Label 4400 2600 2    50   ~ 0
UART_RXD
Text Label 9400 2400 2    50   ~ 0
BATT_GAUGE_SHDN
Text Label 5400 2400 0    50   ~ 0
BATT_GAUGE_SHDN
$EndSCHEMATC
