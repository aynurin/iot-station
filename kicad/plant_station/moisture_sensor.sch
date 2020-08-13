EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L Device:C Cref1
U 1 1 5F168BA9
P 9000 4550
F 0 "Cref1" H 9115 4596 50  0000 L CNN
F 1 "470pF" H 9115 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9038 4400 50  0001 C CNN
F 3 "~" H 9000 4550 50  0001 C CNN
	1    9000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4150 7350 4150
Wire Wire Line
	8850 4050 8850 4350
Wire Wire Line
	7550 3950 7450 3950
Wire Wire Line
	7450 3950 7450 4350
$Comp
L SamaSys:TLC555CDR IC3
U 1 1 5F161298
P 7550 3850
F 0 "IC3" H 8150 3850 50  0000 C CNN
F 1 "TLC555CDR" H 8150 3400 50  0000 C CNN
F 2 "SamacSys:SOIC127P600X175-8N" H 8600 3950 50  0001 L CNN
F 3 "" H 8600 3850 50  0001 L CNN
F 4 "TLC555CDR, Timer 2MHz, 2 ??? 15 V, 8-Pin SOIC-8" H 8600 3750 50  0001 L CNN "Description"
F 5 "1.75" H 8600 3650 50  0001 L CNN "Height"
F 6 "595-TLC555CDR" H 8600 3550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TLC555CDR?qs=gb35HGp1gQImgWgRW%252BGYaw%3D%3D" H 8600 3450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8600 3350 50  0001 L CNN "Manufacturer_Name"
F 9 "TLC555CDR" H 8600 3250 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F1814FE
P 8750 4550
F 0 "C5" H 8550 4600 50  0000 L CNN
F 1 "10nF" H 8450 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8788 4400 50  0001 C CNN
F 3 "~" H 8750 4550 50  0001 C CNN
	1    8750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3850 8850 3850
Wire Wire Line
	8750 4050 8850 4050
Wire Wire Line
	8750 4150 8750 4400
Wire Wire Line
	7450 4350 8850 4350
Wire Wire Line
	8850 4350 9000 4350
Wire Wire Line
	9000 3950 9000 4000
$Comp
L Device:R Rb1
U 1 1 5F168492
P 9000 4150
F 0 "Rb1" H 9070 4196 50  0000 L CNN
F 1 "1K6" H 9070 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8930 4150 50  0001 C CNN
F 3 "~" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
Connection ~ 9000 3950
Wire Wire Line
	8750 3950 9000 3950
Wire Wire Line
	9000 3900 9000 3950
$Comp
L Device:R Ra1
U 1 1 5F168179
P 9000 3750
F 0 "Ra1" H 9070 3796 50  0000 L CNN
F 1 "330" H 9070 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 3750 50  0001 C CNN
F 3 "~" H 9000 3750 50  0001 C CNN
	1    9000 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F1B3158
P 7150 3900
F 0 "D1" V 7050 3950 50  0000 L CNN
F 1 "LS4148" H 7050 3800 50  0001 L CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" H 7150 3900 50  0001 C CNN
F 3 "~" H 7150 3900 50  0001 C CNN
	1    7150 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1B3F12
P 6950 3700
F 0 "R4" V 6850 3700 50  0000 C CNN
F 1 "1M" V 6950 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6880 3700 50  0001 C CNN
F 3 "~" H 6950 3700 50  0001 C CNN
	1    6950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3700 7150 3700
Connection ~ 7150 3700
Wire Wire Line
	7150 3700 7150 3750
Wire Wire Line
	6800 3700 6750 3700
Wire Wire Line
	9000 4300 9000 4350
Connection ~ 8850 4350
Connection ~ 9000 4350
Wire Wire Line
	9000 4350 9000 4400
Wire Wire Line
	8850 3600 9000 3600
$Comp
L Device:C C3
U 1 1 5F16FB60
P 5050 3450
F 0 "C3" H 5150 3350 50  0000 L CNN
F 1 "0.1μF" H 5150 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5088 3300 50  0001 C CNN
F 3 "~" H 5050 3450 50  0001 C CNN
	1    5050 3450
	-1   0    0    1   
$EndComp
Connection ~ 8850 3600
Wire Wire Line
	8850 3600 8850 3850
Wire Wire Line
	7350 3600 7350 4150
Wire Wire Line
	6750 3700 6750 3450
Wire Wire Line
	6800 3450 6750 3450
Wire Wire Line
	7150 3450 7150 3700
Wire Wire Line
	7100 3450 7150 3450
$Comp
L Device:C C4
U 1 1 5F1B4621
P 6950 3450
F 0 "C4" V 6850 3350 50  0000 C CNN
F 1 "1μF" V 6850 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6988 3300 50  0001 C CNN
F 3 "~" H 6950 3450 50  0001 C CNN
	1    6950 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F2145C6
P 7150 3150
F 0 "R5" H 7220 3196 50  0000 L CNN
F 1 "22" H 7220 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
Connection ~ 7150 3450
Wire Wire Line
	7150 3300 7150 3450
Wire Wire Line
	7150 4050 7550 4050
Wire Wire Line
	7150 3000 7150 2750
Text Label 8700 2550 0    50   ~ 0
SDA
Text Label 8700 2650 0    50   ~ 0
SCL
Wire Wire Line
	7350 3600 8850 3600
Wire Wire Line
	5350 3600 5350 3700
Wire Wire Line
	5050 3700 5050 3600
Wire Wire Line
	5050 3200 5050 3300
Text Label 7150 4050 2    50   ~ 0
Sensor_Inside
Text Label 5350 3700 0    50   ~ 0
Sensor_Outside
Text Notes 7400 7500 0    50   ~ 0
Moisture Sensor
Text Notes 6150 50   0    50   ~ 0
Moisture Sensor
Text Notes 7850 2200 0    50   ~ 0
I2C ADDR 0x54
$Comp
L Transistor_BJT:DTC113Z Q1
U 1 1 5F30B926
P 5100 3900
F 0 "Q1" H 5288 3946 50  0000 L CNN
F 1 "DTC113Z" H 5288 3855 50  0000 L CNN
F 2 "Parts:DTC113ZEBTL" H 5100 3900 50  0001 L CNN
F 3 "" H 5100 3900 50  0001 L CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F30EBF5
P 5200 4400
F 0 "#PWR0119" H 5200 4150 50  0001 C CNN
F 1 "GND" H 5205 4227 50  0000 C CNN
F 2 "" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5F30F8CD
P 5200 3050
F 0 "FB1" V 5050 3000 50  0000 L CNN
F 1 "BLM21AG601SZ1D" V 5350 2900 50  0001 L CNN
F 2 "Parts:Ferrite_Bead_0805_BLM21" V 5130 3050 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/281/QNFA9114-1485065.pdf" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5F343F65
P 5200 4250
F 0 "FB2" V 5050 4200 50  0000 L CNN
F 1 "BLM21AG601SZ1D" V 5350 4000 50  0001 L CNN
F 2 "Parts:Ferrite_Bead_0805_BLM21" V 5130 4250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/281/QNFA9114-1485065.pdf" H 5200 4250 50  0001 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3700 5200 3700
Wire Wire Line
	5350 3200 5200 3200
Wire Wire Line
	7150 2750 7600 2750
$Comp
L SamaSys:ADC081C021CIMK_NOPB IC4
U 1 1 5EFC5A0F
P 7600 2550
F 0 "IC4" H 8150 2815 50  0000 C CNN
F 1 "ADC081C021CIMK_NOPB" H 8150 2724 50  0000 C CNN
F 2 "SamacSys:SOT95P280X110-6N" H 8550 2650 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/adc081c021.pdf" H 8550 2550 50  0001 L CNN
F 4 "I2C-Compatible, 8-Bit Analog-to-Digital Converter with Alert Pin" H 8550 2450 50  0001 L CNN "Description"
F 5 "1.1" H 8550 2350 50  0001 L CNN "Height"
F 6 "926-AD081C021CIMKNPB" H 8550 2250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/ADC081C021CIMK-NOPB?qs=7X5t%252BdzoRHAIDTGEBrDAMg%3D%3D" H 8550 2150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8550 2050 50  0001 L CNN "Manufacturer_Name"
F 9 "ADC081C021CIMK/NOPB" H 8550 1950 50  0001 L CNN "Manufacturer_Part_Number"
	1    7600 2550
	1    0    0    -1  
$EndComp
Connection ~ 5200 3200
Wire Wire Line
	5200 3200 5050 3200
Connection ~ 5200 3700
Wire Wire Line
	5200 3700 5050 3700
Wire Wire Line
	4400 3900 4500 3900
Text Label 5050 3700 2    50   ~ 0
GNDA
Text Label 5050 3200 2    50   ~ 0
VA
Text Label 8050 3600 0    50   ~ 0
VA
Text Label 7600 2550 2    50   ~ 0
VA
Text Label 7600 2650 2    50   ~ 0
GNDA
Text Label 7550 3850 2    50   ~ 0
GNDA
Text Label 8750 4700 3    50   ~ 0
GNDA
Text Label 9000 4700 3    50   ~ 0
GNDA
Wire Wire Line
	4700 3900 4850 3900
$Comp
L Device:D_Small D10
U 1 1 6035AAFA
P 4600 3900
F 0 "D10" H 4500 3850 50  0000 C CNN
F 1 "LS4148" H 4600 3784 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 4600 3900 50  0001 C CNN
F 3 "~" V 4600 3900 50  0001 C CNN
	1    4600 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626B45
P 2650 3600
AR Path="/60626B45" Ref="#PWR?"  Part="1" 
AR Path="/60DE59F5/60626B45" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 2650 3350 50  0001 C CNN
F 1 "GND" V 2655 3472 50  0000 R CNN
F 2 "" H 2650 3600 50  0001 C CNN
F 3 "" H 2650 3600 50  0001 C CNN
	1    2650 3600
	0    1    1    0   
$EndComp
Text Label 2650 3800 2    50   ~ 0
SDA
Text Label 2650 3900 2    50   ~ 0
SCL
Text Label 2650 4100 2    50   ~ 0
ALL_EN
Text Label 2650 4000 2    50   ~ 0
HOST_WAKE
$Comp
L Parts:505567-0671 J?
U 1 1 60626B63
P 2650 3600
AR Path="/60626B63" Ref="J?"  Part="1" 
AR Path="/60DE59F5/60626B63" Ref="J11"  Part="1" 
F 0 "J11" H 3100 3865 50  0000 C CNN
F 1 "SOIL_I2C" H 3100 3774 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 3400 3700 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 3400 3600 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 3400 3500 50  0001 L CNN "Description"
F 5 "4.2" H 3400 3400 50  0001 L CNN "Height"
F 6 "Molex" H 3400 3300 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 3400 3200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 3400 3100 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3400 3000 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 3400 2900 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 3400 2800 50  0001 L CNN "Mouser Price/Stock"
	1    2650 3600
	1    0    0    -1  
$EndComp
NoConn ~ 3550 3600
NoConn ~ 3550 3700
Text Label 8700 2750 0    50   ~ 0
HOST_WAKE
Text Label 4400 3900 2    50   ~ 0
ALL_EN
Text Label 6750 3700 1    50   ~ 0
GNDA
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 606F4821
P 9800 850
F 0 "#FLG0103" H 9800 925 50  0001 C CNN
F 1 "PWR_FLAG" H 9800 1023 50  0000 C CNN
F 2 "" H 9800 850 50  0001 C CNN
F 3 "~" H 9800 850 50  0001 C CNN
	1    9800 850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 606F55AA
P 10200 850
F 0 "#FLG0104" H 10200 925 50  0001 C CNN
F 1 "PWR_FLAG" H 10200 1023 50  0000 C CNN
F 2 "" H 10200 850 50  0001 C CNN
F 3 "~" H 10200 850 50  0001 C CNN
	1    10200 850 
	1    0    0    -1  
$EndComp
Text Label 9800 850  2    50   ~ 0
GNDA
Text Label 10200 850  2    50   ~ 0
VA
$Comp
L power:VDD #PWR050
U 1 1 5FA790A3
P 2650 3700
F 0 "#PWR050" H 2650 3550 50  0001 C CNN
F 1 "VDD" V 2665 3827 50  0000 L CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0001 C CNN
	1    2650 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR053
U 1 1 5FA7AA52
P 5200 2900
F 0 "#PWR053" H 5200 2750 50  0001 C CNN
F 1 "VDD" H 5215 3073 50  0000 C CNN
F 2 "" H 5200 2900 50  0001 C CNN
F 3 "" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3300 5350 3200
$Comp
L Device:C C7
U 1 1 5FCEA2F8
P 5350 3450
F 0 "C7" H 5465 3496 50  0000 L CNN
F 1 "4.7uF" H 5465 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5388 3300 50  0001 C CNN
F 3 "~" H 5350 3450 50  0001 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J18
U 1 1 5F4FBEBB
P 5800 4200
F 0 "J18" H 5880 4192 50  0000 L CNN
F 1 "ALWAYS_ON" H 5880 4101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 4200 50  0001 C CNN
F 3 "~" H 5800 4200 50  0001 C CNN
	1    5800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4100 5600 4100
Wire Wire Line
	5600 4100 5600 4200
Connection ~ 5200 4100
Wire Wire Line
	5600 4300 5600 4400
Wire Wire Line
	5600 4400 5200 4400
Connection ~ 5200 4400
$EndSCHEMATC
