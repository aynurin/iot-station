EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
Text Label 9250 4850 0    50   ~ 0
SDA
Text Label 9250 4750 0    50   ~ 0
SCL
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
Text Label 1950 6750 1    50   ~ 0
SDA
Text Label 2050 6750 1    50   ~ 0
SCL
$Comp
L power:+3.3V #PWR0143
U 1 1 5FCFC648
P 2150 6750
F 0 "#PWR0143" H 2150 6600 50  0001 C CNN
F 1 "+3.3V" V 2150 7000 50  0000 C CNN
F 2 "" H 2150 6750 50  0001 C CNN
F 3 "" H 2150 6750 50  0001 C CNN
	1    2150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5FCFC642
P 2250 6750
F 0 "#PWR0140" H 2250 6500 50  0001 C CNN
F 1 "GND" V 2250 6550 50  0000 C CNN
F 2 "" H 2250 6750 50  0001 C CNN
F 3 "" H 2250 6750 50  0001 C CNN
	1    2250 6750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5FCFC63C
P 2150 6950
F 0 "J9" V 2150 6550 50  0000 L CNN
F 1 "I2C SCREEN" V 2300 6650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2150 6950 50  0001 C CNN
F 3 "~" H 2150 6950 50  0001 C CNN
F 4 "Samtec SLW-104-01-T-S" V 2150 6950 50  0001 C CNN "Field4"
	1    2150 6950
	0    1    1    0   
$EndComp
Text Label 8600 2350 0    50   ~ 0
SCL
Text Label 8600 2250 0    50   ~ 0
SDA
Text Label 2500 6750 1    50   ~ 0
SDA
Text Label 2600 6750 1    50   ~ 0
SCL
$Comp
L power:+3.3V #PWR0139
U 1 1 5FB0334A
P 2700 6750
F 0 "#PWR0139" H 2700 6600 50  0001 C CNN
F 1 "+3.3V" V 2700 7000 50  0000 C CNN
F 2 "" H 2700 6750 50  0001 C CNN
F 3 "" H 2700 6750 50  0001 C CNN
	1    2700 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5FB01C12
P 2800 6750
F 0 "#PWR0138" H 2800 6500 50  0001 C CNN
F 1 "GND" V 2800 6550 50  0000 C CNN
F 2 "" H 2800 6750 50  0001 C CNN
F 3 "" H 2800 6750 50  0001 C CNN
	1    2800 6750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 5FAF3653
P 2700 6950
F 0 "J10" V 2700 6550 50  0000 L CNN
F 1 "I2C HOST" V 2850 6700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2700 6950 50  0001 C CNN
F 3 "~" H 2700 6950 50  0001 C CNN
F 4 "Samtec SLW-104-01-T-S" V 2700 6950 50  0001 C CNN "Field4"
	1    2700 6950
	0    1    1    0   
$EndComp
$Sheet
S 4550 6850 900  550 
U 60DE59F5
F0 "MoistureSensor01" 50
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
$Comp
L power:+3V3 #PWR02
U 1 1 6027F706
P 1500 2450
F 0 "#PWR02" H 1500 2300 50  0001 C CNN
F 1 "+3V3" V 1515 2578 50  0000 L CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2450
	0    -1   -1   0   
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
F 1 "D_Small" H 1400 2966 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 1400 2850 50  0001 C CNN
F 3 "~" V 1400 2850 50  0001 C CNN
	1    1400 2850
	-1   0    0    1   
$EndComp
Text Label 1500 2750 2    50   ~ 0
HOST_WAKE
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
NoConn ~ 2400 2350
NoConn ~ 2400 2450
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
$Comp
L power:+3V3 #PWR010
U 1 1 60493E75
P 3050 2450
F 0 "#PWR010" H 3050 2300 50  0001 C CNN
F 1 "+3V3" V 3065 2578 50  0000 L CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    -1   -1   0   
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
F 1 "D_Small" H 2950 2966 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 2950 2850 50  0001 C CNN
F 3 "~" V 2950 2850 50  0001 C CNN
	1    2950 2850
	-1   0    0    1   
$EndComp
Text Label 3050 2750 2    50   ~ 0
HOST_WAKE
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
NoConn ~ 3950 2350
NoConn ~ 3950 2450
$Comp
L power:GND #PWR03
U 1 1 6049521E
P 1500 3300
F 0 "#PWR03" H 1500 3050 50  0001 C CNN
F 1 "GND" V 1505 3172 50  0000 R CNN
F 2 "" H 1500 3300 50  0001 C CNN
F 3 "" H 1500 3300 50  0001 C CNN
	1    1500 3300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 60495224
P 1500 3400
F 0 "#PWR04" H 1500 3250 50  0001 C CNN
F 1 "+3V3" V 1515 3528 50  0000 L CNN
F 2 "" H 1500 3400 50  0001 C CNN
F 3 "" H 1500 3400 50  0001 C CNN
	1    1500 3400
	0    -1   -1   0   
$EndComp
Text Label 1500 3500 2    50   ~ 0
SDA
Text Label 1500 3600 2    50   ~ 0
SCL
Text Label 1300 3800 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D7
U 1 1 6049522D
P 1400 3800
F 0 "D7" H 1300 3750 50  0000 C CNN
F 1 "D_Small" H 1400 3916 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 1400 3800 50  0001 C CNN
F 3 "~" V 1400 3800 50  0001 C CNN
	1    1400 3800
	-1   0    0    1   
$EndComp
Text Label 1500 3700 2    50   ~ 0
HOST_WAKE
$Comp
L Parts:505567-0671 J3
U 1 1 6049523C
P 1500 3300
F 0 "J3" H 1950 3565 50  0000 C CNN
F 1 "MB_I2C" H 1950 3474 50  0000 C CNN
F 2 "Parts:Molex_Conn_SMD_01x06_505567_0671" H 2250 3400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/505567-0671.pdf" H 2250 3300 50  0001 L CNN
F 4 "Molex Micro-Lock PLUS 505567, 1.25mm Pitch, 6 Way, 1 Row, Right Angle PCB Header, Surface Mount" H 2250 3200 50  0001 L CNN "Description"
F 5 "4.2" H 2250 3100 50  0001 L CNN "Height"
F 6 "Molex" H 2250 3000 50  0001 L CNN "Manufacturer_Name"
F 7 "505567-0671" H 2250 2900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "505567-0671" H 2250 2800 50  0001 L CNN "Arrow Part Number"
F 9 "" H 2250 2700 50  0001 L CNN "Arrow Price/Stock"
F 10 "538-505567-0671" H 2250 2600 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Molex/505567-0671?qs=gt1LBUVyoHmQuimOt9l14w%3D%3D" H 2250 2500 50  0001 L CNN "Mouser Price/Stock"
	1    1500 3300
	1    0    0    -1  
$EndComp
NoConn ~ 2400 3300
NoConn ~ 2400 3400
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
$Comp
L power:+3V3 #PWR012
U 1 1 6049683D
P 3050 3400
F 0 "#PWR012" H 3050 3250 50  0001 C CNN
F 1 "+3V3" V 3065 3528 50  0000 L CNN
F 2 "" H 3050 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0001 C CNN
	1    3050 3400
	0    -1   -1   0   
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
F 1 "D_Small" H 2950 3916 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 2950 3800 50  0001 C CNN
F 3 "~" V 2950 3800 50  0001 C CNN
	1    2950 3800
	-1   0    0    1   
$EndComp
Text Label 3050 3700 2    50   ~ 0
HOST_WAKE
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
NoConn ~ 3950 3300
NoConn ~ 3950 3400
$Comp
L power:GND #PWR016
U 1 1 6056E056
P 9650 4000
AR Path="/6056E056" Ref="#PWR016"  Part="1" 
AR Path="/601A2964/6056E056" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 9650 3750 50  0001 C CNN
F 1 "GND" H 9650 3850 50  0000 C CNN
F 2 "" H 9650 4000 50  0001 C CNN
F 3 "" H 9650 4000 50  0001 C CNN
	1    9650 4000
	-1   0    0    1   
$EndComp
Text Notes 7950 4600 0    50   ~ 0
I2C ADDR 0x28
$Comp
L power:GND #PWR014
U 1 1 6056E05D
P 9250 5150
AR Path="/6056E05D" Ref="#PWR014"  Part="1" 
AR Path="/601A2964/6056E05D" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 9250 4900 50  0001 C CNN
F 1 "GND" H 9250 5000 50  0000 C CNN
F 2 "" H 9250 5150 50  0001 C CNN
F 3 "" H 9250 5150 50  0001 C CNN
	1    9250 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6056E063
P 9400 5050
AR Path="/6056E063" Ref="#PWR015"  Part="1" 
AR Path="/601A2964/6056E063" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 9400 4800 50  0001 C CNN
F 1 "GND" H 9400 4900 50  0000 C CNN
F 2 "" H 9400 5050 50  0001 C CNN
F 3 "" H 9400 5050 50  0001 C CNN
	1    9400 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6056E069
P 9650 4150
AR Path="/6056E069" Ref="C1"  Part="1" 
AR Path="/601A2964/6056E069" Ref="C?"  Part="1" 
F 0 "C1" V 9550 4000 50  0000 L CNN
F 1 "1μF" V 9550 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9650 4150 50  0001 C CNN
F 3 "~" H 9650 4150 50  0001 C CNN
	1    9650 4150
	-1   0    0    1   
$EndComp
NoConn ~ 8550 5450
NoConn ~ 8450 5450
NoConn ~ 8350 5450
NoConn ~ 8250 5450
NoConn ~ 8150 5450
NoConn ~ 8050 5450
$Comp
L Device:R R1
U 1 1 6056E075
P 9900 4150
AR Path="/6056E075" Ref="R1"  Part="1" 
AR Path="/601A2964/6056E075" Ref="R?"  Part="1" 
F 0 "R1" V 10000 4200 50  0000 L CNN
F 1 "4K9" V 9900 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
	1    9900 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6056E07B
P 9250 4350
AR Path="/6056E07B" Ref="#PWR013"  Part="1" 
AR Path="/601A2964/6056E07B" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 9250 4100 50  0001 C CNN
F 1 "GND" H 9250 4200 50  0000 C CNN
F 2 "" H 9250 4350 50  0001 C CNN
F 3 "" H 9250 4350 50  0001 C CNN
	1    9250 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 4300 9900 4550
Wire Wire Line
	9650 4250 9650 4450
Wire Wire Line
	9700 4950 9700 5150
Connection ~ 9900 5150
Wire Wire Line
	9700 5150 9900 5150
Wire Wire Line
	9900 5350 9900 5400
Wire Wire Line
	9900 5100 9900 5150
$Comp
L Device:C_Small C2
U 1 1 6056E088
P 9900 5250
AR Path="/6056E088" Ref="C2"  Part="1" 
AR Path="/601A2964/6056E088" Ref="C?"  Part="1" 
F 0 "C2" V 9800 5100 50  0000 L CNN
F 1 "1μF" V 9800 5300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9900 5250 50  0001 C CNN
F 3 "~" H 9900 5250 50  0001 C CNN
	1    9900 5250
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR018
U 1 1 6056E08E
P 9900 5100
AR Path="/6056E08E" Ref="#PWR018"  Part="1" 
AR Path="/601A2964/6056E08E" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 9900 4950 50  0001 C CNN
F 1 "+3V3" H 9900 5250 50  0000 C CNN
F 2 "" H 9900 5100 50  0001 C CNN
F 3 "" H 9900 5100 50  0001 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6056E094
P 9900 5400
AR Path="/6056E094" Ref="#PWR019"  Part="1" 
AR Path="/601A2964/6056E094" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 9900 5150 50  0001 C CNN
F 1 "GND" H 9900 5250 50  0000 C CNN
F 2 "" H 9900 5400 50  0001 C CNN
F 3 "" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6056E09A
P 9900 4000
AR Path="/6056E09A" Ref="#PWR017"  Part="1" 
AR Path="/601A2964/6056E09A" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 9900 3750 50  0001 C CNN
F 1 "GND" H 9900 3850 50  0000 C CNN
F 2 "" H 9900 4000 50  0001 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
	1    9900 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 4050 9650 4000
Text Notes 8400 5800 0    50   ~ 0
Lights Driver
Text Label 7950 4050 1    50   ~ 0
LED_3_R
Text Label 7150 4450 2    50   ~ 0
LED_4_R
Text Label 7150 4750 2    50   ~ 0
LED_5_R
Text Label 7150 5050 2    50   ~ 0
LED_6_R
Text Label 8550 4050 1    50   ~ 0
LED_1_R
Text Label 8250 4050 1    50   ~ 0
LED_2_R
Text Label 7850 4050 1    50   ~ 0
LED_3_G
Text Label 7150 4550 2    50   ~ 0
LED_4_G
Text Label 7150 4850 2    50   ~ 0
LED_5_G
Text Label 7850 5450 3    50   ~ 0
LED_6_G
Text Label 8450 4050 1    50   ~ 0
LED_1_G
Text Label 8150 4050 1    50   ~ 0
LED_2_G
Text Label 7150 4350 2    50   ~ 0
LED_3_B
Text Label 7150 4950 2    50   ~ 0
LED_5_B
Text Label 7950 5450 3    50   ~ 0
LED_6_B
Text Label 8350 4050 1    50   ~ 0
LED_1_B
Text Label 8050 4050 1    50   ~ 0
LED_2_B
Wire Wire Line
	9400 5050 9250 5050
Wire Wire Line
	9700 4950 9250 4950
Wire Wire Line
	9900 4550 9250 4550
Wire Wire Line
	9650 4450 9250 4450
$Comp
L SamaSys:LP5024RSMR LEDDRV1
U 1 1 6056E0BD
P 8550 4050
AR Path="/6056E0BD" Ref="LEDDRV1"  Part="1" 
AR Path="/601A2964/6056E0BD" Ref="LEDDRV?"  Part="1" 
F 0 "LEDDRV1" V 9200 3700 50  0000 C CNN
F 1 "LP5024RSMR" V 9350 3700 50  0000 C CNN
F 2 "SamacSys:QFN40P400X400X100-33N-D" H 9800 4550 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/lp5024" H 9800 4450 50  0001 L CNN
F 4 "24-Channel I2C Constant-Current RGB LED Driver " H 9800 4350 50  0001 L CNN "Description"
F 5 "1" H 9800 4250 50  0001 L CNN "Height"
F 6 "595-LP5024RSMR" H 9800 4150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LP5024RSMR?qs=55YtniHzbhDVcrbfuIdigg%3D%3D" H 9800 4050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9800 3950 50  0001 L CNN "Manufacturer_Name"
F 9 "LP5024RSMR" H 9800 3850 50  0001 L CNN "Manufacturer_Part_Number"
	1    8550 4050
	0    1    1    0   
$EndComp
Text Label 7150 4650 2    50   ~ 0
LED_4_B
$Comp
L Parts:ZF5S-20-01-T-WT-TR J4
U 1 1 6056E0CB
P 1500 5900
AR Path="/6056E0CB" Ref="J4"  Part="1" 
AR Path="/601A2964/6056E0CB" Ref="J?"  Part="1" 
F 0 "J4" H 2000 6165 50  0000 C CNN
F 1 "ZF5S-20-01-T-WT-TR" H 2000 6074 50  0000 C CNN
F 2 "Parts:ZF5S2001TWTTR" H 2350 6000 50  0001 L CNN
F 3 "http://suddendocs.samtec.com/prints/zf5s-xx-xx-x-wt-x-xx-mkt.pdf" H 2350 5900 50  0001 L CNN
F 4 "FFC & FPC Connectors 0.50 mm Zero Insertion Force FFC Connector" H 2350 5800 50  0001 L CNN "Description"
F 5 "2.1" H 2350 5700 50  0001 L CNN "Height"
F 6 "SAMTEC" H 2350 5600 50  0001 L CNN "Manufacturer_Name"
F 7 "ZF5S-20-01-T-WT-TR" H 2350 5500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "ZF5S-20-01-T-WT-TR" H 2350 5400 50  0001 L CNN "Arrow Part Number"
F 9 "200-ZF5S2001TWTTR" H 2350 5200 50  0001 L CNN "Mouser Part Number"
F 10 "https://www.mouser.co.uk/ProductDetail/Samtec/ZF5S-20-01-T-WT-TR?qs=%252BZP6%2F%252BtExtCkFHwqnl54nQ%3D%3D" H 2350 5100 50  0001 L CNN "Mouser Price/Stock"
	1    1500 5900
	0    -1   -1   0   
$EndComp
Text Label 2300 4900 1    50   ~ 0
LED_3_R
Text Label 1700 4900 1    50   ~ 0
LED_1_R
Text Label 2000 4900 1    50   ~ 0
LED_2_R
Text Label 2400 4900 1    50   ~ 0
LED_3_G
Text Label 1800 4900 1    50   ~ 0
LED_1_G
Text Label 2100 4900 1    50   ~ 0
LED_2_G
Text Label 1900 4900 1    50   ~ 0
LED_1_B
Text Label 2200 4900 1    50   ~ 0
LED_2_B
Text Label 2600 4900 1    50   ~ 0
LED_4_R
Text Label 2900 4900 1    50   ~ 0
LED_5_R
Text Label 3200 4900 1    50   ~ 0
LED_6_R
Text Label 2700 4900 1    50   ~ 0
LED_4_G
Text Label 3000 4900 1    50   ~ 0
LED_5_G
Text Label 2500 4900 1    50   ~ 0
LED_3_B
Text Label 3100 4900 1    50   ~ 0
LED_5_B
Text Label 2800 4900 1    50   ~ 0
LED_4_B
Text Label 3300 4900 1    50   ~ 0
LED_6_G
Text Label 3400 4900 1    50   ~ 0
LED_6_B
$Comp
L power:GND #PWR05
U 1 1 6056E0E3
P 1500 4900
AR Path="/6056E0E3" Ref="#PWR05"  Part="1" 
AR Path="/601A2964/6056E0E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 1500 4650 50  0001 C CNN
F 1 "GND" V 1505 4772 50  0000 R CNN
F 2 "" H 1500 4900 50  0001 C CNN
F 3 "" H 1500 4900 50  0001 C CNN
	1    1500 4900
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 6056E0E9
P 1600 4900
AR Path="/6056E0E9" Ref="#PWR07"  Part="1" 
AR Path="/601A2964/6056E0E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1600 4750 50  0001 C CNN
F 1 "+3V3" V 1615 5028 50  0000 L CNN
F 2 "" H 1600 4900 50  0001 C CNN
F 3 "" H 1600 4900 50  0001 C CNN
	1    1600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6056E0F2
P 1500 5900
AR Path="/601A2964/6056E0F2" Ref="#PWR?"  Part="1" 
AR Path="/6056E0F2" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1500 5650 50  0001 C CNN
F 1 "GND" H 1505 5727 50  0000 C CNN
F 2 "" H 1500 5900 50  0001 C CNN
F 3 "" H 1500 5900 50  0001 C CNN
	1    1500 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6056E0F8
P 1600 5900
AR Path="/601A2964/6056E0F8" Ref="#PWR?"  Part="1" 
AR Path="/6056E0F8" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1600 5650 50  0001 C CNN
F 1 "GND" H 1605 5727 50  0000 C CNN
F 2 "" H 1600 5900 50  0001 C CNN
F 3 "" H 1600 5900 50  0001 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
Text Label 9250 4650 0    50   ~ 0
ALL_EN
$Sheet
S 3550 6850 900  550 
U 605E9160
F0 "Sheet605E915F" 50
F1 "env_sensor.sch" 50
$EndSheet
$Sheet
S 5600 6850 900  550 
U 601A2964
F0 "leds" 50
F1 "leds.sch" 50
$EndSheet
$EndSCHEMATC
