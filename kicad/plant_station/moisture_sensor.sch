EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L power:GND #PWR0119
U 1 1 5F166D15
P 1550 3400
F 0 "#PWR0119" H 1550 3150 50  0001 C CNN
F 1 "GND" H 1555 3227 50  0000 C CNN
F 2 "" H 1550 3400 50  0001 C CNN
F 3 "" H 1550 3400 50  0001 C CNN
	1    1550 3400
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 5F167742
P 2950 3400
F 0 "#PWR0122" H 2950 3250 50  0001 C CNN
F 1 "+3V3" H 2965 3573 50  0000 C CNN
F 2 "" H 2950 3400 50  0001 C CNN
F 3 "" H 2950 3400 50  0001 C CNN
	1    2950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cref1
U 1 1 5F168BA9
P 3100 4650
F 0 "Cref1" H 3215 4696 50  0000 L CNN
F 1 "470pF" H 3215 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3138 4500 50  0001 C CNN
F 3 "~" H 3100 4650 50  0001 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4250 1450 4250
Wire Wire Line
	2950 4150 2950 4450
Wire Wire Line
	1650 4050 1550 4050
Wire Wire Line
	1550 4050 1550 4450
$Comp
L power:GND #PWR0125
U 1 1 5F175F10
P 3100 4800
F 0 "#PWR0125" H 3100 4550 50  0001 C CNN
F 1 "GND" H 3105 4627 50  0000 C CNN
F 2 "" H 3100 4800 50  0001 C CNN
F 3 "" H 3100 4800 50  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L SamaSys:TLC555CDR IC3
U 1 1 5F161298
P 1650 3950
F 0 "IC3" H 2250 3950 50  0000 C CNN
F 1 "TLC555CDR" H 2250 3500 50  0000 C CNN
F 2 "SamacSys:SOIC127P600X175-8N" H 2700 4050 50  0001 L CNN
F 3 "" H 2700 3950 50  0001 L CNN
F 4 "TLC555CDR, Timer 2MHz, 2 ??? 15 V, 8-Pin SOIC-8" H 2700 3850 50  0001 L CNN "Description"
F 5 "1.75" H 2700 3750 50  0001 L CNN "Height"
F 6 "595-TLC555CDR" H 2700 3650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TLC555CDR?qs=gb35HGp1gQImgWgRW%252BGYaw%3D%3D" H 2700 3550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2700 3450 50  0001 L CNN "Manufacturer_Name"
F 9 "TLC555CDR" H 2700 3350 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F1814FE
P 2850 4650
F 0 "C5" H 2650 4700 50  0000 L CNN
F 1 "10nF" H 2550 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2888 4500 50  0001 C CNN
F 3 "~" H 2850 4650 50  0001 C CNN
	1    2850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3950 2950 3950
Wire Wire Line
	2850 4150 2950 4150
Wire Wire Line
	2850 4250 2850 4500
Wire Wire Line
	1550 4450 2950 4450
Wire Wire Line
	1650 3950 1550 3950
Wire Wire Line
	2950 4450 3100 4450
Wire Wire Line
	3100 4050 3100 4100
$Comp
L Device:R Rb1
U 1 1 5F168492
P 3100 4250
F 0 "Rb1" H 3170 4296 50  0000 L CNN
F 1 "1K6" H 3170 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3030 4250 50  0001 C CNN
F 3 "~" H 3100 4250 50  0001 C CNN
	1    3100 4250
	1    0    0    -1  
$EndComp
Connection ~ 3100 4050
Wire Wire Line
	2850 4050 3100 4050
Wire Wire Line
	3100 4000 3100 4050
$Comp
L Device:R Ra1
U 1 1 5F168179
P 3100 3850
F 0 "Ra1" H 3170 3896 50  0000 L CNN
F 1 "330" H 3170 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 3850 50  0001 C CNN
F 3 "~" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3950 1550 3400
$Comp
L power:GND #PWR0141
U 1 1 5F1AA683
P 850 3850
F 0 "#PWR0141" H 850 3600 50  0001 C CNN
F 1 "GND" H 855 3677 50  0000 C CNN
F 2 "" H 850 3850 50  0001 C CNN
F 3 "" H 850 3850 50  0001 C CNN
	1    850  3850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F1B3158
P 1250 4000
F 0 "D1" V 1150 4050 50  0000 L CNN
F 1 "LS4148" H 1150 3900 50  0000 L CNN
F 2 "Diode_SMD:D_MELF" H 1250 4000 50  0001 C CNN
F 3 "~" H 1250 4000 50  0001 C CNN
	1    1250 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1B3F12
P 1050 3800
F 0 "R4" V 950 3800 50  0000 C CNN
F 1 "1M" V 1050 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 980 3800 50  0001 C CNN
F 3 "~" H 1050 3800 50  0001 C CNN
	1    1050 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3800 1250 3800
Connection ~ 1250 3800
Wire Wire Line
	1250 3800 1250 3850
Wire Wire Line
	900  3800 850  3800
Wire Wire Line
	3100 4400 3100 4450
Connection ~ 2950 4450
Connection ~ 3100 4450
Wire Wire Line
	3100 4450 3100 4500
Wire Wire Line
	2950 3700 3100 3700
$Comp
L Device:C Cdec1
U 1 1 5F16FB60
P 1800 1450
F 0 "Cdec1" H 1850 1550 50  0000 L CNN
F 1 "0.1μF" H 1850 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1838 1300 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
Connection ~ 2950 3700
Wire Wire Line
	2950 3700 2950 3950
Wire Wire Line
	1450 3700 1450 4250
Wire Wire Line
	2950 3400 2950 3700
Wire Wire Line
	850  3800 850  3550
Wire Wire Line
	900  3550 850  3550
Wire Wire Line
	1250 3550 1250 3800
Wire Wire Line
	1200 3550 1250 3550
$Comp
L Device:C C4
U 1 1 5F1B4621
P 1050 3550
F 0 "C4" V 950 3450 50  0000 C CNN
F 1 "1μF" V 950 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1088 3400 50  0001 C CNN
F 3 "~" H 1050 3550 50  0001 C CNN
	1    1050 3550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0142
U 1 1 5F1AA8AE
P 1700 2650
F 0 "#PWR0142" H 1700 2500 50  0001 C CNN
F 1 "+3V3" V 1715 2778 50  0000 L CNN
F 2 "" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    1700 2650
	0    -1   -1   0   
$EndComp
$Comp
L SamaSys:ADC081C021CIMK_NOPB IC4
U 1 1 5EFC5A0F
P 1700 2650
F 0 "IC4" H 2250 2915 50  0000 C CNN
F 1 "ADC081C021CIMK_NOPB" H 2250 2824 50  0000 C CNN
F 2 "SamacSys:SOT95P280X110-6N" H 2650 2750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/adc081c021.pdf" H 2650 2650 50  0001 L CNN
F 4 "I2C-Compatible, 8-Bit Analog-to-Digital Converter with Alert Pin" H 2650 2550 50  0001 L CNN "Description"
F 5 "1.1" H 2650 2450 50  0001 L CNN "Height"
F 6 "926-AD081C021CIMKNPB" H 2650 2350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/ADC081C021CIMK-NOPB?qs=7X5t%252BdzoRHAIDTGEBrDAMg%3D%3D" H 2650 2250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2650 2150 50  0001 L CNN "Manufacturer_Name"
F 9 "ADC081C021CIMK/NOPB" H 2650 2050 50  0001 L CNN "Manufacturer_Part_Number"
	1    1700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F2145C6
P 1250 3250
F 0 "R5" H 1320 3296 50  0000 L CNN
F 1 "22" H 1320 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 3250 50  0001 C CNN
F 3 "~" H 1250 3250 50  0001 C CNN
	1    1250 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cdec2
U 1 1 5F24AA83
P 1500 1450
F 0 "Cdec2" H 1250 1550 50  0000 L CNN
F 1 "4.7μF" H 1250 1350 50  0000 L CNN
F 2 "" H 1538 1300 50  0001 C CNN
F 3 "~" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F24D832
P 1650 1700
F 0 "#PWR02" H 1650 1450 50  0001 C CNN
F 1 "GND" H 1655 1527 50  0000 C CNN
F 2 "" H 1650 1700 50  0001 C CNN
F 3 "" H 1650 1700 50  0001 C CNN
	1    1650 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F252A9C
P 1700 2750
F 0 "#PWR03" H 1700 2500 50  0001 C CNN
F 1 "GND" V 1705 2622 50  0000 R CNN
F 2 "" H 1700 2750 50  0001 C CNN
F 3 "" H 1700 2750 50  0001 C CNN
	1    1700 2750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5F2540E8
P 3650 2650
F 0 "J1" H 3730 2692 50  0000 L CNN
F 1 "Conn_01x05_555" H 3730 2601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3650 2650 50  0001 C CNN
F 3 "~" H 3650 2650 50  0001 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
Connection ~ 1250 3550
Wire Wire Line
	1250 3400 1250 3550
Wire Wire Line
	1250 4150 1650 4150
Connection ~ 850  3800
Wire Wire Line
	850  3850 850  3800
Wire Wire Line
	1250 3100 1250 2850
Wire Wire Line
	1250 2850 1700 2850
$Comp
L power:GND #PWR05
U 1 1 5F27A44E
P 3450 2450
F 0 "#PWR05" H 3450 2200 50  0001 C CNN
F 1 "GND" V 3455 2322 50  0000 R CNN
F 2 "" H 3450 2450 50  0001 C CNN
F 3 "" H 3450 2450 50  0001 C CNN
	1    3450 2450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5F27B646
P 3450 2550
F 0 "#PWR06" H 3450 2400 50  0001 C CNN
F 1 "+3V3" V 3465 2678 50  0000 L CNN
F 2 "" H 3450 2550 50  0001 C CNN
F 3 "" H 3450 2550 50  0001 C CNN
	1    3450 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2750 2900 2750
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5F3032F7
P 5750 6000
F 0 "J4" V 5622 6080 50  0000 L CNN
F 1 "Conn_01x02_Sensor" V 5713 6080 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5750 6000 50  0001 C CNN
F 3 "~" H 5750 6000 50  0001 C CNN
	1    5750 6000
	0    1    1    0   
$EndComp
Connection ~ 1250 4150
Connection ~ 3100 2850
Wire Wire Line
	2800 2850 3100 2850
Connection ~ 2900 2750
Wire Wire Line
	2900 2750 3450 2750
Connection ~ 3000 2650
Wire Wire Line
	3000 2650 3450 2650
Wire Wire Line
	2800 2650 3000 2650
Text Label 3000 1450 1    50   ~ 0
SDA
Text Label 2900 1450 1    50   ~ 0
SCL
Wire Wire Line
	5750 5800 5750 5650
Wire Notes Line
	5050 6400 6400 6400
Text Notes 5700 6350 0    50   ~ 0
Capacitor Outside\nPlate
Text Notes 5050 6350 0    50   ~ 0
Capacitor Inside\nPlate
Wire Wire Line
	1250 4150 1250 5100
Wire Wire Line
	1250 5100 5350 5100
$Comp
L power:+3V3 #PWR04
U 1 1 5F30D244
P 3400 2150
F 0 "#PWR04" H 3400 2000 50  0001 C CNN
F 1 "+3V3" H 3415 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F30C2D3
P 3250 2150
F 0 "R6" V 3457 2150 50  0000 C CNN
F 1 "4K7" V 3366 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 2150 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
	1    3250 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 1150 3100 2150
Connection ~ 3100 2150
Wire Wire Line
	3100 2150 3100 2850
Wire Wire Line
	3100 2850 3450 2850
Wire Wire Line
	1450 3700 2950 3700
Wire Wire Line
	1500 1300 1500 1200
Wire Wire Line
	1800 1200 1800 1300
Wire Wire Line
	1500 1600 1500 1700
Wire Wire Line
	1500 1700 1650 1700
Wire Wire Line
	1800 1700 1800 1600
Connection ~ 1650 1700
Wire Wire Line
	1650 1700 1800 1700
$Comp
L power:+3V3 #PWR01
U 1 1 5F4BBCCA
P 1650 1200
F 0 "#PWR01" H 1650 1050 50  0001 C CNN
F 1 "+3V3" H 1665 1373 50  0000 C CNN
F 2 "" H 1650 1200 50  0001 C CNN
F 3 "" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1200 1650 1200
Connection ~ 1650 1200
Wire Wire Line
	1650 1200 1800 1200
Wire Wire Line
	5650 5650 5650 5800
$Comp
L power:GND #PWR0126
U 1 1 5F182082
P 2850 4800
F 0 "#PWR0126" H 2850 4550 50  0001 C CNN
F 1 "GND" H 2855 4627 50  0000 C CNN
F 2 "" H 2850 4800 50  0001 C CNN
F 3 "" H 2850 4800 50  0001 C CNN
	1    2850 4800
	1    0    0    -1  
$EndComp
Text Label 5650 5800 2    50   ~ 0
Sensor_Inside
Text Label 5750 5800 0    50   ~ 0
Sensor_Outside
Text Notes 4150 900  0    50   ~ 0
Moisture Sensor
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J7
U 1 1 5F9AB87D
P 10150 1650
F 0 "J7" H 10200 1967 50  0000 C CNN
F 1 "Samtec CES-104-01-T-D" H 10200 1876 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 10150 1650 50  0001 C CNN
F 3 "~" H 10150 1650 50  0001 C CNN
	1    10150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F9F4F49
P 9950 1550
F 0 "#PWR024" H 9950 1300 50  0001 C CNN
F 1 "GND" V 9955 1422 50  0000 R CNN
F 2 "" H 9950 1550 50  0001 C CNN
F 3 "" H 9950 1550 50  0001 C CNN
	1    9950 1550
	0    1    1    0   
$EndComp
Text HLabel 3100 1150 1    50   Input ~ 0
555_ALERT
Text HLabel 3000 1150 1    50   Input ~ 0
SDA
Text HLabel 2900 1150 1    50   Input ~ 0
SCL
$Comp
L power:+3.3V #PWR025
U 1 1 5F9F5927
P 10450 1550
F 0 "#PWR025" H 10450 1400 50  0001 C CNN
F 1 "+3.3V" V 10465 1678 50  0000 L CNN
F 2 "" H 10450 1550 50  0001 C CNN
F 3 "" H 10450 1550 50  0001 C CNN
	1    10450 1550
	0    1    1    0   
$EndComp
Text Notes 6150 50   0    50   ~ 0
Moisture Sensor
Text HLabel 9950 1850 0    50   Input ~ 0
IQS_RDY
Text HLabel 10450 1750 2    50   Input ~ 0
CAP_ALERT
Text HLabel 9950 1750 0    50   Input ~ 0
555_ALERT
Text HLabel 9950 1650 0    50   Input ~ 0
SDA
Text HLabel 10450 1650 2    50   Input ~ 0
SCL
$Comp
L power:GND #PWR0159
U 1 1 5FA742F9
P 10450 1850
F 0 "#PWR0159" H 10450 1600 50  0001 C CNN
F 1 "GND" V 10455 1722 50  0000 R CNN
F 2 "" H 10450 1850 50  0001 C CNN
F 3 "" H 10450 1850 50  0001 C CNN
	1    10450 1850
	0    -1   -1   0   
$EndComp
Text Notes 2000 2300 0    50   ~ 0
I2C ADDR 0x54
Wire Wire Line
	5350 5650 5650 5650
Wire Wire Line
	5750 5650 6050 5650
$Comp
L power:GND #PWR013
U 1 1 5F304696
P 6050 5650
F 0 "#PWR013" H 6050 5400 50  0001 C CNN
F 1 "GND" H 6055 5477 50  0000 C CNN
F 2 "" H 6050 5650 50  0001 C CNN
F 3 "" H 6050 5650 50  0001 C CNN
	1    6050 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 5100 5350 5650
Wire Wire Line
	3000 1150 3000 2650
Wire Wire Line
	2900 1150 2900 2750
$EndSCHEMATC
