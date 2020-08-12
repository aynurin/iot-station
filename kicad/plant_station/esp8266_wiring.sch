EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
P 4550 2150
F 0 "U4" V 4450 2200 50  0000 C CNN
F 1 "ESP-WROOM-02" V 4650 2150 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 5150 1600 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 4600 3650 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0145
U 1 1 5F58E4CD
P 4550 1550
F 0 "#PWR0145" H 4550 1400 50  0001 C CNN
F 1 "+3V3" H 4565 1723 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5F5BD3EE
P 4550 2750
F 0 "#PWR0150" H 4550 2500 50  0001 C CNN
F 1 "GND" H 4555 2577 50  0000 C CNN
F 2 "" H 4550 2750 50  0001 C CNN
F 3 "" H 4550 2750 50  0001 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
NoConn ~ 4050 2050
Text HLabel 5400 1850 2    50   BiDi ~ 0
SDA
Text HLabel 5400 1950 2    50   BiDi ~ 0
ALL_EN
Text Label 4050 1850 2    50   ~ 0
ESP_RST
Text Label 4050 1750 2    50   ~ 0
ESP_EN
Text HLabel 5400 2350 2    50   Output ~ 0
SCL
Text Label 5050 1750 0    50   ~ 0
GPIO0
Text Label 5050 1850 0    50   ~ 0
SDA
Text Label 5050 2050 0    50   ~ 0
GPIO5
Text Label 5050 2150 0    50   ~ 0
GPIO12
Text Label 5050 2250 0    50   ~ 0
GPIO13
Text Label 5050 2350 0    50   ~ 0
SCL
Text Label 5050 2450 0    50   ~ 0
GPIO15
Text Label 4050 2250 2    50   ~ 0
USB_TXD
Text Label 4050 2350 2    50   ~ 0
USB_RXD
Wire Wire Line
	5050 1850 5400 1850
Wire Wire Line
	5050 1950 5400 1950
Wire Wire Line
	5050 2350 5400 2350
$Comp
L power:GND #PWR026
U 1 1 5FC8A458
P 1900 2200
F 0 "#PWR026" H 1900 1950 50  0001 C CNN
F 1 "GND" V 1875 2100 50  0000 R CNN
F 2 "" H 1900 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
	1    1900 2200
	0    1    1    0   
$EndComp
Text Label 1900 2600 2    50   ~ 0
USB_RXD
Text Label 1900 2500 2    50   ~ 0
USB_TXD
$Comp
L power:+3V3 #PWR023
U 1 1 5FE1428B
P 7500 2100
F 0 "#PWR023" H 7500 1950 50  0001 C CNN
F 1 "+3V3" V 7500 2300 50  0000 C CNN
F 2 "" H 7500 2100 50  0001 C CNN
F 3 "" H 7500 2100 50  0001 C CNN
	1    7500 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2100 7200 2100
Text Label 6900 2100 0    50   ~ 0
ESP_RST
$Comp
L power:GND #PWR?
U 1 1 5FE14285
P 6600 2100
AR Path="/60DE59F5/5FE14285" Ref="#PWR?"  Part="1" 
AR Path="/5FE14285" Ref="#PWR?"  Part="1" 
AR Path="/5F564838/5FE14285" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6600 1850 50  0001 C CNN
F 1 "GND" V 6600 1900 50  0000 C CNN
F 2 "" H 6600 2100 50  0001 C CNN
F 3 "" H 6600 2100 50  0001 C CNN
	1    6600 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FE1427F
P 6750 2100
AR Path="/60DE59F5/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5FE1427F" Ref="C?"  Part="1" 
AR Path="/5F564838/5FE1427F" Ref="C6"  Part="1" 
F 0 "C6" V 6850 2150 50  0000 L CNN
F 1 "0.1μF" V 6650 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6788 1950 50  0001 C CNN
F 3 "~" H 6750 2100 50  0001 C CNN
	1    6750 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FE14279
P 7350 2100
F 0 "R10" V 7250 2150 50  0000 L CNN
F 1 "10K" V 7450 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7280 2100 50  0001 C CNN
F 3 "~" H 7350 2100 50  0001 C CNN
	1    7350 2100
	0    1    1    0   
$EndComp
Text Notes 6750 2800 0    50   ~ 0
Config and pull
$Comp
L Device:R R?
U 1 1 5F95CF4F
P 9300 2250
AR Path="/5F95CF4F" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF4F" Ref="R3"  Part="1" 
F 0 "R3" V 9200 2200 50  0000 L CNN
F 1 "4K7" V 9300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 2250 50  0001 C CNN
F 3 "~" H 9300 2250 50  0001 C CNN
	1    9300 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F95CF55
P 9300 2550
AR Path="/5F95CF55" Ref="R?"  Part="1" 
AR Path="/5F564838/5F95CF55" Ref="R9"  Part="1" 
F 0 "R9" V 9200 2500 50  0000 L CNN
F 1 "4K7" V 9300 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 2550 50  0001 C CNN
F 3 "~" H 9300 2550 50  0001 C CNN
	1    9300 2550
	0    1    1    0   
$EndComp
Text Label 9150 2250 2    50   ~ 0
SDA
Text Label 9150 2550 2    50   ~ 0
SCL
$Comp
L power:GND #PWR?
U 1 1 5F59F761
P 9300 4850
AR Path="/60DE59F5/5F59F761" Ref="#PWR?"  Part="1" 
AR Path="/5F59F761" Ref="#PWR?"  Part="1" 
AR Path="/5F564838/5F59F761" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 9300 4600 50  0001 C CNN
F 1 "GND" V 9300 4650 50  0000 C CNN
F 2 "" H 9300 4850 50  0001 C CNN
F 3 "" H 9300 4850 50  0001 C CNN
	1    9300 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C Cdec?
U 1 1 5F5944DB
P 9150 4850
AR Path="/60DE59F5/5F5944DB" Ref="Cdec?"  Part="1" 
AR Path="/5F5944DB" Ref="Cdec?"  Part="1" 
AR Path="/5F564838/5F5944DB" Ref="C9"  Part="1" 
F 0 "C9" V 9250 4900 50  0000 L CNN
F 1 "0.1μF" V 9050 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9188 4700 50  0001 C CNN
F 3 "~" H 9150 4850 50  0001 C CNN
	1    9150 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F58F54F
P 8650 4850
F 0 "R17" V 8550 4800 50  0000 L CNN
F 1 "10K" V 8650 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 4850 50  0001 C CNN
F 3 "~" H 8650 4850 50  0001 C CNN
	1    8650 4850
	0    1    1    0   
$EndComp
Text Label 5050 1950 0    50   ~ 0
GPIO4
Text HLabel 9100 1650 0    50   Input ~ 0
HOST_WAKE_UP
$Comp
L Device:R R?
U 1 1 6033FDF8
P 6600 2500
AR Path="/6033FDF8" Ref="R?"  Part="1" 
AR Path="/5F564838/6033FDF8" Ref="R12"  Part="1" 
F 0 "R12" V 6500 2450 50  0000 L CNN
F 1 "10K" V 6600 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	0    -1   -1   0   
$EndComp
Text Label 6750 2500 0    50   ~ 0
GPIO15
$Comp
L power:GND #PWR025
U 1 1 603430DA
P 6450 2500
F 0 "#PWR025" H 6450 2250 50  0001 C CNN
F 1 "GND" V 6455 2372 50  0000 R CNN
F 2 "" H 6450 2500 50  0001 C CNN
F 3 "" H 6450 2500 50  0001 C CNN
	1    6450 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F2D9143
P 7450 2500
AR Path="/5F2D9143" Ref="R?"  Part="1" 
AR Path="/5F564838/5F2D9143" Ref="R13"  Part="1" 
F 0 "R13" V 7350 2450 50  0000 L CNN
F 1 "10K" V 7450 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 2500 50  0001 C CNN
F 3 "~" H 7450 2500 50  0001 C CNN
	1    7450 2500
	0    1    1    0   
$EndComp
Text Label 7300 2500 2    50   ~ 0
GPIO0
Text Label 1900 2700 2    50   ~ 0
ESP_RST
Text Label 1900 2300 2    50   ~ 0
GPIO0
$Comp
L Device:CP C10
U 1 1 5F49AC3D
P 7050 1700
F 0 "C10" V 6795 1700 50  0000 C CNN
F 1 "220uF" V 6886 1700 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7088 1550 50  0001 C CNN
F 3 "~" H 7050 1700 50  0001 C CNN
	1    7050 1700
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR045
U 1 1 5F49F5F7
P 7500 1700
F 0 "#PWR045" H 7500 1550 50  0001 C CNN
F 1 "+3V3" V 7500 1800 50  0000 L CNN
F 2 "" H 7500 1700 50  0001 C CNN
F 3 "" H 7500 1700 50  0001 C CNN
	1    7500 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5F4A0110
P 6600 1700
F 0 "#PWR044" H 6600 1450 50  0001 C CNN
F 1 "GND" V 6605 1572 50  0000 R CNN
F 2 "" H 6600 1700 50  0001 C CNN
F 3 "" H 6600 1700 50  0001 C CNN
	1    6600 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1700 6600 1700
Wire Wire Line
	7200 1700 7500 1700
$Comp
L Device:R R7
U 1 1 5F53A6CA
P 9700 1650
F 0 "R7" V 9600 1600 50  0000 L CNN
F 1 "10K" V 9700 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9630 1650 50  0001 C CNN
F 3 "~" H 9700 1650 50  0001 C CNN
	1    9700 1650
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 5F582364
P 7600 2500
F 0 "#PWR046" H 7600 2350 50  0001 C CNN
F 1 "+3V3" V 7600 2600 50  0000 L CNN
F 2 "" H 7600 2500 50  0001 C CNN
F 3 "" H 7600 2500 50  0001 C CNN
	1    7600 2500
	0    1    1    0   
$EndComp
Text Label 9500 1650 2    50   ~ 0
WAKE_UP
Wire Wire Line
	9100 1650 9550 1650
Text Notes 8750 1900 0    50   ~ 0
Host Wake Up (active high)
$Comp
L Connector_Generic:Conn_01x06 J8
U 1 1 5FE42DD1
P 2100 2400
F 0 "J8" H 2050 2850 50  0000 L CNN
F 1 "Conn_01x06" H 1700 2750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2100 2400 50  0001 C CNN
F 3 "~" H 2100 2400 50  0001 C CNN
	1    2100 2400
	1    0    0    -1  
$EndComp
Text Notes 1400 2900 0    50   ~ 0
External USB-UART
Text Label 1900 3700 2    50   ~ 0
ESP_RST
$Comp
L power:GND #PWR049
U 1 1 5F730FED
P 9850 1650
F 0 "#PWR049" H 9850 1400 50  0001 C CNN
F 1 "GND" V 9855 1522 50  0000 R CNN
F 2 "" H 9850 1650 50  0001 C CNN
F 3 "" H 9850 1650 50  0001 C CNN
	1    9850 1650
	0    -1   -1   0   
$EndComp
Text Notes 9050 2800 0    50   ~ 0
I2C Pull Up
$Comp
L power:GND #PWR036
U 1 1 5F7D7D75
P 6100 5850
F 0 "#PWR036" H 6100 5600 50  0001 C CNN
F 1 "GND" H 6105 5677 50  0000 C CNN
F 2 "" H 6100 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F7DFB68
P 6250 4700
F 0 "C8" V 6000 4700 50  0000 C CNN
F 1 "0.1uF" V 6100 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6288 4550 50  0001 C CNN
F 3 "~" H 6250 4700 50  0001 C CNN
F 4 "Short Traces" V 6400 4800 50  0000 C CNN "Note"
	1    6250 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4450 6100 4700
Connection ~ 6100 4700
Wire Wire Line
	6100 4700 6100 4950
$Comp
L power:GND #PWR038
U 1 1 5F7ECA85
P 6400 4450
F 0 "#PWR038" H 6400 4200 50  0001 C CNN
F 1 "GND" H 6405 4277 50  0000 C CNN
F 2 "" H 6400 4450 50  0001 C CNN
F 3 "" H 6400 4450 50  0001 C CNN
	1    6400 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 4450 6400 4700
Wire Wire Line
	6100 4700 5350 4700
Wire Wire Line
	5350 5350 5500 5350
$Comp
L power:GND #PWR031
U 1 1 5F7FBED9
P 4850 5450
F 0 "#PWR031" H 4850 5200 50  0001 C CNN
F 1 "GND" V 4855 5322 50  0000 R CNN
F 2 "" H 4850 5450 50  0001 C CNN
F 3 "" H 4850 5450 50  0001 C CNN
	1    4850 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F800035
P 5100 5350
F 0 "R2" V 5000 5350 50  0000 C CNN
F 1 "16.9K" V 5100 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 5350 50  0001 C CNN
F 3 "~" H 5100 5350 50  0001 C CNN
F 4 "Short Traces" V 4900 5350 50  0000 C CNN "Note"
	1    5100 5350
	0    1    1    0   
$EndComp
Text Label 5150 5800 2    50   ~ 0
WAKE_UP
$Comp
L Device:D D2
U 1 1 5F80D3D3
P 5300 5800
F 0 "D2" H 5200 5850 50  0000 C CNN
F 1 "LS4148" H 5200 5750 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" H 5300 5800 50  0001 C CNN
F 3 "~" H 5300 5800 50  0001 C CNN
	1    5300 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 5450 5450 5450
Connection ~ 5450 5450
Wire Wire Line
	5450 5450 5500 5450
Text Notes 5850 6100 2    50   ~ 0
Tip=20s, Rext=14.41K (16.9 / 97.6)\nTip=20m, Rext=77.57K (140.0 / 174.0)
$Comp
L Device:R R6
U 1 1 5F850A50
P 5100 5550
F 0 "R6" V 5000 5550 50  0000 C CNN
F 1 "97.6K" V 5100 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 5550 50  0001 C CNN
F 3 "~" H 5100 5550 50  0001 C CNN
F 4 "Short Traces" V 5200 5550 50  0000 C CNN "Note"
	1    5100 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5350 5250 5450
Connection ~ 5250 5450
Wire Wire Line
	5250 5450 5250 5550
Wire Wire Line
	5450 5450 5450 5800
$Comp
L power:VDD #PWR034
U 1 1 5F880E88
P 6100 4450
F 0 "#PWR034" H 6100 4300 50  0001 C CNN
F 1 "VDD" H 6115 4623 50  0000 C CNN
F 2 "" H 6100 4450 50  0001 C CNN
F 3 "" H 6100 4450 50  0001 C CNN
	1    6100 4450
	1    0    0    -1  
$EndComp
Text Label 5050 2550 0    50   ~ 0
WAKE_UP
Text Notes 3750 3700 0    50   ~ 0
GPIO16 is connected to WAKE_UP line.\nIf uC wants to stay awake - it pulls it down \nso the TPL timer keeps driving power.\nUseful for e.g. setting up or OTA.
Wire Wire Line
	5350 4700 5350 5350
Wire Wire Line
	4950 5350 4950 5450
Connection ~ 4950 5450
Wire Wire Line
	4950 5450 4950 5550
$Comp
L Timer:TPL5110 U5
U 1 1 5F7D3440
P 6100 5350
F 0 "U5" H 5700 5850 50  0000 C CNN
F 1 "TPL5110" H 5800 5750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6100 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpl5110.pdf" H 5900 4950 50  0001 C CNN
	1    6100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR039
U 1 1 5F99A85E
P 7250 5300
F 0 "#PWR039" H 7250 5150 50  0001 C CNN
F 1 "VDD" H 7050 5400 50  0000 L CNN
F 2 "" H 7250 5300 50  0001 C CNN
F 3 "" H 7250 5300 50  0001 C CNN
	1    7250 5300
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:DMG2301L Q4
U 1 1 5F96E6B6
P 7150 5100
F 0 "Q4" H 7050 5250 50  0000 C CNN
F 1 "DMG2301L" H 7000 4850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7350 5025 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2301L.pdf" H 7150 5100 50  0001 L CNN
	1    7150 5100
	1    0    0    -1  
$EndComp
Text Label 8050 5300 0    50   ~ 0
GPIO5
Text Label 8050 5200 0    50   ~ 0
GPIO4
Wire Wire Line
	7550 5200 7550 5300
$Comp
L power:+3V3 #PWR042
U 1 1 5F7D8743
P 8050 4600
F 0 "#PWR042" H 8050 4450 50  0001 C CNN
F 1 "+3V3" V 8065 4728 50  0000 L CNN
F 2 "" H 8050 4600 50  0001 C CNN
F 3 "" H 8050 4600 50  0001 C CNN
	1    8050 4600
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR043
U 1 1 5F863AFE
P 8050 4900
F 0 "#PWR043" H 8050 4750 50  0001 C CNN
F 1 "+3V3" V 8065 5028 50  0000 L CNN
F 2 "" H 8050 4900 50  0001 C CNN
F 3 "" H 8050 4900 50  0001 C CNN
	1    8050 4900
	0    1    1    0   
$EndComp
Text Label 8800 4850 0    50   ~ 0
ESP_EN
$Comp
L power:VDD #PWR041
U 1 1 5F89065C
P 7550 4700
F 0 "#PWR041" H 7550 4550 50  0001 C CNN
F 1 "VDD" V 7565 4827 50  0000 L CNN
F 2 "" H 7550 4700 50  0001 C CNN
F 3 "" H 7550 4700 50  0001 C CNN
	1    7550 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR040
U 1 1 5F88FAB9
P 7550 4600
F 0 "#PWR040" H 7550 4450 50  0001 C CNN
F 1 "VDD" V 7565 4727 50  0000 L CNN
F 2 "" H 7550 4600 50  0001 C CNN
F 3 "" H 7550 4600 50  0001 C CNN
	1    7550 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 4900 7550 5000
Connection ~ 7550 5000
Wire Wire Line
	7550 5000 7550 5100
Wire Wire Line
	7250 4900 7550 4900
Connection ~ 7550 4900
Wire Wire Line
	6600 5450 7550 5450
Wire Wire Line
	7550 5450 7550 5300
Connection ~ 7550 5300
Wire Wire Line
	6950 5100 6700 5100
Wire Wire Line
	6700 5100 6700 5350
Wire Wire Line
	6700 5350 6600 5350
Wire Wire Line
	4950 5450 4850 5450
Wire Wire Line
	6700 5100 6700 4800
Wire Wire Line
	6700 4800 7550 4800
Connection ~ 6700 5100
NoConn ~ 8050 4800
NoConn ~ 8050 5100
$Comp
L power:VDD #PWR033
U 1 1 5F9EDF20
P 1900 2400
F 0 "#PWR033" H 1900 2250 50  0001 C CNN
F 1 "VDD" V 1915 2527 50  0000 L CNN
F 2 "" H 1900 2400 50  0001 C CNN
F 3 "" H 1900 2400 50  0001 C CNN
	1    1900 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR047
U 1 1 5FAC159B
P 9450 2250
F 0 "#PWR047" H 9450 2100 50  0001 C CNN
F 1 "VDD" V 9465 2378 50  0000 L CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR048
U 1 1 5FAC1EA4
P 9450 2550
F 0 "#PWR048" H 9450 2400 50  0001 C CNN
F 1 "VDD" V 9465 2678 50  0000 L CNN
F 2 "" H 9450 2550 50  0001 C CNN
F 3 "" H 9450 2550 50  0001 C CNN
	1    9450 2550
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J17
U 1 1 5FAE03AE
P 2100 3800
F 0 "J17" H 2000 4350 50  0000 L CNN
F 1 "Conn_01x08" H 1700 4250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2100 3800 50  0001 C CNN
F 3 "~" H 2100 3800 50  0001 C CNN
	1    2100 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J18
U 1 1 5FAE550D
P 2100 5350
F 0 "J18" H 2000 5900 50  0000 L CNN
F 1 "Conn_01x08" H 1700 5800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2100 5350 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
Text Label 1900 3800 2    50   ~ 0
ESP_EN
Text Label 1900 5250 2    50   ~ 0
GPIO0
Text Label 1900 5350 2    50   ~ 0
GPIO4
Text Label 1900 5450 2    50   ~ 0
GPIO5
Text Label 1900 5550 2    50   ~ 0
GPIO12
Text Label 1900 5650 2    50   ~ 0
GPIO13
Text Label 1900 5750 2    50   ~ 0
GPIO15
Text Label 1900 3900 2    50   ~ 0
WAKE_UP
Text Label 1900 4000 2    50   ~ 0
SDA
Text Label 1900 4100 2    50   ~ 0
SCL
$Comp
L power:GND #PWR0101
U 1 1 5FAF47F5
P 1900 3500
F 0 "#PWR0101" H 1900 3250 50  0001 C CNN
F 1 "GND" V 1905 3372 50  0000 R CNN
F 2 "" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	1    1900 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAF4FC5
P 1900 5050
F 0 "#PWR0102" H 1900 4800 50  0001 C CNN
F 1 "GND" V 1905 4922 50  0000 R CNN
F 2 "" H 1900 5050 50  0001 C CNN
F 3 "" H 1900 5050 50  0001 C CNN
	1    1900 5050
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0103
U 1 1 5FAF61A2
P 1900 3600
F 0 "#PWR0103" H 1900 3450 50  0001 C CNN
F 1 "VDD" V 1915 3727 50  0000 L CNN
F 2 "" H 1900 3600 50  0001 C CNN
F 3 "" H 1900 3600 50  0001 C CNN
	1    1900 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5FAF7387
P 1900 5150
F 0 "#PWR0104" H 1900 5000 50  0001 C CNN
F 1 "+3V3" V 1915 5278 50  0000 L CNN
F 2 "" H 1900 5150 50  0001 C CNN
F 3 "" H 1900 5150 50  0001 C CNN
	1    1900 5150
	0    -1   -1   0   
$EndComp
Text Notes 1850 4400 0    50   ~ 0
Logic IO
Text Notes 1950 5950 0    50   ~ 0
GPIO
NoConn ~ 1900 4200
Wire Wire Line
	8050 4700 8500 4700
Wire Wire Line
	8500 4700 8500 4850
Wire Wire Line
	8050 5000 8500 5000
Connection ~ 8500 4850
Wire Wire Line
	8500 4850 8500 5000
Wire Wire Line
	9000 4850 8800 4850
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 5FCFF381
P 7750 4900
F 0 "J1" H 7800 5417 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 7800 5326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7750 4900 50  0001 C CNN
F 3 "~" H 7750 4900 50  0001 C CNN
	1    7750 4900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
