EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L teensy:Teensy3.2 U1
U 1 1 5E9958A4
P 5650 4250
F 0 "U1" H 5650 5887 60  0000 C CNN
F 1 "Teensy3.2" H 5650 5781 60  0000 C CNN
F 2 "teensy:Teensy30_31_32_LC" H 5650 3500 60  0001 C CNN
F 3 "" H 5650 3500 60  0000 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5E998376
P 10500 900
F 0 "J1" H 10472 874 50  0000 R CNN
F 1 "CN29" H 10472 783 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10500 900 50  0001 C CNN
F 3 "~" H 10500 900 50  0001 C CNN
	1    10500 900 
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5E99C6FC
P 10500 1750
F 0 "J2" H 10472 1724 50  0000 R CNN
F 1 "CN29KB" H 10472 1633 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10500 1750 50  0001 C CNN
F 3 "~" H 10500 1750 50  0001 C CNN
	1    10500 1750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5E9A4CF5
P 10500 2700
F 0 "J3" H 10472 2674 50  0000 R CNN
F 1 "CN30" H 10472 2583 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10500 2700 50  0001 C CNN
F 3 "~" H 10500 2700 50  0001 C CNN
	1    10500 2700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5E9A5DA1
P 10500 3550
F 0 "J4" H 10472 3524 50  0000 R CNN
F 1 "CN30KB" H 10472 3433 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10500 3550 50  0001 C CNN
F 3 "~" H 10500 3550 50  0001 C CNN
	1    10500 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 2400 10200 2400
Wire Wire Line
	10200 2400 10200 3250
Wire Wire Line
	10200 3250 10300 3250
Wire Wire Line
	10300 2500 10150 2500
Wire Wire Line
	10150 2500 10150 3350
Wire Wire Line
	10150 3350 10300 3350
Wire Wire Line
	10300 2600 10100 2600
Wire Wire Line
	10100 3450 10300 3450
Wire Wire Line
	10100 2600 10100 3450
Wire Wire Line
	10300 2700 10050 2700
Wire Wire Line
	10050 2700 10050 3550
Wire Wire Line
	10050 3550 10300 3550
Wire Wire Line
	10300 2800 10000 2800
Wire Wire Line
	10000 2800 10000 3650
Wire Wire Line
	10000 3650 10300 3650
Wire Wire Line
	10300 2900 9950 2900
Wire Wire Line
	9950 2900 9950 3750
Wire Wire Line
	9950 3750 10300 3750
Wire Wire Line
	10300 3000 9900 3000
Wire Wire Line
	9900 3000 9900 3850
Wire Wire Line
	9900 3850 10300 3850
Wire Wire Line
	10300 3100 9850 3100
Wire Wire Line
	9850 3100 9850 3950
Wire Wire Line
	9850 3950 10300 3950
$Comp
L Device:D D5
U 1 1 5E9ACD4B
P 9600 1000
F 0 "D5" H 9750 1050 50  0000 C CNN
F 1 "1N4148" H 10000 1050 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 1000 50  0001 C CNN
F 3 "~" H 9600 1000 50  0001 C CNN
	1    9600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E9AD477
P 9600 600
F 0 "D1" H 9750 650 50  0000 C CNN
F 1 "1N4148" H 10000 650 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 600 50  0001 C CNN
F 3 "~" H 9600 600 50  0001 C CNN
	1    9600 600 
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5E9AD7E2
P 9600 700
F 0 "D2" H 9750 750 50  0000 C CNN
F 1 "1N4148" H 10000 750 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 700 50  0001 C CNN
F 3 "~" H 9600 700 50  0001 C CNN
	1    9600 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5E9ADA49
P 9600 800
F 0 "D3" H 9750 850 50  0000 C CNN
F 1 "1N4148" H 10000 850 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 800 50  0001 C CNN
F 3 "~" H 9600 800 50  0001 C CNN
	1    9600 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5E9ADD0F
P 9600 900
F 0 "D4" H 9750 950 50  0000 C CNN
F 1 "1N4148" H 10000 950 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 900 50  0001 C CNN
F 3 "~" H 9600 900 50  0001 C CNN
	1    9600 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 5E9ADF8F
P 9600 1100
F 0 "D6" H 9750 1150 50  0000 C CNN
F 1 "1N4148" H 10000 1150 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 1100 50  0001 C CNN
F 3 "~" H 9600 1100 50  0001 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5E9AE381
P 9600 1200
F 0 "D7" H 9750 1250 50  0000 C CNN
F 1 "1N4148" H 10000 1250 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 1200 50  0001 C CNN
F 3 "~" H 9600 1200 50  0001 C CNN
	1    9600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 600  9750 600 
Wire Wire Line
	10300 700  9750 700 
Wire Wire Line
	10300 800  9750 800 
Wire Wire Line
	10300 900  9750 900 
Wire Wire Line
	10300 1000 9750 1000
Wire Wire Line
	10300 1100 9750 1100
Wire Wire Line
	10300 1200 9750 1200
Wire Wire Line
	10200 2400 9250 2400
Connection ~ 10200 2400
Wire Wire Line
	10150 2500 9250 2500
Connection ~ 10150 2500
Wire Wire Line
	10100 2600 9250 2600
Connection ~ 10100 2600
Wire Wire Line
	10050 2700 9250 2700
Connection ~ 10050 2700
Wire Wire Line
	10000 2800 9250 2800
Connection ~ 10000 2800
Wire Wire Line
	9950 2900 9250 2900
Connection ~ 9950 2900
Wire Wire Line
	9900 3000 9250 3000
Connection ~ 9900 3000
Wire Wire Line
	9850 3100 9250 3100
Connection ~ 9850 3100
$Comp
L power:GND #PWR0101
U 1 1 5E9E97FE
P 9400 3500
F 0 "#PWR0101" H 9400 3250 50  0001 C CNN
F 1 "GND" H 9405 3327 50  0000 C CNN
F 2 "" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3200 9400 3200
Wire Wire Line
	9400 3200 9400 3500
$Comp
L 74xx:74LS148 U2
U 1 1 5E9EC651
P 8750 2800
F 0 "U2" H 8500 3500 50  0000 C CNN
F 1 "74LS148" H 8500 3400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8750 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS148" H 8750 2800 50  0001 C CNN
	1    8750 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 3500 9250 3200
Wire Wire Line
	8750 3500 9250 3500
Connection ~ 9250 3200
$Comp
L power:GND #PWR0102
U 1 1 5E9F4634
P 8400 2050
F 0 "#PWR0102" H 8400 1800 50  0001 C CNN
F 1 "GND" H 8405 1877 50  0000 C CNN
F 2 "" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E9F4FD7
P 8750 1800
F 0 "#PWR0103" H 8750 1650 50  0001 C CNN
F 1 "+5V" H 8765 1973 50  0000 C CNN
F 2 "" H 8750 1800 50  0001 C CNN
F 3 "" H 8750 1800 50  0001 C CNN
	1    8750 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E9F5B33
P 8500 1900
F 0 "C1" V 8271 1900 50  0000 C CNN
F 1 "100n" V 8362 1900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8500 1900 50  0001 C CNN
F 3 "~" H 8500 1900 50  0001 C CNN
	1    8500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 1800 8750 1900
Wire Wire Line
	8750 1900 8600 1900
Connection ~ 8750 1900
Wire Wire Line
	8750 1900 8750 2100
Wire Wire Line
	8400 1900 8400 2050
Wire Wire Line
	10300 1300 9750 1300
Wire Wire Line
	10300 2150 10150 2150
Wire Wire Line
	10300 2050 10150 2050
Wire Wire Line
	10300 1950 10150 1950
Wire Wire Line
	10300 1850 10150 1850
Wire Wire Line
	10300 1750 10150 1750
Wire Wire Line
	10300 1650 10150 1650
Wire Wire Line
	10300 1550 10150 1550
Wire Wire Line
	10300 1450 10150 1450
Text GLabel 10150 1750 0    50   Input ~ 0
CN29KB_4
Text GLabel 10150 1450 0    50   Input ~ 0
CN29KB_1
Text GLabel 10150 2150 0    50   Input ~ 0
CN29KB_8
Text GLabel 10150 2050 0    50   Input ~ 0
CN29KB_7
Text GLabel 10150 1950 0    50   Input ~ 0
CN29KB_6
Text GLabel 10150 1850 0    50   Input ~ 0
CN29KB_5
Text GLabel 10150 1650 0    50   Input ~ 0
CN29KB_3
Text GLabel 10150 1550 0    50   Input ~ 0
CN29KB_2
$Comp
L Device:D D8
U 1 1 5E9AE66A
P 9600 1300
F 0 "D8" H 9750 1350 50  0000 C CNN
F 1 "1N4148" H 10000 1350 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 9600 1300 50  0001 C CNN
F 3 "~" H 9600 1300 50  0001 C CNN
	1    9600 1300
	1    0    0    -1  
$EndComp
Text GLabel 9250 600  0    50   Input ~ 0
CN29_1
Text GLabel 9250 700  0    50   Input ~ 0
CN29_2
Text GLabel 9250 800  0    50   Input ~ 0
CN29_3
Text GLabel 9250 900  0    50   Input ~ 0
CN29_4
Text GLabel 9250 1000 0    50   Input ~ 0
CN29_5
Text GLabel 9250 1100 0    50   Input ~ 0
CN29_6
Text GLabel 9250 1200 0    50   Input ~ 0
CN29_7
Text GLabel 9250 1300 0    50   Input ~ 0
CN29_8
Wire Wire Line
	9450 600  9250 600 
Wire Wire Line
	9450 700  9250 700 
Wire Wire Line
	9450 800  9250 800 
Wire Wire Line
	9450 900  9250 900 
Wire Wire Line
	9450 1000 9250 1000
Wire Wire Line
	9450 1100 9250 1100
Wire Wire Line
	9450 1200 9250 1200
Wire Wire Line
	9450 1300 9250 1300
Text GLabel 4500 5000 0    50   Input ~ 0
CN29_1
Text GLabel 6850 5600 2    50   Input ~ 0
CN29_2
Text GLabel 6850 5500 2    50   Input ~ 0
CN29_3
Text GLabel 4500 3900 0    50   Input ~ 0
CN29_4
Text GLabel 4500 4000 0    50   Input ~ 0
CN29_5
Text GLabel 4500 4800 0    50   Input ~ 0
CN29_6
Text GLabel 4500 4100 0    50   Input ~ 0
CN29_7
Text GLabel 4500 4200 0    50   Input ~ 0
CN29_8
Wire Wire Line
	4500 3900 4650 3900
Wire Wire Line
	4500 4000 4650 4000
Wire Wire Line
	4500 4100 4650 4100
Wire Wire Line
	4500 4800 4650 4800
Wire Wire Line
	4500 5000 4650 5000
Wire Wire Line
	6650 5500 6850 5500
Wire Wire Line
	6650 5600 6850 5600
Text GLabel 8050 2400 0    50   Input ~ 0
A0
Text GLabel 8050 2500 0    50   Input ~ 0
A1
Text GLabel 8050 2600 0    50   Input ~ 0
A2
Text GLabel 8050 3000 0    50   Input ~ 0
EO
Wire Wire Line
	8250 2400 8050 2400
Wire Wire Line
	8250 2500 8050 2500
Wire Wire Line
	8250 2600 8050 2600
Wire Wire Line
	8250 3000 8050 3000
Text GLabel 4500 3200 0    50   Input ~ 0
A0
Text GLabel 4500 4900 0    50   Input ~ 0
A1
Text GLabel 4500 3700 0    50   Input ~ 0
A2
Text GLabel 4500 3800 0    50   Input ~ 0
EO
Wire Wire Line
	4500 3200 4650 3200
Wire Wire Line
	4500 3700 4650 3700
Wire Wire Line
	4500 3800 4650 3800
Wire Wire Line
	4500 4200 4650 4200
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 5EA75E8C
P 10500 4400
F 0 "J5" H 10472 4374 50  0000 R CNN
F 1 "ARP_CPUBOARD" H 10472 4283 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10500 4400 50  0001 C CNN
F 3 "~" H 10500 4400 50  0001 C CNN
	1    10500 4400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5EA77C5E
P 10500 5050
F 0 "J6" H 10472 5024 50  0000 R CNN
F 1 "ARP" H 10472 4933 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10500 5050 50  0001 C CNN
F 3 "~" H 10500 5050 50  0001 C CNN
	1    10500 5050
	-1   0    0    -1  
$EndComp
Text GLabel 10150 4600 0    50   Input ~ 0
ARP_OUT
Text GLabel 10150 5250 0    50   Input ~ 0
ARP_IN
Wire Wire Line
	10300 4600 10150 4600
Wire Wire Line
	10300 5250 10150 5250
Wire Wire Line
	10300 4700 9800 4700
Wire Wire Line
	9800 4700 9800 5350
Wire Wire Line
	9800 5350 10300 5350
Wire Wire Line
	10300 4500 9750 4500
Wire Wire Line
	9750 4500 9750 5150
Wire Wire Line
	9750 5150 10300 5150
Wire Wire Line
	10300 4400 9700 4400
Wire Wire Line
	9700 4400 9700 5050
Wire Wire Line
	9700 5050 10300 5050
Wire Wire Line
	10300 4300 9650 4300
Wire Wire Line
	9650 4300 9650 4950
Wire Wire Line
	9650 4950 10300 4950
Wire Wire Line
	10300 4200 9600 4200
Wire Wire Line
	9600 4200 9600 4850
Wire Wire Line
	9600 4850 10300 4850
Text GLabel 4500 3300 0    50   Input ~ 0
ARP_IN
Text GLabel 4500 3400 0    50   Input ~ 0
ARP_OUT
Wire Wire Line
	4500 3300 4650 3300
Wire Wire Line
	4500 3400 4650 3400
Text GLabel 4500 5100 0    50   Input ~ 0
CN29KB_1
Text GLabel 4500 5200 0    50   Input ~ 0
CN29KB_2
Text GLabel 4500 5400 0    50   Input ~ 0
CN29KB_3
Text GLabel 4500 5300 0    50   Input ~ 0
CN29KB_4
Text GLabel 4500 3600 0    50   Input ~ 0
CN29KB_5
Text GLabel 4500 5500 0    50   Input ~ 0
CN29KB_6
Text GLabel 4500 5600 0    50   Input ~ 0
CN29KB_7
Text GLabel 4500 3500 0    50   Input ~ 0
CN29KB_8
Wire Wire Line
	4500 3500 4650 3500
Wire Wire Line
	4500 3600 4650 3600
Wire Wire Line
	4500 5100 4650 5100
Wire Wire Line
	4500 5200 4650 5200
Wire Wire Line
	4500 5300 4650 5300
Wire Wire Line
	4500 5400 4650 5400
Wire Wire Line
	4500 5500 4650 5500
Wire Wire Line
	4500 5600 4650 5600
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5EAC6F97
P 10500 5550
F 0 "J7" H 10472 5524 50  0000 R CNN
F 1 "POWER" H 10472 5433 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 5550 50  0001 C CNN
F 3 "~" H 10500 5550 50  0001 C CNN
	1    10500 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5EAC930C
P 9850 5800
F 0 "#PWR0105" H 9850 5650 50  0001 C CNN
F 1 "+5V" H 9865 5973 50  0000 C CNN
F 2 "" H 9850 5800 50  0001 C CNN
F 3 "" H 9850 5800 50  0001 C CNN
	1    9850 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 5650 10150 5650
Wire Wire Line
	10150 5650 10150 5800
Wire Wire Line
	10300 5550 9850 5550
Wire Wire Line
	9850 5550 9850 5800
$Comp
L power:GND #PWR0106
U 1 1 5EAF5F99
P 7900 5150
F 0 "#PWR0106" H 7900 4900 50  0001 C CNN
F 1 "GND" H 7905 4977 50  0000 C CNN
F 2 "" H 7900 5150 50  0001 C CNN
F 3 "" H 7900 5150 50  0001 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5EAF64FF
P 7700 5050
F 0 "C2" V 7471 5050 50  0000 C CNN
F 1 "100n" V 7562 5050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7700 5050 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
	1    7700 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 5200 7450 5200
Wire Wire Line
	7450 5200 7450 5050
Wire Wire Line
	7450 5050 7600 5050
Connection ~ 7450 5050
Wire Wire Line
	7450 5050 7450 5000
Wire Wire Line
	7800 5050 7900 5050
Wire Wire Line
	7900 5050 7900 5150
$Comp
L Isolator:6N138 U3
U 1 1 5EB105AD
P 2350 5450
F 0 "U3" H 2350 5917 50  0000 C CNN
F 1 "6N138" H 2350 5826 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2640 5150 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 2640 5150 50  0001 C CNN
	1    2350 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5EB143C8
P 1400 5450
F 0 "D9" V 1350 5550 50  0000 C CNN
F 1 "1N4148" V 1500 5650 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 1400 5450 50  0001 C CNN
F 3 "~" H 1400 5450 50  0001 C CNN
	1    1400 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5EB14E60
P 1150 5300
F 0 "R1" V 954 5300 50  0000 C CNN
F 1 "220" V 1045 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1150 5300 50  0001 C CNN
F 3 "~" H 1150 5300 50  0001 C CNN
	1    1150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5300 2050 5300
Wire Wire Line
	2050 5300 2050 5350
Wire Wire Line
	2050 5550 2050 5650
Wire Wire Line
	2050 5650 1400 5650
Wire Wire Line
	1400 5650 1400 5600
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5EB3E07F
P 600 5450
F 0 "J8" H 708 5631 50  0000 C CNN
F 1 "MIDI IN" H 708 5540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 600 5450 50  0001 C CNN
F 3 "~" H 600 5450 50  0001 C CNN
	1    600  5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5300 1000 5300
Wire Wire Line
	1000 5300 1000 5450
Wire Wire Line
	1000 5450 800  5450
Wire Wire Line
	800  5550 1000 5550
Wire Wire Line
	1000 5550 1000 5650
Wire Wire Line
	1000 5650 1400 5650
Connection ~ 1400 5650
Wire Wire Line
	1250 5300 1400 5300
Connection ~ 1400 5300
$Comp
L Device:R_Small R2
U 1 1 5EB558F2
P 3200 5450
F 0 "R2" H 3141 5404 50  0000 R CNN
F 1 "470" H 3141 5495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3200 5450 50  0001 C CNN
F 3 "~" H 3200 5450 50  0001 C CNN
	1    3200 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5EB5DA41
P 2900 5450
F 0 "R3" H 2841 5404 50  0000 R CNN
F 1 "10K" H 2841 5495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2900 5450 50  0001 C CNN
F 3 "~" H 2900 5450 50  0001 C CNN
	1    2900 5450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EB5E055
P 2900 5850
F 0 "#PWR0108" H 2900 5600 50  0001 C CNN
F 1 "GND" H 2905 5677 50  0000 C CNN
F 2 "" H 2900 5850 50  0001 C CNN
F 3 "" H 2900 5850 50  0001 C CNN
	1    2900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5550 2900 5650
Wire Wire Line
	2650 5650 2900 5650
Connection ~ 2900 5650
Wire Wire Line
	2900 5650 2900 5850
Wire Wire Line
	2650 5350 2900 5350
$Comp
L power:+5V #PWR0109
U 1 1 5EAF4D58
P 7450 5000
F 0 "#PWR0109" H 7450 4850 50  0001 C CNN
F 1 "+5V" H 7465 5173 50  0000 C CNN
F 2 "" H 7450 5000 50  0001 C CNN
F 3 "" H 7450 5000 50  0001 C CNN
	1    7450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5550 3200 5600
Wire Wire Line
	3200 5600 2700 5600
Wire Wire Line
	2700 5600 2700 5550
Wire Wire Line
	2700 5550 2650 5550
$Comp
L power:+5V #PWR0110
U 1 1 5EB90C4D
P 2950 4900
F 0 "#PWR0110" H 2950 4750 50  0001 C CNN
F 1 "+5V" H 2965 5073 50  0000 C CNN
F 2 "" H 2950 4900 50  0001 C CNN
F 3 "" H 2950 4900 50  0001 C CNN
	1    2950 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EB91287
P 3200 4900
F 0 "C3" V 2971 4900 50  0000 C CNN
F 1 "100n" V 3062 4900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3200 4900 50  0001 C CNN
F 3 "~" H 3200 4900 50  0001 C CNN
	1    3200 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EB916B0
P 3400 4900
F 0 "#PWR0111" H 3400 4650 50  0001 C CNN
F 1 "GND" H 3405 4727 50  0000 C CNN
F 2 "" H 3400 4900 50  0001 C CNN
F 3 "" H 3400 4900 50  0001 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5250 2950 5250
Wire Wire Line
	2950 5250 2950 4900
Wire Wire Line
	2950 4900 3100 4900
Connection ~ 2950 4900
Wire Wire Line
	3300 4900 3400 4900
$Comp
L power:+3.3V #PWR0112
U 1 1 5EBAB826
P 6850 5350
F 0 "#PWR0112" H 6850 5200 50  0001 C CNN
F 1 "+3.3V" V 6865 5478 50  0000 L CNN
F 2 "" H 6850 5350 50  0001 C CNN
F 3 "" H 6850 5350 50  0001 C CNN
	1    6850 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 5400 6850 5350
$Comp
L power:+3.3V #PWR0113
U 1 1 5EBB57F4
P 3200 5300
F 0 "#PWR0113" H 3200 5150 50  0001 C CNN
F 1 "+3.3V" H 3215 5473 50  0000 C CNN
F 2 "" H 3200 5300 50  0001 C CNN
F 3 "" H 3200 5300 50  0001 C CNN
	1    3200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5350 3200 5300
Text GLabel 4450 3000 0    50   Input ~ 0
MIDI_IN
Text GLabel 4450 3100 0    50   Input ~ 0
MIDI_OUT
Wire Wire Line
	4450 3000 4650 3000
Wire Wire Line
	4450 3100 4650 3100
Text GLabel 3700 5600 2    50   Input ~ 0
MIDI_IN
Wire Wire Line
	3200 5600 3700 5600
Connection ~ 3200 5600
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5EBDC297
P 600 7250
F 0 "J9" H 708 7531 50  0000 C CNN
F 1 "MIDI_OUT" H 708 7440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 600 7250 50  0001 C CNN
F 3 "~" H 600 7250 50  0001 C CNN
	1    600  7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EBDCBA8
P 1450 7250
F 0 "#PWR0114" H 1450 7000 50  0001 C CNN
F 1 "GND" H 1455 7077 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5EBE6A8E
P 1100 7150
F 0 "R4" V 904 7150 50  0000 C CNN
F 1 "47" V 995 7150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1100 7150 50  0001 C CNN
F 3 "~" H 1100 7150 50  0001 C CNN
	1    1100 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5EBFA5C9
P 1100 7350
F 0 "R5" V 900 7350 50  0000 C CNN
F 1 "47" V 1000 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1100 7350 50  0001 C CNN
F 3 "~" H 1100 7350 50  0001 C CNN
	1    1100 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  7250 1450 7250
$Comp
L power:+3.3V #PWR0115
U 1 1 5EC0E35A
P 1450 7150
F 0 "#PWR0115" H 1450 7000 50  0001 C CNN
F 1 "+3.3V" H 1465 7323 50  0000 C CNN
F 2 "" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
Text GLabel 1350 7650 2    50   Input ~ 0
MIDI_OUT
Wire Wire Line
	800  7150 1000 7150
Wire Wire Line
	1200 7150 1450 7150
Wire Wire Line
	800  7350 1000 7350
Wire Wire Line
	1200 7350 1250 7350
Wire Wire Line
	1250 7350 1250 7650
Wire Wire Line
	1250 7650 1350 7650
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5EC589C2
P 600 6350
F 0 "J10" H 708 6631 50  0000 C CNN
F 1 "MIDI_THRU" H 708 6540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 600 6350 50  0001 C CNN
F 3 "~" H 600 6350 50  0001 C CNN
	1    600  6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5EC79D2D
P 1200 6250
F 0 "R6" V 1004 6250 50  0000 C CNN
F 1 "220" V 1095 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1200 6250 50  0001 C CNN
F 3 "~" H 1200 6250 50  0001 C CNN
	1    1200 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5EC7A181
P 1200 6450
F 0 "R7" V 1300 6450 50  0000 C CNN
F 1 "220" V 1400 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1200 6450 50  0001 C CNN
F 3 "~" H 1200 6450 50  0001 C CNN
	1    1200 6450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EC7B1AA
P 1650 6350
F 0 "#PWR0116" H 1650 6100 50  0001 C CNN
F 1 "GND" H 1655 6177 50  0000 C CNN
F 2 "" H 1650 6350 50  0001 C CNN
F 3 "" H 1650 6350 50  0001 C CNN
	1    1650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6350 1650 6350
Wire Wire Line
	800  6250 1100 6250
$Comp
L power:+5V #PWR0117
U 1 1 5EC9CB89
P 1650 6250
F 0 "#PWR0117" H 1650 6100 50  0001 C CNN
F 1 "+5V" H 1665 6423 50  0000 C CNN
F 2 "" H 1650 6250 50  0001 C CNN
F 3 "" H 1650 6250 50  0001 C CNN
	1    1650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6250 1650 6250
Wire Wire Line
	800  6450 1100 6450
Wire Wire Line
	1300 6450 1450 6450
Wire Wire Line
	1450 6450 1450 6650
$Comp
L 74xx:74HC14 U4
U 1 1 5ECBF864
P 2200 6650
F 0 "U4" H 2200 6333 50  0000 C CNN
F 1 "74HC14" H 2200 6424 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2200 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 2200 6650 50  0001 C CNN
	1    2200 6650
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC14 U4
U 2 1 5ECC207B
P 2900 6650
F 0 "U4" H 2900 6333 50  0000 C CNN
F 1 "74HC14" H 2900 6424 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2900 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 2900 6650 50  0001 C CNN
	2    2900 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 6650 1900 6650
Wire Wire Line
	2600 6650 2500 6650
Wire Wire Line
	3200 5600 3200 6650
$Comp
L 74xx:74HC14 U4
U 7 1 5ECE8F34
P 5050 6600
F 0 "U4" H 5280 6646 50  0000 L CNN
F 1 "74HC14" H 5280 6555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5050 6600 50  0001 C CNN
	7    5050 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5ECEC2C2
P 5050 7300
F 0 "#PWR0118" H 5050 7050 50  0001 C CNN
F 1 "GND" H 5055 7127 50  0000 C CNN
F 2 "" H 5050 7300 50  0001 C CNN
F 3 "" H 5050 7300 50  0001 C CNN
	1    5050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5ECECAAE
P 5050 5950
F 0 "#PWR0119" H 5050 5800 50  0001 C CNN
F 1 "+5V" H 5065 6123 50  0000 C CNN
F 2 "" H 5050 5950 50  0001 C CNN
F 3 "" H 5050 5950 50  0001 C CNN
	1    5050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5ECED05B
P 5400 5950
F 0 "C4" V 5171 5950 50  0000 C CNN
F 1 "100n" V 5262 5950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5400 5950 50  0001 C CNN
F 3 "~" H 5400 5950 50  0001 C CNN
	1    5400 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5ECED532
P 5500 6050
F 0 "#PWR0120" H 5500 5800 50  0001 C CNN
F 1 "GND" H 5505 5877 50  0000 C CNN
F 2 "" H 5500 6050 50  0001 C CNN
F 3 "" H 5500 6050 50  0001 C CNN
	1    5500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6050 5500 5950
Wire Wire Line
	5300 5950 5050 5950
Wire Wire Line
	5050 6100 5050 5950
Connection ~ 5050 5950
Wire Wire Line
	5050 7100 5050 7300
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5ED1E024
P 10500 6200
F 0 "J11" H 10472 6174 50  0000 R CNN
F 1 "TRIGGER_OUT" H 10472 6083 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 6200 50  0001 C CNN
F 3 "~" H 10500 6200 50  0001 C CNN
	1    10500 6200
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U4
U 3 1 5ED1F271
P 9350 6200
F 0 "U4" H 9350 6517 50  0000 C CNN
F 1 "74HC14" H 9350 6426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9350 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9350 6200 50  0001 C CNN
	3    9350 6200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U4
U 4 1 5ED21CCC
P 8650 6200
F 0 "U4" H 8650 6517 50  0000 C CNN
F 1 "74HC14" H 8650 6426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8650 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 8650 6200 50  0001 C CNN
	4    8650 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6200 9050 6200
Text GLabel 8100 6200 0    50   Input ~ 0
ARP_OUT
Wire Wire Line
	8100 6200 8350 6200
$Comp
L power:GND #PWR0121
U 1 1 5ED49B1C
P 10150 5800
F 0 "#PWR0121" H 10150 5550 50  0001 C CNN
F 1 "GND" H 10150 5650 50  0000 C CNN
F 2 "" H 10150 5800 50  0001 C CNN
F 3 "" H 10150 5800 50  0001 C CNN
	1    10150 5800
	1    0    0    -1  
$EndComp
Connection ~ 10150 5800
$Comp
L power:GND #PWR0122
U 1 1 5ED49B49
P 10050 6300
F 0 "#PWR0122" H 10050 6050 50  0001 C CNN
F 1 "GND" H 10055 6127 50  0000 C CNN
F 2 "" H 10050 6300 50  0001 C CNN
F 3 "" H 10050 6300 50  0001 C CNN
	1    10050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 6300 10050 6300
NoConn ~ 4650 4300
NoConn ~ 4650 4400
NoConn ~ 4650 4500
NoConn ~ 4650 4600
NoConn ~ 6650 2900
NoConn ~ 6650 3000
NoConn ~ 6650 3100
NoConn ~ 6650 3200
NoConn ~ 6650 3300
NoConn ~ 6650 3400
NoConn ~ 6650 3500
NoConn ~ 6650 3600
NoConn ~ 6650 3700
NoConn ~ 6650 3800
NoConn ~ 6650 3900
NoConn ~ 6650 4000
NoConn ~ 6650 4100
NoConn ~ 6650 4200
NoConn ~ 6650 4300
NoConn ~ 6650 4500
NoConn ~ 6650 4800
NoConn ~ 6650 4900
NoConn ~ 6650 5000
NoConn ~ 6650 5100
NoConn ~ 6650 5300
Wire Wire Line
	6650 5400 6850 5400
$Comp
L power:GND #PWR0123
U 1 1 5EEA07CC
P 4250 2650
F 0 "#PWR0123" H 4250 2400 50  0001 C CNN
F 1 "GND" H 4255 2477 50  0000 C CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2650 4250 2600
Wire Wire Line
	4250 2600 4550 2600
Wire Wire Line
	4550 2600 4550 2900
Wire Wire Line
	4550 2900 4650 2900
NoConn ~ 8250 2900
NoConn ~ 4650 4700
Wire Wire Line
	4500 4900 4650 4900
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EA1A833
P 9850 5550
F 0 "#FLG0101" H 9850 5625 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 5600 50  0000 C CNN
F 2 "" H 9850 5550 50  0001 C CNN
F 3 "~" H 9850 5550 50  0001 C CNN
	1    9850 5550
	1    0    0    -1  
$EndComp
Connection ~ 9850 5550
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EA1D16F
P 10350 5800
F 0 "#FLG0102" H 10350 5875 50  0001 C CNN
F 1 "PWR_FLAG" V 10350 5928 50  0000 L CNN
F 2 "" H 10350 5800 50  0001 C CNN
F 3 "~" H 10350 5800 50  0001 C CNN
	1    10350 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 5800 10150 5800
Wire Wire Line
	9650 6200 10300 6200
$EndSCHEMATC
