EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L Battery_Management:LTC3555 U4
U 1 1 60D795FF
P 4500 3600
F 0 "U4" H 4700 4850 50  0000 L CNN
F 1 "LTC3555" H 4700 4750 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_4x5mm_P0.5mm_EP2.65x3.65mm" H 4500 3550 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/3555fe.pdf" H 4500 3550 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 60D7BAE9
P 3700 2600
F 0 "#PWR0138" H 3700 2350 50  0001 C CNN
F 1 "GND" H 3600 2500 50  0000 C CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2600 3800 2600
Text GLabel 4500 2200 1    50   UnSpc ~ 0
USB_5V
Wire Wire Line
	4500 2200 4500 2300
Wire Wire Line
	3800 4100 3650 4100
Wire Wire Line
	3800 4000 3650 4000
Wire Wire Line
	3800 2900 3400 2900
Wire Wire Line
	3800 2800 3400 2800
Wire Wire Line
	3400 2300 4500 2300
Wire Wire Line
	3400 2300 3400 2800
Connection ~ 3400 2800
Wire Wire Line
	3400 2800 3400 2900
Wire Wire Line
	3650 4000 3650 4100
Connection ~ 4500 2300
Wire Wire Line
	4500 2300 4500 2400
Wire Wire Line
	5200 2800 5500 2800
Wire Wire Line
	5500 2800 5500 2900
Wire Wire Line
	5500 4400 5200 4400
Wire Wire Line
	5200 4000 5500 4000
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 5500 4400
Wire Wire Line
	5200 3600 5500 3600
Wire Wire Line
	5500 3600 5500 4000
$Comp
L power:GND #PWR0139
U 1 1 60D7F1A7
P 4500 4950
F 0 "#PWR0139" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4505 4777 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4950 4500 4800
Wire Wire Line
	5200 2600 5500 2600
Wire Wire Line
	5500 2600 5500 2800
Connection ~ 5500 2800
$Comp
L Device:R_Small R18
U 1 1 60D8080F
P 3200 4550
F 0 "R18" H 3259 4596 50  0000 L CNN
F 1 "3k" H 3259 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3200 4550 50  0001 C CNN
F 3 "~" H 3200 4550 50  0001 C CNN
	1    3200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60D810B5
P 3050 4550
F 0 "C3" H 2950 4600 50  0000 R CNN
F 1 "470nF" H 2950 4500 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3050 4550 50  0001 C CNN
F 3 "~" H 3050 4550 50  0001 C CNN
	1    3050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4400 3200 4400
Wire Wire Line
	3050 4400 3050 4450
Wire Wire Line
	3200 4450 3200 4400
Connection ~ 3200 4400
Wire Wire Line
	3200 4400 3050 4400
$Comp
L power:GND #PWR0140
U 1 1 60D842D1
P 3200 4950
F 0 "#PWR0140" H 3200 4700 50  0001 C CNN
F 1 "GND" H 3205 4777 50  0000 C CNN
F 2 "" H 3200 4950 50  0001 C CNN
F 3 "" H 3200 4950 50  0001 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4650 3050 4700
Wire Wire Line
	3200 4700 3200 4650
Connection ~ 3200 4700
Wire Wire Line
	3050 4700 3200 4700
Wire Wire Line
	3200 4950 3200 4700
$Comp
L Device:R_Small R19
U 1 1 60D871B1
P 3600 4750
F 0 "R19" H 3659 4796 50  0000 L CNN
F 1 "2k" H 3659 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3600 4750 50  0001 C CNN
F 3 "~" H 3600 4750 50  0001 C CNN
	1    3600 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 60D87A06
P 3600 4950
F 0 "#PWR0141" H 3600 4700 50  0001 C CNN
F 1 "GND" H 3605 4777 50  0000 C CNN
F 2 "" H 3600 4950 50  0001 C CNN
F 3 "" H 3600 4950 50  0001 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4950 3600 4850
Wire Wire Line
	3600 4650 3600 4600
Wire Wire Line
	3600 4600 3800 4600
$Comp
L power:GND #PWR0142
U 1 1 60D8AF8E
P 5350 4950
F 0 "#PWR0142" H 5350 4700 50  0001 C CNN
F 1 "GND" H 5355 4777 50  0000 C CNN
F 2 "" H 5350 4950 50  0001 C CNN
F 3 "" H 5350 4950 50  0001 C CNN
	1    5350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4950 5350 3400
Wire Wire Line
	5350 3400 5200 3400
$Comp
L Device:L_Small L1
U 1 1 60D9887B
P 5800 3700
F 0 "L1" V 5900 3750 50  0000 L CNN
F 1 "1.5µH" V 5900 3450 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 5800 3700 50  0001 C CNN
F 3 "~" H 5800 3700 50  0001 C CNN
	1    5800 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60D9A249
P 6000 3800
F 0 "C4" H 6092 3846 50  0000 L CNN
F 1 "20pF" H 6092 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 3800 50  0001 C CNN
F 3 "~" H 6000 3800 50  0001 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 60D9AC03
P 6400 3800
F 0 "R20" H 6459 3846 50  0000 L CNN
F 1 "30k" H 6459 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6400 3800 50  0001 C CNN
F 3 "~" H 6400 3800 50  0001 C CNN
	1    6400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R21
U 1 1 60D9C438
P 6700 3900
F 0 "R21" V 6800 3800 50  0000 L CNN
F 1 "120k" V 6800 3950 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6700 3900 50  0001 C CNN
F 3 "~" H 6700 3900 50  0001 C CNN
	1    6700 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3700 5700 3700
Wire Wire Line
	5900 3700 6000 3700
Connection ~ 6000 3700
Wire Wire Line
	6000 3700 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	6850 3900 6800 3900
Wire Wire Line
	6400 3900 6000 3900
Wire Wire Line
	5700 3900 5700 3800
Wire Wire Line
	5700 3800 5200 3800
Connection ~ 6000 3900
Wire Wire Line
	6000 3900 5700 3900
Wire Wire Line
	6600 3900 6400 3900
Connection ~ 6400 3900
$Comp
L power:+1V0 #PWR0143
U 1 1 60DA4C5B
P 7700 3700
F 0 "#PWR0143" H 7700 3550 50  0001 C CNN
F 1 "+1V0" H 7715 3873 50  0000 C CNN
F 2 "" H 7700 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3700 7700 3700
Wire Wire Line
	6400 3700 6850 3700
Connection ~ 6850 3700
$Comp
L Device:C_Small C5
U 1 1 60D9BD35
P 6850 3800
F 0 "C5" H 6942 3846 50  0000 L CNN
F 1 "22µF" H 6942 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 3800 50  0001 C CNN
F 3 "~" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 60DB9DA1
P 5800 4100
F 0 "L2" V 5900 4150 50  0000 L CNN
F 1 "3.3µH" V 5900 3850 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 5800 4100 50  0001 C CNN
F 3 "~" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60DB9DAB
P 6000 4200
F 0 "C6" H 6092 4246 50  0000 L CNN
F 1 "20pF" H 6092 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 4200 50  0001 C CNN
F 3 "~" H 6000 4200 50  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 60DB9DB5
P 6400 4200
F 0 "R22" H 6459 4246 50  0000 L CNN
F 1 "150k" H 6459 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6400 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R23
U 1 1 60DB9DBF
P 6700 4300
F 0 "R23" V 6800 4200 50  0000 L CNN
F 1 "120k" V 6800 4350 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6700 4300 50  0001 C CNN
F 3 "~" H 6700 4300 50  0001 C CNN
	1    6700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4100 5700 4100
Wire Wire Line
	5900 4100 6000 4100
Connection ~ 6000 4100
Wire Wire Line
	6000 4100 6400 4100
Connection ~ 6400 4100
Wire Wire Line
	6850 4300 6800 4300
Wire Wire Line
	6400 4300 6000 4300
Wire Wire Line
	5700 4300 5700 4200
Wire Wire Line
	5700 4200 5200 4200
Connection ~ 6000 4300
Wire Wire Line
	6000 4300 5700 4300
Wire Wire Line
	6600 4300 6400 4300
Connection ~ 6400 4300
Wire Wire Line
	6850 4100 7700 4100
Wire Wire Line
	6400 4100 6850 4100
Connection ~ 6850 4100
$Comp
L Device:C_Small C7
U 1 1 60DB9DE3
P 6850 4200
F 0 "C7" H 6942 4246 50  0000 L CNN
F 1 "10µF" H 6942 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 4200 50  0001 C CNN
F 3 "~" H 6850 4200 50  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0144
U 1 1 60DBFDA9
P 7700 4100
F 0 "#PWR0144" H 7700 3950 50  0001 C CNN
F 1 "+1V8" H 7715 4273 50  0000 C CNN
F 2 "" H 7700 4100 50  0001 C CNN
F 3 "" H 7700 4100 50  0001 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 60DC33AC
P 7250 4300
F 0 "#PWR0145" H 7250 4050 50  0001 C CNN
F 1 "GND" H 7300 4250 50  0000 L CNN
F 2 "" H 7250 4300 50  0001 C CNN
F 3 "" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4300 7250 4300
Connection ~ 6850 4300
$Comp
L power:GND #PWR0146
U 1 1 60DC5371
P 7250 3900
F 0 "#PWR0146" H 7250 3650 50  0001 C CNN
F 1 "GND" H 7300 3850 50  0000 L CNN
F 2 "" H 7250 3900 50  0001 C CNN
F 3 "" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3900 7250 3900
Connection ~ 6850 3900
$Comp
L Device:L_Small L3
U 1 1 60DC71EC
P 5800 4500
F 0 "L3" V 5900 4550 50  0000 L CNN
F 1 "2.2µH" V 5900 4250 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 5800 4500 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60DC71F6
P 6000 4600
F 0 "C8" H 6092 4646 50  0000 L CNN
F 1 "20pF" H 6092 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 4600 50  0001 C CNN
F 3 "~" H 6000 4600 50  0001 C CNN
	1    6000 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 60DC7200
P 6400 4600
F 0 "R24" H 6459 4646 50  0000 L CNN
F 1 "180k" H 6459 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6400 4600 50  0001 C CNN
F 3 "~" H 6400 4600 50  0001 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R25
U 1 1 60DC720A
P 6700 4700
F 0 "R25" V 6800 4600 50  0000 L CNN
F 1 "57.6k" V 6800 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6700 4700 50  0001 C CNN
F 3 "~" H 6700 4700 50  0001 C CNN
	1    6700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4500 5700 4500
Wire Wire Line
	5900 4500 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 6400 4500
Connection ~ 6400 4500
Wire Wire Line
	6850 4700 6800 4700
Wire Wire Line
	6400 4700 6000 4700
Wire Wire Line
	5700 4700 5700 4600
Wire Wire Line
	5700 4600 5200 4600
Connection ~ 6000 4700
Wire Wire Line
	6000 4700 5700 4700
Wire Wire Line
	6600 4700 6400 4700
Connection ~ 6400 4700
Wire Wire Line
	6850 4500 7700 4500
Wire Wire Line
	6400 4500 6850 4500
Connection ~ 6850 4500
$Comp
L Device:C_Small C9
U 1 1 60DC7224
P 6850 4600
F 0 "C9" H 6942 4646 50  0000 L CNN
F 1 "10µF" H 6942 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 4600 50  0001 C CNN
F 3 "~" H 6850 4600 50  0001 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 60DC7238
P 7250 4700
F 0 "#PWR0147" H 7250 4450 50  0001 C CNN
F 1 "GND" H 7300 4650 50  0000 L CNN
F 2 "" H 7250 4700 50  0001 C CNN
F 3 "" H 7250 4700 50  0001 C CNN
	1    7250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4700 7250 4700
Connection ~ 6850 4700
$Comp
L power:GND #PWR0148
U 1 1 60DC7244
P 7250 4300
F 0 "#PWR0148" H 7250 4050 50  0001 C CNN
F 1 "GND" H 7300 4250 50  0000 L CNN
F 2 "" H 7250 4300 50  0001 C CNN
F 3 "" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
Connection ~ 7250 4300
$Comp
L power:+3V3 #PWR0149
U 1 1 60DE4E45
P 7700 4500
F 0 "#PWR0149" H 7700 4350 50  0001 C CNN
F 1 "+3V3" H 7715 4673 50  0000 C CNN
F 2 "" H 7700 4500 50  0001 C CNN
F 3 "" H 7700 4500 50  0001 C CNN
	1    7700 4500
	1    0    0    -1  
$EndComp
Text GLabel 7700 2900 2    50   Output ~ 0
VOUT
Wire Wire Line
	7700 2900 7600 2900
Text GLabel 1450 3600 0    50   Input ~ 0
VOUT
Wire Wire Line
	1450 3600 1600 3600
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 60E10D53
P 6050 3100
F 0 "J3" H 6078 3126 50  0000 L CNN
F 1 "BAT+" H 6078 3035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 60E11321
P 6700 3100
F 0 "J4" H 6728 3126 50  0000 L CNN
F 1 "BAT-" H 6728 3035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6700 3100 50  0001 C CNN
F 3 "~" H 6700 3100 50  0001 C CNN
	1    6700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3100 5200 3100
$Comp
L power:GND #PWR0151
U 1 1 60E139C6
P 6500 3150
F 0 "#PWR0151" H 6500 2900 50  0001 C CNN
F 1 "GND" H 6505 2977 50  0000 C CNN
F 2 "" H 6500 3150 50  0001 C CNN
F 3 "" H 6500 3150 50  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3150 6500 3100
$Comp
L Device:C_Small C11
U 1 1 60E180BE
P 6500 2950
F 0 "C11" H 6592 2996 50  0000 L CNN
F 1 "22µF" H 6592 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6500 2950 50  0001 C CNN
F 3 "~" H 6500 2950 50  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3050 6500 3100
Connection ~ 6500 3100
Wire Wire Line
	6500 2850 6500 2800
Connection ~ 6500 2800
Wire Wire Line
	6500 2800 5800 2800
$Comp
L Device:L_Small L4
U 1 1 60E1D615
P 5350 2900
F 0 "L4" V 5300 2800 50  0000 L CNN
F 1 "3.3µH" V 5350 2500 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 5350 2900 50  0001 C CNN
F 3 "~" H 5350 2900 50  0001 C CNN
	1    5350 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2900 5250 2900
Wire Wire Line
	5450 2900 5500 2900
Text GLabel 5600 3400 2    50   Input ~ 0
VOUT
Wire Wire Line
	5600 3400 5500 3400
Wire Wire Line
	5500 3400 5500 3600
Connection ~ 5500 3600
Text GLabel 3550 4000 0    50   Input ~ 0
VOUT
Wire Wire Line
	3550 4000 3650 4000
Connection ~ 3650 4000
$Comp
L Device:R_Small R26
U 1 1 60E46134
P 1600 3700
F 0 "R26" H 1659 3746 50  0000 L CNN
F 1 "10k" H 1659 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1600 3700 50  0001 C CNN
F 3 "~" H 1600 3700 50  0001 C CNN
	1    1600 3700
	1    0    0    -1  
$EndComp
Connection ~ 1600 3600
$Comp
L power:GND #PWR0152
U 1 1 60E46B3B
P 1600 3800
F 0 "#PWR0152" H 1600 3550 50  0001 C CNN
F 1 "GND" H 1700 3700 50  0000 C CNN
F 2 "" H 1600 3800 50  0001 C CNN
F 3 "" H 1600 3800 50  0001 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2800 6500 2800
Wire Wire Line
	1600 3600 3800 3600
$Comp
L Device:R_Small R28
U 1 1 60DA4573
P 2500 3900
F 0 "R28" H 2559 3946 50  0000 L CNN
F 1 "10k" H 2559 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2500 3900 50  0001 C CNN
F 3 "~" H 2500 3900 50  0001 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 60DA7D82
P 2500 4000
F 0 "#PWR0153" H 2500 3750 50  0001 C CNN
F 1 "GND" H 2600 3900 50  0000 C CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3800 3800 3800
$Comp
L power:+1V8 #PWR0154
U 1 1 60DAA73A
P 1950 3800
F 0 "#PWR0154" H 1950 3650 50  0001 C CNN
F 1 "+1V8" H 2000 3750 50  0000 C CNN
F 2 "" H 1950 3800 50  0001 C CNN
F 3 "" H 1950 3800 50  0001 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3800 2400 3800
Connection ~ 2500 3800
$Comp
L Device:R_Small R27
U 1 1 60DBF187
P 2300 3800
F 0 "R27" V 2350 3850 50  0000 L TNN
F 1 "3k" V 2350 3700 50  0000 L TNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2300 3800 50  0001 C CNN
F 3 "~" H 2300 3800 50  0001 C CNN
	1    2300 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3800 1950 3800
$Comp
L Transistor_BJT:MBT3904DW1 Q1
U 1 1 60DE8F95
P 2000 4850
F 0 "Q1" H 2190 4896 50  0000 L CNN
F 1 "MBT3904DW1" H 2190 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2200 4950 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 2000 4850 50  0001 C CNN
	1    2000 4850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT3904DW1 Q1
U 2 1 60DEE3ED
P 1700 5300
F 0 "Q1" H 1891 5300 50  0000 L CNN
F 1 "MBT3904DW1" H 1890 5255 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1900 5400 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 1700 5300 50  0001 C CNN
	2    1700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5100 1800 4850
$Comp
L power:GND #PWR0155
U 1 1 60DF4B58
P 2100 5050
F 0 "#PWR0155" H 2100 4800 50  0001 C CNN
F 1 "GND" H 2105 4877 50  0000 C CNN
F 2 "" H 2100 5050 50  0001 C CNN
F 3 "" H 2100 5050 50  0001 C CNN
	1    2100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 60DF4F37
P 1800 5500
F 0 "#PWR0156" H 1800 5250 50  0001 C CNN
F 1 "GND" H 1805 5327 50  0000 C CNN
F 2 "" H 1800 5500 50  0001 C CNN
F 3 "" H 1800 5500 50  0001 C CNN
	1    1800 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R31
U 1 1 60DF58E4
P 1300 5300
F 0 "R31" V 1350 5350 50  0000 L TNN
F 1 "1k" V 1350 5200 50  0000 L TNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1300 5300 50  0001 C CNN
F 3 "~" H 1300 5300 50  0001 C CNN
	1    1300 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+1V0 #PWR0157
U 1 1 60DF604B
P 950 5300
F 0 "#PWR0157" H 950 5150 50  0001 C CNN
F 1 "+1V0" H 965 5473 50  0000 C CNN
F 2 "" H 950 5300 50  0001 C CNN
F 3 "" H 950 5300 50  0001 C CNN
	1    950  5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5300 1200 5300
Wire Wire Line
	1400 5300 1500 5300
$Comp
L Device:R_Small R29
U 1 1 60DFCB22
P 2000 4500
F 0 "R29" V 2050 4550 50  0000 L TNN
F 1 "30k" V 2050 4400 50  0000 L TNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2000 4500 50  0001 C CNN
F 3 "~" H 2000 4500 50  0001 C CNN
	1    2000 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R30
U 1 1 60E02C23
P 1800 4650
F 0 "R30" H 1750 4700 50  0000 R CNN
F 1 "30k" H 1750 4600 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1800 4650 50  0001 C CNN
F 3 "~" H 1800 4650 50  0001 C CNN
	1    1800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4650 2100 4500
Wire Wire Line
	1800 4850 1800 4750
Connection ~ 1800 4850
Wire Wire Line
	1900 4500 1800 4500
Wire Wire Line
	1800 4550 1800 4500
Wire Wire Line
	3800 3700 2750 3700
Wire Wire Line
	2750 3700 2750 4500
Wire Wire Line
	2750 4500 2100 4500
Connection ~ 2100 4500
Connection ~ 1800 4500
Wire Wire Line
	1800 4500 1350 4500
Text GLabel 1350 4500 0    50   Input ~ 0
VOUT
$Comp
L Device:LED_Small D3
U 1 1 60DA8BD6
P 2950 3000
F 0 "D3" V 2996 2930 50  0000 R CNN
F 1 "CHRG" V 2905 2930 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 2950 3000 50  0001 C CNN
F 3 "~" V 2950 3000 50  0001 C CNN
	1    2950 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 3100 3800 3100
$Comp
L Device:R_Small R32
U 1 1 60DB5232
P 2950 2650
F 0 "R32" H 3009 2696 50  0000 L CNN
F 1 "200Ω" H 3009 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2950 2650 50  0001 C CNN
F 3 "~" H 2950 2650 50  0001 C CNN
	1    2950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2750 2950 2900
Wire Wire Line
	2950 2550 2950 1800
Wire Wire Line
	2950 1800 5800 1800
Wire Wire Line
	5800 1800 5800 2800
Connection ~ 5800 2800
Wire Wire Line
	5800 2800 5500 2800
$Comp
L Regulator_Switching:TLV61046ADB U5
U 1 1 60DC7FC6
P 9500 3400
F 0 "U5" H 9500 3825 50  0000 C CNN
F 1 "TLV61046ADB" H 9500 3734 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9550 3250 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv61046a.pdf" H 9500 3500 50  0001 C CNN
	1    9500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L5
U 1 1 60DCDA49
P 9500 2800
F 0 "L5" V 9600 2850 50  0000 L CNN
F 1 "10µH" V 9600 2550 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9500 2800 50  0001 C CNN
F 3 "~" H 9500 2800 50  0001 C CNN
	1    9500 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 3200 9850 3200
Wire Wire Line
	9850 3200 9850 2800
Wire Wire Line
	9850 2800 9600 2800
Wire Wire Line
	9400 2800 9150 2800
Wire Wire Line
	9150 2800 9150 3200
Wire Wire Line
	9150 3200 9200 3200
Text GLabel 8450 2800 0    50   Input ~ 0
VOUT
Wire Wire Line
	8450 2800 8750 2800
Connection ~ 9150 2800
$Comp
L Device:C_Small C12
U 1 1 60DDFE96
P 8750 2900
F 0 "C12" H 8842 2946 50  0000 L CNN
F 1 "1µF" H 8842 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8750 2900 50  0001 C CNN
F 3 "~" H 8750 2900 50  0001 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
Connection ~ 8750 2800
Wire Wire Line
	8750 2800 9150 2800
$Comp
L power:GND #PWR0158
U 1 1 60DE0AA8
P 8750 3000
F 0 "#PWR0158" H 8750 2750 50  0001 C CNN
F 1 "GND" H 8755 2827 50  0000 C CNN
F 2 "" H 8750 3000 50  0001 C CNN
F 3 "" H 8750 3000 50  0001 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 60DE1626
P 9500 3600
F 0 "#PWR0159" H 9500 3350 50  0001 C CNN
F 1 "GND" H 9505 3427 50  0000 C CNN
F 2 "" H 9500 3600 50  0001 C CNN
F 3 "" H 9500 3600 50  0001 C CNN
	1    9500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R33
U 1 1 60DE21AA
P 10100 3300
F 0 "R33" H 10159 3346 50  0000 L CNN
F 1 "953k" H 10159 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10100 3300 50  0001 C CNN
F 3 "~" H 10100 3300 50  0001 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R34
U 1 1 60DE291A
P 10100 3600
F 0 "R34" H 10159 3646 50  0000 L CNN
F 1 "180k" H 10159 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10100 3600 50  0001 C CNN
F 3 "~" H 10100 3600 50  0001 C CNN
	1    10100 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 60DE2E77
P 10100 3700
F 0 "#PWR0160" H 10100 3450 50  0001 C CNN
F 1 "GND" H 10105 3527 50  0000 C CNN
F 2 "" H 10100 3700 50  0001 C CNN
F 3 "" H 10100 3700 50  0001 C CNN
	1    10100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3200 9950 3200
Wire Wire Line
	9950 3200 9950 3300
Wire Wire Line
	9950 3300 9800 3300
Wire Wire Line
	9800 3400 10100 3400
Wire Wire Line
	10100 3400 10100 3500
Connection ~ 10100 3400
Wire Wire Line
	10100 3200 10550 3200
Connection ~ 10100 3200
$Comp
L power:+5V #PWR0161
U 1 1 60DF8CC5
P 10750 3200
F 0 "#PWR0161" H 10750 3050 50  0001 C CNN
F 1 "+5V" H 10765 3373 50  0000 C CNN
F 2 "" H 10750 3200 50  0001 C CNN
F 3 "" H 10750 3200 50  0001 C CNN
	1    10750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 60DF8D06
P 10550 3300
F 0 "C13" H 10642 3346 50  0000 L CNN
F 1 "4.7µF" H 10642 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10550 3300 50  0001 C CNN
F 3 "~" H 10550 3300 50  0001 C CNN
	1    10550 3300
	1    0    0    -1  
$EndComp
Connection ~ 10550 3200
Wire Wire Line
	10550 3200 10750 3200
$Comp
L power:GND #PWR0162
U 1 1 60DF938D
P 10550 3400
F 0 "#PWR0162" H 10550 3150 50  0001 C CNN
F 1 "GND" H 10555 3227 50  0000 C CNN
F 2 "" H 10550 3400 50  0001 C CNN
F 3 "" H 10550 3400 50  0001 C CNN
	1    10550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3200 9150 3400
Wire Wire Line
	9150 3400 9200 3400
Connection ~ 9150 3200
$Comp
L gb-fpga:Switch SW1
U 1 1 60DEB027
P 7350 2800
F 0 "SW1" H 7350 3125 50  0000 C CNN
F 1 "Switch" H 7350 3034 50  0000 C CNN
F 2 "gb-fpga:EG2215" H 7350 2800 50  0001 C CNN
F 3 "" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 60E05727
P 7100 2900
F 0 "#PWR0185" H 7100 2650 50  0001 C CNN
F 1 "GND" H 7105 2727 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
