EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2200 1650 0    50   ~ 0
usb breakout\n+tantalum decouplers\n+fix the probe\nleds board + ambient leds\nsensor board\noscillator???\n-look for a different humidity sensor\nstack boards\n+power schematics\n+analog VCC on ADC\n+sleep/wake bus
$Sheet
S 7700 2600 900  800 
U 5F564838
F0 "esp8266" 50
F1 "esp8266_wiring.sch" 50
F2 "SDA" B R 8600 2900 50 
F3 "SCL" O R 8600 3000 50 
F4 "HOST_WAKE_UP" I R 8600 2700 50 
F5 "UART_TXD" I L 7700 2950 50 
F6 "ALL_EN" O R 8600 2800 50 
F7 "UART_RXD" O L 7700 2850 50 
F8 "CHIP_RESET" I L 7700 3150 50 
F9 "BOOT_MODE" I L 7700 3050 50 
F10 "BATT_GAUGE_SHDN" O R 8600 3350 50 
F11 "nCH_PGOOD" I R 8600 3250 50 
$EndSheet
Text Label 1850 4650 2    50   ~ 0
SDA
Text Label 1850 4550 2    50   ~ 0
SCL
$Comp
L power:GND #PWR012
U 1 1 5FCFC642
P 1850 4350
F 0 "#PWR012" H 1850 4100 50  0001 C CNN
F 1 "GND" V 1850 4100 50  0000 C CNN
F 2 "" H 1850 4350 50  0001 C CNN
F 3 "" H 1850 4350 50  0001 C CNN
	1    1850 4350
	0    1    1    0   
$EndComp
Text Label 8950 3000 0    50   ~ 0
SCL
Text Label 8950 2900 0    50   ~ 0
SDA
$Sheet
S 6500 3900 900  550 
U 60DE59F5
F0 "moisture_sensor" 50
F1 "moisture_sensor.sch" 50
$EndSheet
$Comp
L power:GND #PWR03
U 1 1 6027ED70
P 1500 2350
F 0 "#PWR03" H 1500 2100 50  0001 C CNN
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
Text Label 8950 2800 0    50   ~ 0
ALL_EN
Text Label 1500 2850 2    50   ~ 0
ALL_EN
$Comp
L Device:D_Small D1
U 1 1 603E1FEA
P 8750 2800
F 0 "D1" H 8650 2750 50  0000 C CNN
F 1 "LS4148" H 8750 2916 50  0001 C CNN
F 2 "Parts:MELF_SOD_80_3_BZT55B13GS08" V 8750 2800 50  0001 C CNN
F 3 "~" V 8750 2800 50  0001 C CNN
	1    8750 2800
	-1   0    0    1   
$EndComp
Text Label 1500 2750 2    50   ~ 0
HOST_WAKE_UP
$Comp
L power:GND #PWR04
U 1 1 60493E6F
P 3050 2350
F 0 "#PWR04" H 3050 2100 50  0001 C CNN
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
Text Label 3050 2850 2    50   ~ 0
ALL_EN
Text Label 3050 2750 2    50   ~ 0
HOST_WAKE_UP
$Comp
L power:GND #PWR08
U 1 1 60496837
P 3050 3300
F 0 "#PWR08" H 3050 3050 50  0001 C CNN
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
Text Label 3050 3800 2    50   ~ 0
ALL_EN
Text Label 3050 3700 2    50   ~ 0
HOST_WAKE_UP
$Sheet
S 5350 3900 900  550 
U 605E9160
F0 "env_sensor" 50
F1 "env_sensor.sch" 50
$EndSheet
$Sheet
S 7650 3900 900  550 
U 601A2964
F0 "leds" 50
F1 "leds.sch" 50
$EndSheet
$Sheet
S 6500 2650 900  550 
U 5F48275C
F0 "usb_serial" 50
F1 "usb_serial.sch" 50
F2 "CH_CHREN" O L 6500 2750 50 
F3 "CH_CHR0" O L 6500 2850 50 
F4 "CH_CHR1" O L 6500 2950 50 
F5 "BOOT_MODE" O R 7400 3050 50 
F6 "CHIP_RESET" O R 7400 3150 50 
F7 "UART_TXD" O R 7400 2950 50 
F8 "UART_RXD" I R 7400 2850 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5FCFC63C
P 2050 4450
F 0 "J6" H 1950 4650 50  0000 L CNN
F 1 "I2C" H 2050 4650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2050 4450 50  0001 C CNN
F 3 "~" H 2050 4450 50  0001 C CNN
F 4 "Samtec SLW-104-01-T-S" V 2050 4450 50  0001 C CNN "Field4"
	1    2050 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F3DEF4D
P 1500 3300
F 0 "#PWR07" H 1500 3050 50  0001 C CNN
F 1 "GND" V 1505 3172 50  0000 R CNN
F 2 "" H 1500 3300 50  0001 C CNN
F 3 "" H 1500 3300 50  0001 C CNN
	1    1500 3300
	0    1    1    0   
$EndComp
Text Label 1500 3500 2    50   ~ 0
SDA
Text Label 1500 3600 2    50   ~ 0
SCL
Text Label 1500 3800 2    50   ~ 0
ALL_EN
Text Label 1500 3700 2    50   ~ 0
HOST_WAKE_UP
$Comp
L Parts:505567-0671 J3
U 1 1 5F3DEF65
P 1500 3300
F 0 "J3" H 1750 3450 50  0000 C CNN
F 1 "MB_I2C" H 1950 3450 50  0000 C CNN
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
$Comp
L power:GND #PWR011
U 1 1 5F3DEF6D
P 3050 4250
F 0 "#PWR011" H 3050 4000 50  0001 C CNN
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
Text Label 3050 4750 2    50   ~ 0
ALL_EN
Text Label 3050 4650 2    50   ~ 0
HOST_WAKE_UP
$Comp
L Parts:505567-0671 J5
U 1 1 5F3DEF85
P 3050 4250
F 0 "J5" H 3350 4400 50  0000 C CNN
F 1 "MB_I2C" H 3550 4400 50  0000 C CNN
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
L Parts:505567-0671 J1
U 1 1 6045DC89
P 1500 2350
F 0 "J1" H 1750 2500 50  0000 C CNN
F 1 "MB_I2C" H 1950 2500 50  0000 C CNN
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
L Parts:505567-0671 J2
U 1 1 60493E8D
P 3050 2350
F 0 "J2" H 3300 2500 50  0000 C CNN
F 1 "MB_I2C" H 3500 2500 50  0000 C CNN
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
L Parts:505567-0671 J4
U 1 1 60496855
P 3050 3300
F 0 "J4" H 3300 3450 50  0000 C CNN
F 1 "MB_I2C" H 3500 3450 50  0000 C CNN
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
NoConn ~ 2400 3400
NoConn ~ 2400 3300
NoConn ~ 2400 2450
NoConn ~ 2400 2350
$Sheet
S 5350 2650 900  550 
U 610543CF
F0 "charger" 50
F1 "charger.sch" 50
F2 "SCL" I L 5350 2750 50 
F3 "BATT_GAUGE_SHDN" I L 5350 3150 50 
F4 "USB_CHREN" I R 6250 2750 50 
F5 "USB_CHR0" I R 6250 2850 50 
F6 "USB_CHR1" I R 6250 2950 50 
F7 "SDA" B L 5350 2850 50 
F8 "nCH_PGOOD" O L 5350 3050 50 
$EndSheet
Text Notes 9550 1650 0    50   ~ 0
VCC - Power from Source\nGNDPWR - Ground from Source\n3v3 - Regulated 3.3v\nGND - Digital Ground
$Comp
L power:GND #PWR?
U 1 1 617B518B
P 9900 950
AR Path="/5F48275C/617B518B" Ref="#PWR?"  Part="1" 
AR Path="/617B518B" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 9900 700 50  0001 C CNN
F 1 "GND" H 9905 777 50  0000 C CNN
F 2 "" H 9900 950 50  0001 C CNN
F 3 "" H 9900 950 50  0001 C CNN
	1    9900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 617B5197
P 10250 950
AR Path="/5F48275C/617B5197" Ref="#PWR?"  Part="1" 
AR Path="/617B5197" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 10250 750 50  0001 C CNN
F 1 "GNDPWR" H 10254 796 50  0000 C CNN
F 2 "" H 10250 900 50  0001 C CNN
F 3 "" H 10250 900 50  0001 C CNN
	1    10250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 950  9900 850 
Wire Wire Line
	9900 850  10250 850 
Wire Wire Line
	10250 850  10250 950 
Text Label 5200 2750 2    50   ~ 0
SCL
Text Label 5200 2850 2    50   ~ 0
SDA
Wire Wire Line
	6500 2750 6250 2750
Wire Wire Line
	6250 2850 6500 2850
Wire Wire Line
	6500 2950 6250 2950
Wire Wire Line
	8950 3000 8600 3000
Text Label 8950 2700 0    50   ~ 0
HOST_WAKE_UP
Wire Wire Line
	8600 2700 8950 2700
Wire Wire Line
	8600 2900 8950 2900
Wire Wire Line
	8650 2800 8600 2800
Wire Wire Line
	8850 2800 8950 2800
Wire Wire Line
	7700 2850 7400 2850
Wire Wire Line
	7400 2950 7700 2950
Wire Wire Line
	7700 3050 7400 3050
Wire Wire Line
	7400 3150 7700 3150
Wire Wire Line
	5200 2750 5350 2750
Wire Wire Line
	5350 2850 5200 2850
Wire Wire Line
	8600 3350 8750 3350
Wire Wire Line
	8750 3350 8750 3600
Wire Wire Line
	8750 3600 5200 3600
Wire Wire Line
	5200 3600 5200 3150
Wire Wire Line
	5200 3150 5350 3150
$Comp
L power:+3V3 #PWR05
U 1 1 619A414D
P 1500 2450
F 0 "#PWR05" H 1500 2300 50  0001 C CNN
F 1 "+3V3" V 1515 2578 50  0000 L CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 619A4748
P 3050 2450
F 0 "#PWR06" H 3050 2300 50  0001 C CNN
F 1 "+3V3" V 3065 2578 50  0000 L CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 619A4B96
P 3050 3400
F 0 "#PWR010" H 3050 3250 50  0001 C CNN
F 1 "+3V3" V 3065 3528 50  0000 L CNN
F 2 "" H 3050 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0001 C CNN
	1    3050 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR013
U 1 1 619A4F33
P 3050 4350
F 0 "#PWR013" H 3050 4200 50  0001 C CNN
F 1 "+3V3" V 3065 4478 50  0000 L CNN
F 2 "" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    3050 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 619A517D
P 1500 3400
F 0 "#PWR09" H 1500 3250 50  0001 C CNN
F 1 "+3V3" V 1515 3528 50  0000 L CNN
F 2 "" H 1500 3400 50  0001 C CNN
F 3 "" H 1500 3400 50  0001 C CNN
	1    1500 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 619AA26A
P 1850 4450
F 0 "#PWR014" H 1850 4300 50  0001 C CNN
F 1 "+3V3" V 1850 4700 50  0000 C CNN
F 2 "" H 1850 4450 50  0001 C CNN
F 3 "" H 1850 4450 50  0001 C CNN
	1    1850 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3050 5100 3050
Wire Wire Line
	5100 3700 8850 3700
Wire Wire Line
	8850 3700 8850 3250
Wire Wire Line
	8850 3250 8600 3250
Wire Wire Line
	5100 3050 5100 3700
$EndSCHEMATC
