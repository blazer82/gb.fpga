EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "Configuration"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 60D22A7C
P 9250 4600
F 0 "#PWR0101" H 9250 4350 50  0001 C CNN
F 1 "GND" H 9255 4427 50  0000 C CNN
F 2 "" H 9250 4600 50  0001 C CNN
F 3 "" H 9250 4600 50  0001 C CNN
	1    9250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 60D44063
P 9250 3500
F 0 "#PWR0106" H 9250 3350 50  0001 C CNN
F 1 "+3V3" H 9265 3673 50  0000 C CNN
F 2 "" H 9250 3500 50  0001 C CNN
F 3 "" H 9250 3500 50  0001 C CNN
	1    9250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3500 9250 3600
$Comp
L Device:C_Small C1
U 1 1 60D4671F
P 9600 3700
F 0 "C1" H 9692 3746 50  0000 L CNN
F 1 "100nF" H 9692 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9600 3700 50  0001 C CNN
F 3 "~" H 9600 3700 50  0001 C CNN
	1    9600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60D480A1
P 9600 3800
F 0 "#PWR0107" H 9600 3550 50  0001 C CNN
F 1 "GND" H 9605 3627 50  0000 C CNN
F 2 "" H 9600 3800 50  0001 C CNN
F 3 "" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3600 9250 3600
Connection ~ 9250 3600
Wire Wire Line
	9250 3600 9250 3800
$Comp
L Device:R_Small R1
U 1 1 60D4AB05
P 7550 3450
F 0 "R1" H 7400 3400 50  0000 C CNN
F 1 "4.7k" H 7400 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7550 3450 50  0001 C CNN
F 3 "~" H 7550 3450 50  0001 C CNN
	1    7550 3450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 60D4BCCC
P 7550 3350
F 0 "#PWR0108" H 7550 3200 50  0001 C CNN
F 1 "+3V3" H 7565 3523 50  0000 C CNN
F 2 "" H 7550 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0001 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:MX25R3235FZBxx1 U2
U 1 1 60D4EC7E
P 9050 4200
F 0 "U2" H 9500 4050 50  0000 L CNN
F 1 "MX25R3235FZBxx1" H 9500 3950 50  0000 L CNN
F 2 "Package_SON:USON-8_4.0x3.0mm_P0.8mm" H 9050 3600 50  0001 C CNN
F 3 "http://www.macronix.com/Lists/Datasheet/Attachments/7534/MX25R3235F,%20Wide%20Range,%2032Mb,%20v1.6.pdf" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60D5B55D
P 7200 3450
F 0 "R3" H 7050 3400 50  0000 C CNN
F 1 "1.8k" H 7050 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7200 3450 50  0001 C CNN
F 3 "~" H 7200 3450 50  0001 C CNN
	1    7200 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60D5BFAC
P 6850 3450
F 0 "R2" H 6700 3400 50  0000 C CNN
F 1 "1.8k" H 6700 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6850 3450 50  0001 C CNN
F 3 "~" H 6850 3450 50  0001 C CNN
	1    6850 3450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 60D5C464
P 7200 3350
F 0 "#PWR0109" H 7200 3200 50  0001 C CNN
F 1 "+3V3" H 7215 3523 50  0000 C CNN
F 2 "" H 7200 3350 50  0001 C CNN
F 3 "" H 7200 3350 50  0001 C CNN
	1    7200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 60D5D2AC
P 6850 3350
F 0 "#PWR0110" H 6850 3200 50  0001 C CNN
F 1 "+3V3" H 6865 3523 50  0000 C CNN
F 2 "" H 6850 3350 50  0001 C CNN
F 3 "" H 6850 3350 50  0001 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4300 7200 3550
Wire Wire Line
	6850 4400 6850 3550
Wire Wire Line
	9550 4200 9700 4200
Wire Wire Line
	7550 4200 8550 4200
Wire Wire Line
	7200 4300 8550 4300
Wire Wire Line
	6850 4400 8550 4400
Wire Wire Line
	6850 4400 5950 4400
Wire Wire Line
	5950 4400 5950 4000
Wire Wire Line
	5950 4000 5400 4000
Connection ~ 6850 4400
Wire Wire Line
	7200 4300 6100 4300
Wire Wire Line
	6100 4300 6100 4100
Wire Wire Line
	6100 4100 5400 4100
Connection ~ 7200 4300
Wire Wire Line
	7550 4200 5800 4200
Wire Wire Line
	5800 4200 5800 4400
Wire Wire Line
	5800 4400 5400 4400
Connection ~ 7550 4200
Wire Wire Line
	7550 4200 7550 3550
Wire Wire Line
	8550 4100 6450 4100
Wire Wire Line
	6450 4100 6450 3700
Wire Wire Line
	6450 2700 2600 2700
Wire Wire Line
	2600 2700 2600 3300
Wire Wire Line
	2600 3300 3000 3300
Wire Wire Line
	8550 4000 6200 4000
Wire Wire Line
	6200 4000 6200 3900
Wire Wire Line
	6200 3900 5400 3900
Wire Wire Line
	9700 4200 9700 4900
Wire Wire Line
	9700 4900 5600 4900
Wire Wire Line
	5600 4900 5600 3800
Wire Wire Line
	5600 3800 5400 3800
Wire Wire Line
	5400 4200 5500 4200
Wire Wire Line
	5500 4200 5500 3700
Wire Wire Line
	5500 3700 6450 3700
Connection ~ 6450 3700
Wire Wire Line
	6450 3700 6450 2700
Wire Wire Line
	5400 4300 5700 4300
Wire Wire Line
	3000 3400 2300 3400
$Comp
L Device:R_Small R7
U 1 1 60DA73F1
P 2300 3200
F 0 "R7" H 2150 3150 50  0000 C CNN
F 1 "4.7k" H 2150 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2300 3200 50  0001 C CNN
F 3 "~" H 2300 3200 50  0001 C CNN
	1    2300 3200
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 60DA7B88
P 2300 3100
F 0 "#PWR0112" H 2300 2950 50  0001 C CNN
F 1 "+3V3" H 2315 3273 50  0000 C CNN
F 2 "" H 2300 3100 50  0001 C CNN
F 3 "" H 2300 3100 50  0001 C CNN
	1    2300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2300 3300
Wire Wire Line
	3000 4000 2850 4000
$Comp
L power:GND #PWR0113
U 1 1 60DAB38C
P 2850 5100
F 0 "#PWR0113" H 2850 4850 50  0001 C CNN
F 1 "GND" H 2855 4927 50  0000 C CNN
F 2 "" H 2850 5100 50  0001 C CNN
F 3 "" H 2850 5100 50  0001 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3700 2000 3700
Wire Wire Line
	2000 3700 2000 3300
Wire Wire Line
	3000 3800 1700 3800
Wire Wire Line
	1700 3800 1700 3300
$Comp
L Device:R_Small R6
U 1 1 60DADCB4
P 2000 3200
F 0 "R6" H 1850 3150 50  0000 C CNN
F 1 "4.7k" H 1850 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2000 3200 50  0001 C CNN
F 3 "~" H 2000 3200 50  0001 C CNN
	1    2000 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60DAE696
P 1700 3200
F 0 "R5" H 1550 3150 50  0000 C CNN
F 1 "4.7k" H 1550 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1700 3200 50  0001 C CNN
F 3 "~" H 1700 3200 50  0001 C CNN
	1    1700 3200
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 60DB02C1
P 1700 3100
F 0 "#PWR0114" H 1700 2950 50  0001 C CNN
F 1 "+3V3" H 1715 3273 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 60DB09DA
P 2000 3100
F 0 "#PWR0115" H 2000 2950 50  0001 C CNN
F 1 "+3V3" H 2015 3273 50  0000 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4300 2500 4300
Wire Wire Line
	2500 4300 2500 4250
$Comp
L power:+3V3 #PWR0116
U 1 1 60DBA573
P 2500 4250
F 0 "#PWR0116" H 2500 4100 50  0001 C CNN
F 1 "+3V3" H 2515 4423 50  0000 C CNN
F 2 "" H 2500 4250 50  0001 C CNN
F 3 "" H 2500 4250 50  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4000 2850 4100
$Comp
L gb-fpga:xc7s25ftgb196 U1
U 1 1 60D5855D
P 3000 3300
F 0 "U1" H 4200 3587 60  0000 C CNN
F 1 "xc7s25ftgb196" H 4200 3481 60  0000 C CNN
F 2 "" H 3200 3350 60  0001 L CNN
F 3 "" H 3200 3150 60  0001 L CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 2850 4100
Connection ~ 2850 4100
Wire Wire Line
	2850 4100 2850 4400
Wire Wire Line
	3000 4400 2850 4400
Connection ~ 2850 4400
Wire Wire Line
	2850 4400 2850 4500
Wire Wire Line
	3000 4500 2850 4500
Connection ~ 2850 4500
Wire Wire Line
	2850 4500 2850 4700
Wire Wire Line
	3000 4700 2850 4700
Connection ~ 2850 4700
Wire Wire Line
	2850 4700 2850 4800
Wire Wire Line
	3000 4800 2850 4800
Connection ~ 2850 4800
Wire Wire Line
	2850 4800 2850 4900
Wire Wire Line
	3000 4900 2850 4900
Connection ~ 2850 4900
Wire Wire Line
	2850 4900 2850 5000
Wire Wire Line
	3000 5000 2850 5000
Connection ~ 2850 5000
Wire Wire Line
	2850 5000 2850 5100
$Comp
L Device:R_Small R8
U 1 1 60DF74F0
P 2800 3100
F 0 "R8" H 2650 3050 50  0000 C CNN
F 1 "200" H 2650 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 3100 50  0001 C CNN
F 3 "~" H 2800 3100 50  0001 C CNN
	1    2800 3100
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 60DF7FE3
P 2800 3000
F 0 "#PWR0117" H 2800 2850 50  0001 C CNN
F 1 "+3V3" H 2815 3173 50  0000 C CNN
F 2 "" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 2800 3600
Wire Wire Line
	2800 3600 2800 3200
$Comp
L Device:LED_Small D1
U 1 1 60DFA9B6
P 2150 4800
F 0 "D1" V 2196 4730 50  0000 R CNN
F 1 "LED" V 2105 4730 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 2150 4800 50  0001 C CNN
F 3 "~" V 2150 4800 50  0001 C CNN
	1    2150 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60DFCBE7
P 2150 4450
F 0 "R9" H 2000 4400 50  0000 C CNN
F 1 "100" H 2000 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2150 4450 50  0001 C CNN
F 3 "~" H 2150 4450 50  0001 C CNN
	1    2150 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4350 2150 3600
Wire Wire Line
	2150 3600 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	2150 4550 2150 4700
$Comp
L power:GND #PWR0118
U 1 1 60E00C13
P 2150 5100
F 0 "#PWR0118" H 2150 4850 50  0001 C CNN
F 1 "GND" H 2155 4927 50  0000 C CNN
F 2 "" H 2150 5100 50  0001 C CNN
F 3 "" H 2150 5100 50  0001 C CNN
	1    2150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5100 2150 4900
$Comp
L power:+3V3 #PWR0111
U 1 1 60DA5CD7
P 5700 3000
F 0 "#PWR0111" H 5700 2850 50  0001 C CNN
F 1 "+3V3" H 5715 3173 50  0000 C CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4300 5700 3200
$Comp
L Device:R_Small R4
U 1 1 60DA54B4
P 5700 3100
F 0 "R4" H 5550 3050 50  0000 C CNN
F 1 "1k" H 5550 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5700 3100 50  0001 C CNN
F 3 "~" H 5700 3100 50  0001 C CNN
	1    5700 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 3300 5850 3300
Wire Wire Line
	5400 3400 5850 3400
Wire Wire Line
	5400 3500 5850 3500
Wire Wire Line
	5400 3600 5850 3600
Text GLabel 5850 3300 2    50   Input ~ 0
TCK
Text GLabel 5850 3400 2    50   Input ~ 0
TDI
Text GLabel 5850 3500 2    50   Output ~ 0
TDO
Text GLabel 5850 3600 2    50   Input ~ 0
TMS
$EndSCHEMATC
