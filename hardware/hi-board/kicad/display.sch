EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L hi-board:ER-TFT040-2 U2
U 1 1 61420560
P 6250 3950
F 0 "U2" H 6478 4051 50  0000 L CNN
F 1 "ER-TFT040-2" H 6478 3960 50  0000 L CNN
F 2 "hi-board:HRS_FH28-60S-0.5SH(05)" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 614245DC
P 6000 1250
F 0 "#PWR0119" H 6000 1000 50  0001 C CNN
F 1 "GND" V 6005 1122 50  0000 R CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "" H 6000 1250 50  0001 C CNN
	1    6000 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 61424844
P 6000 1950
F 0 "#PWR0120" H 6000 1700 50  0001 C CNN
F 1 "GND" V 6005 1822 50  0000 R CNN
F 2 "" H 6000 1950 50  0001 C CNN
F 3 "" H 6000 1950 50  0001 C CNN
	1    6000 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 61424AB8
P 6000 2650
F 0 "#PWR0121" H 6000 2400 50  0001 C CNN
F 1 "GND" V 6005 2522 50  0000 R CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "" H 6000 2650 50  0001 C CNN
	1    6000 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61424D38
P 6000 3150
F 0 "#PWR0122" H 6000 2900 50  0001 C CNN
F 1 "GND" V 6005 3022 50  0000 R CNN
F 2 "" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 50  0001 C CNN
	1    6000 3150
	0    1    1    0   
$EndComp
$Comp
L power:+3V0 #PWR0123
U 1 1 614250C6
P 6000 6850
F 0 "#PWR0123" H 6000 6700 50  0001 C CNN
F 1 "+3V0" V 6000 7000 50  0000 L CNN
F 2 "" H 6000 6850 50  0001 C CNN
F 3 "" H 6000 6850 50  0001 C CNN
	1    6000 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V0 #PWR0124
U 1 1 614253AC
P 6000 6750
F 0 "#PWR0124" H 6000 6600 50  0001 C CNN
F 1 "+3V0" V 6000 6900 50  0000 L CNN
F 2 "" H 6000 6750 50  0001 C CNN
F 3 "" H 6000 6750 50  0001 C CNN
	1    6000 6750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61425FC1
P 6000 6550
F 0 "#PWR0125" H 6000 6300 50  0001 C CNN
F 1 "GND" V 6005 6422 50  0000 R CNN
F 2 "" H 6000 6550 50  0001 C CNN
F 3 "" H 6000 6550 50  0001 C CNN
	1    6000 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6142645E
P 6000 1150
F 0 "#PWR0126" H 6000 900 50  0001 C CNN
F 1 "GND" V 6005 1022 50  0000 R CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "" H 6000 1150 50  0001 C CNN
	1    6000 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 6142674E
P 6000 1050
F 0 "#PWR0127" H 6000 800 50  0001 C CNN
F 1 "GND" V 6005 922 50  0000 R CNN
F 2 "" H 6000 1050 50  0001 C CNN
F 3 "" H 6000 1050 50  0001 C CNN
	1    6000 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 61426C4E
P 5650 950
F 0 "R6" V 5454 950 50  0000 C CNN
F 1 "100Ω" V 5545 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5650 950 50  0001 C CNN
F 3 "~" H 5650 950 50  0001 C CNN
	1    5650 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 950  6000 950 
$Comp
L power:+12V #PWR0128
U 1 1 61427A96
P 5200 850
F 0 "#PWR0128" H 5200 700 50  0001 C CNN
F 1 "+12V" H 5215 1023 50  0000 C CNN
F 2 "" H 5200 850 50  0001 C CNN
F 3 "" H 5200 850 50  0001 C CNN
	1    5200 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61428253
P 6000 2050
F 0 "#PWR0129" H 6000 1800 50  0001 C CNN
F 1 "GND" V 6005 1922 50  0000 R CNN
F 2 "" H 6000 2050 50  0001 C CNN
F 3 "" H 6000 2050 50  0001 C CNN
	1    6000 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 6142857B
P 6000 2150
F 0 "#PWR0130" H 6000 1900 50  0001 C CNN
F 1 "GND" V 6005 2022 50  0000 R CNN
F 2 "" H 6000 2150 50  0001 C CNN
F 3 "" H 6000 2150 50  0001 C CNN
	1    6000 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 614288AF
P 6000 2250
F 0 "#PWR0131" H 6000 2000 50  0001 C CNN
F 1 "GND" V 6005 2122 50  0000 R CNN
F 2 "" H 6000 2250 50  0001 C CNN
F 3 "" H 6000 2250 50  0001 C CNN
	1    6000 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 61428BEF
P 6000 2350
F 0 "#PWR0132" H 6000 2100 50  0001 C CNN
F 1 "GND" V 6005 2222 50  0000 R CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "" H 6000 2350 50  0001 C CNN
	1    6000 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 61428F3B
P 6000 2450
F 0 "#PWR0133" H 6000 2200 50  0001 C CNN
F 1 "GND" V 6005 2322 50  0000 R CNN
F 2 "" H 6000 2450 50  0001 C CNN
F 3 "" H 6000 2450 50  0001 C CNN
	1    6000 2450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 61429293
P 6000 2550
F 0 "#PWR0134" H 6000 2300 50  0001 C CNN
F 1 "GND" V 6005 2422 50  0000 R CNN
F 2 "" H 6000 2550 50  0001 C CNN
F 3 "" H 6000 2550 50  0001 C CNN
	1    6000 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 6142B0A6
P 6000 6650
F 0 "#PWR0135" H 6000 6400 50  0001 C CNN
F 1 "GND" V 6005 6522 50  0000 R CNN
F 2 "" H 6000 6650 50  0001 C CNN
F 3 "" H 6000 6650 50  0001 C CNN
	1    6000 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 6142B456
P 6000 6350
F 0 "#PWR0136" H 6000 6100 50  0001 C CNN
F 1 "GND" V 6005 6222 50  0000 R CNN
F 2 "" H 6000 6350 50  0001 C CNN
F 3 "" H 6000 6350 50  0001 C CNN
	1    6000 6350
	0    1    1    0   
$EndComp
$Comp
L power:+3V0 #PWR0137
U 1 1 6142B7D1
P 6000 6450
F 0 "#PWR0137" H 6000 6300 50  0001 C CNN
F 1 "+3V0" V 6000 6600 50  0000 L CNN
F 2 "" H 6000 6450 50  0001 C CNN
F 3 "" H 6000 6450 50  0001 C CNN
	1    6000 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V0 #PWR0138
U 1 1 6142BF49
P 6000 5950
F 0 "#PWR0138" H 6000 5800 50  0001 C CNN
F 1 "+3V0" V 6000 6100 50  0000 L CNN
F 2 "" H 6000 5950 50  0001 C CNN
F 3 "" H 6000 5950 50  0001 C CNN
	1    6000 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_Small RV1
U 1 1 6144926C
P 5200 950
F 0 "RV1" H 5140 996 50  0000 R CNN
F 1 "30k" H 5140 905 50  0000 R CNN
F 2 "" H 5200 950 50  0001 C CNN
F 3 "~" H 5200 950 50  0001 C CNN
	1    5200 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 6144A423
P 5200 1050
F 0 "#PWR0164" H 5200 800 50  0001 C CNN
F 1 "GND" V 5205 922 50  0000 R CNN
F 2 "" H 5200 1050 50  0001 C CNN
F 3 "" H 5200 1050 50  0001 C CNN
	1    5200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 950  5550 950 
$Comp
L hi-board:LSF0108 U5
U 1 1 61471619
P 2550 1750
F 0 "U5" H 3050 2037 60  0000 C CNN
F 1 "LSF0108" H 3050 1931 60  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2750 1800 60  0001 L CNN
F 3 "" H 2750 1600 60  0001 L CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
$Comp
L hi-board:LSF0108 U6
U 1 1 61472835
P 2550 3150
F 0 "U6" H 3050 3437 60  0000 C CNN
F 1 "LSF0108" H 3050 3331 60  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2750 3200 60  0001 L CNN
F 3 "" H 2750 3000 60  0001 L CNN
	1    2550 3150
	1    0    0    -1  
$EndComp
$Comp
L hi-board:LSF0108 U7
U 1 1 614732BC
P 2550 4550
F 0 "U7" H 3050 4837 60  0000 C CNN
F 1 "LSF0108" H 3050 4731 60  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2750 4600 60  0001 L CNN
F 3 "" H 2750 4400 60  0001 L CNN
	1    2550 4550
	1    0    0    -1  
$EndComp
$Comp
L hi-board:LSF0108 U8
U 1 1 61474912
P 2550 5950
F 0 "U8" H 3050 6237 60  0000 C CNN
F 1 "LSF0108" H 3050 6131 60  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2750 6000 60  0001 L CNN
F 3 "" H 2750 5800 60  0001 L CNN
	1    2550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6450 5500 6450
Wire Wire Line
	5500 6150 6000 6150
Wire Wire Line
	6000 6050 5450 6050
Wire Wire Line
	5450 6050 5450 6350
Wire Wire Line
	5450 6350 3550 6350
Wire Wire Line
	3550 6250 5400 6250
Wire Wire Line
	5400 5850 6000 5850
Wire Wire Line
	6000 5750 5350 5750
Wire Wire Line
	5350 5750 5350 6150
Wire Wire Line
	5350 6150 3550 6150
Wire Wire Line
	3550 6050 5300 6050
Wire Wire Line
	5300 5650 6000 5650
Wire Wire Line
	4650 2150 3550 2150
Wire Wire Line
	3550 2050 4700 2050
Wire Wire Line
	4700 2950 6000 2950
Wire Wire Line
	6000 2850 4750 2850
Wire Wire Line
	4750 2850 4750 1950
Wire Wire Line
	4750 1950 3550 1950
Wire Wire Line
	3550 1850 4800 1850
Wire Wire Line
	4800 2750 6000 2750
NoConn ~ 3550 2250
NoConn ~ 3550 2350
NoConn ~ 3550 2450
NoConn ~ 3550 2550
NoConn ~ 2550 2250
NoConn ~ 2550 2350
NoConn ~ 2550 2450
NoConn ~ 2550 2550
NoConn ~ 3550 6550
NoConn ~ 3550 6650
NoConn ~ 3550 6750
NoConn ~ 2550 6550
NoConn ~ 2550 6650
NoConn ~ 2550 6750
Wire Wire Line
	2550 1850 1750 1850
Text GLabel 1750 1850 0    50   Input ~ 0
DISP_VS
Text GLabel 1750 1950 0    50   Input ~ 0
DISP_HS
Text GLabel 1750 2050 0    50   Input ~ 0
DISP_PCLK
Text GLabel 1750 2150 0    50   Input ~ 0
DISP_DE
Wire Wire Line
	1750 1950 2550 1950
Wire Wire Line
	1750 2050 2550 2050
Wire Wire Line
	1750 2150 2550 2150
Wire Wire Line
	1750 6450 2550 6450
Text GLabel 1750 6450 0    50   Input ~ 0
DISP_SDO
Text GLabel 1750 6350 0    50   Input ~ 0
DISP_SDI
Text GLabel 1750 6250 0    50   Input ~ 0
DISP_SCLK
Text GLabel 1750 6150 0    50   Input ~ 0
DISP_CS
Text GLabel 1750 6050 0    50   Input ~ 0
DISP_RST
Wire Wire Line
	1750 6350 2550 6350
Wire Wire Line
	1750 6250 2550 6250
Wire Wire Line
	1750 6150 2550 6150
Wire Wire Line
	1750 6050 2550 6050
Wire Wire Line
	4650 3050 6000 3050
Wire Wire Line
	6000 3250 3550 3250
Wire Wire Line
	4650 2150 4650 3050
Wire Wire Line
	4700 2050 4700 2950
Wire Wire Line
	4800 1850 4800 2750
Wire Wire Line
	5300 6050 5300 5650
Wire Wire Line
	5400 6250 5400 5850
Wire Wire Line
	5500 6450 5500 6150
Wire Wire Line
	1750 3250 2550 3250
Text GLabel 1750 5350 0    50   Input ~ 0
DISP_R0
Wire Wire Line
	1750 5350 2550 5350
Text GLabel 1750 5250 0    50   Input ~ 0
DISP_R1
Text GLabel 1750 5150 0    50   Input ~ 0
DISP_R2
Text GLabel 1750 5050 0    50   Input ~ 0
DISP_R3
Text GLabel 1750 4950 0    50   Input ~ 0
DISP_R4
Text GLabel 1750 4850 0    50   Input ~ 0
DISP_G0
Text GLabel 1750 4750 0    50   Input ~ 0
DISP_G1
Text GLabel 1750 4650 0    50   Input ~ 0
DISP_G2
Wire Wire Line
	1750 4650 2550 4650
Wire Wire Line
	1750 4750 2550 4750
Wire Wire Line
	1750 4850 2550 4850
Wire Wire Line
	1750 4950 2550 4950
Wire Wire Line
	1750 5050 2550 5050
Wire Wire Line
	1750 5150 2550 5150
Wire Wire Line
	1750 5250 2550 5250
Wire Wire Line
	3550 5350 5250 5350
Wire Wire Line
	5250 5350 5250 5250
Wire Wire Line
	5250 5250 6000 5250
Wire Wire Line
	6000 5150 5200 5150
Wire Wire Line
	5200 5150 5200 5250
Wire Wire Line
	5200 5250 3550 5250
Wire Wire Line
	3550 5150 5150 5150
Wire Wire Line
	5150 5150 5150 5050
Wire Wire Line
	5150 5050 6000 5050
Wire Wire Line
	6000 4950 5100 4950
Wire Wire Line
	5100 4950 5100 5050
Wire Wire Line
	5100 5050 3550 5050
Wire Wire Line
	3550 4950 5050 4950
Wire Wire Line
	5050 4950 5050 4850
Wire Wire Line
	5050 4850 6000 4850
Wire Wire Line
	6000 4550 5000 4550
Wire Wire Line
	5000 4550 5000 4850
Wire Wire Line
	5000 4850 3550 4850
Wire Wire Line
	3550 4750 4950 4750
Wire Wire Line
	4950 4750 4950 4450
Wire Wire Line
	4950 4450 6000 4450
Wire Wire Line
	6000 4350 4900 4350
Wire Wire Line
	4900 4350 4900 4650
Wire Wire Line
	4900 4650 3550 4650
Wire Wire Line
	6000 4250 3850 4250
Wire Wire Line
	3850 4250 3850 3950
Wire Wire Line
	3850 3950 3550 3950
Wire Wire Line
	3550 3850 3900 3850
Wire Wire Line
	3900 3850 3900 4150
Wire Wire Line
	3900 4150 6000 4150
Wire Wire Line
	6000 4050 3950 4050
Wire Wire Line
	3950 4050 3950 3750
Wire Wire Line
	3950 3750 3550 3750
Text GLabel 1750 3950 0    50   Input ~ 0
DISP_G3
Wire Wire Line
	1750 3950 2550 3950
Text GLabel 1750 3850 0    50   Input ~ 0
DISP_G4
Text GLabel 1750 3750 0    50   Input ~ 0
DISP_G5
Wire Wire Line
	1750 3850 2550 3850
Wire Wire Line
	1750 3750 2550 3750
Wire Wire Line
	3550 3650 6000 3650
Wire Wire Line
	3550 3550 6000 3550
Wire Wire Line
	3550 3450 6000 3450
Wire Wire Line
	3550 3350 6000 3350
Text GLabel 1750 3650 0    50   Input ~ 0
DISP_B0
Wire Wire Line
	1750 3650 2550 3650
Text GLabel 1750 3550 0    50   Input ~ 0
DISP_B1
Text GLabel 1750 3450 0    50   Input ~ 0
DISP_B2
Text GLabel 1750 3350 0    50   Input ~ 0
DISP_B3
Text GLabel 1750 3250 0    50   Input ~ 0
DISP_B4
Wire Wire Line
	1750 3350 2550 3350
Wire Wire Line
	1750 3450 2550 3450
Wire Wire Line
	1750 3550 2550 3550
Wire Wire Line
	6000 3750 5950 3750
Wire Wire Line
	5950 3750 5950 3850
Wire Wire Line
	5950 3950 6000 3950
Wire Wire Line
	6000 3850 5950 3850
Connection ~ 5950 3850
Wire Wire Line
	5950 3850 5950 3950
$Comp
L power:GND #PWR0165
U 1 1 61597586
P 5950 3850
F 0 "#PWR0165" H 5950 3600 50  0001 C CNN
F 1 "GND" V 5955 3722 50  0000 R CNN
F 2 "" H 5950 3850 50  0001 C CNN
F 3 "" H 5950 3850 50  0001 C CNN
	1    5950 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4650 5950 4650
Wire Wire Line
	5950 4650 5950 4750
Wire Wire Line
	5950 4750 6000 4750
$Comp
L power:GND #PWR0166
U 1 1 6159B976
P 5950 4750
F 0 "#PWR0166" H 5950 4500 50  0001 C CNN
F 1 "GND" V 5955 4622 50  0000 R CNN
F 2 "" H 5950 4750 50  0001 C CNN
F 3 "" H 5950 4750 50  0001 C CNN
	1    5950 4750
	0    1    1    0   
$EndComp
Connection ~ 5950 4750
Wire Wire Line
	6000 5350 5950 5350
Wire Wire Line
	5950 5350 5950 5450
Wire Wire Line
	5950 5550 6000 5550
Wire Wire Line
	6000 5450 5950 5450
Connection ~ 5950 5450
Wire Wire Line
	5950 5450 5950 5550
$Comp
L power:GND #PWR0167
U 1 1 615A432E
P 5950 5450
F 0 "#PWR0167" H 5950 5200 50  0001 C CNN
F 1 "GND" V 5955 5322 50  0000 R CNN
F 2 "" H 5950 5450 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0168
U 1 1 615A4D1F
P 3550 4050
F 0 "#PWR0168" H 3550 3800 50  0001 C CNN
F 1 "GND" H 3555 3877 50  0000 C CNN
F 2 "" H 3550 4050 50  0001 C CNN
F 3 "" H 3550 4050 50  0001 C CNN
	1    3550 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 615A5144
P 3550 5450
F 0 "#PWR0169" H 3550 5200 50  0001 C CNN
F 1 "GND" H 3555 5277 50  0000 C CNN
F 2 "" H 3550 5450 50  0001 C CNN
F 3 "" H 3550 5450 50  0001 C CNN
	1    3550 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 615A5575
P 3550 6850
F 0 "#PWR0170" H 3550 6600 50  0001 C CNN
F 1 "GND" H 3555 6677 50  0000 C CNN
F 2 "" H 3550 6850 50  0001 C CNN
F 3 "" H 3550 6850 50  0001 C CNN
	1    3550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 615A59B2
P 3550 2650
F 0 "#PWR0171" H 3550 2400 50  0001 C CNN
F 1 "GND" H 3555 2477 50  0000 C CNN
F 2 "" H 3550 2650 50  0001 C CNN
F 3 "" H 3550 2650 50  0001 C CNN
	1    3550 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0172
U 1 1 615A62B3
P 3550 1750
F 0 "#PWR0172" H 3550 1600 50  0001 C CNN
F 1 "+3V0" H 3565 1923 50  0000 C CNN
F 2 "" H 3550 1750 50  0001 C CNN
F 3 "" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0173
U 1 1 615A6714
P 3550 3150
F 0 "#PWR0173" H 3550 3000 50  0001 C CNN
F 1 "+3V0" H 3565 3323 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "" H 3550 3150 50  0001 C CNN
	1    3550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0174
U 1 1 615A6B85
P 3550 4550
F 0 "#PWR0174" H 3550 4400 50  0001 C CNN
F 1 "+3V0" H 3565 4723 50  0000 C CNN
F 2 "" H 3550 4550 50  0001 C CNN
F 3 "" H 3550 4550 50  0001 C CNN
	1    3550 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0175
U 1 1 615A7006
P 3550 5950
F 0 "#PWR0175" H 3550 5800 50  0001 C CNN
F 1 "+3V0" H 3565 6123 50  0000 C CNN
F 2 "" H 3550 5950 50  0001 C CNN
F 3 "" H 3550 5950 50  0001 C CNN
	1    3550 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0176
U 1 1 615A761A
P 2550 5950
F 0 "#PWR0176" H 2550 5800 50  0001 C CNN
F 1 "+3V3" H 2565 6123 50  0000 C CNN
F 2 "" H 2550 5950 50  0001 C CNN
F 3 "" H 2550 5950 50  0001 C CNN
	1    2550 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0177
U 1 1 615A7AC1
P 2550 4550
F 0 "#PWR0177" H 2550 4400 50  0001 C CNN
F 1 "+3V3" H 2565 4723 50  0000 C CNN
F 2 "" H 2550 4550 50  0001 C CNN
F 3 "" H 2550 4550 50  0001 C CNN
	1    2550 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0178
U 1 1 615A7F7A
P 2550 3150
F 0 "#PWR0178" H 2550 3000 50  0001 C CNN
F 1 "+3V3" H 2565 3323 50  0000 C CNN
F 2 "" H 2550 3150 50  0001 C CNN
F 3 "" H 2550 3150 50  0001 C CNN
	1    2550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0179
U 1 1 615A8445
P 2550 1750
F 0 "#PWR0179" H 2550 1600 50  0001 C CNN
F 1 "+3V3" H 2565 1923 50  0000 C CNN
F 2 "" H 2550 1750 50  0001 C CNN
F 3 "" H 2550 1750 50  0001 C CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0180
U 1 1 615A8922
P 2550 2650
F 0 "#PWR0180" H 2550 2500 50  0001 C CNN
F 1 "+3V3" V 2550 2800 50  0000 L CNN
F 2 "" H 2550 2650 50  0001 C CNN
F 3 "" H 2550 2650 50  0001 C CNN
	1    2550 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0181
U 1 1 615A8A53
P 2550 4050
F 0 "#PWR0181" H 2550 3900 50  0001 C CNN
F 1 "+3V3" V 2550 4200 50  0000 L CNN
F 2 "" H 2550 4050 50  0001 C CNN
F 3 "" H 2550 4050 50  0001 C CNN
	1    2550 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0182
U 1 1 615A8EEC
P 2550 5450
F 0 "#PWR0182" H 2550 5300 50  0001 C CNN
F 1 "+3V3" V 2550 5600 50  0000 L CNN
F 2 "" H 2550 5450 50  0001 C CNN
F 3 "" H 2550 5450 50  0001 C CNN
	1    2550 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0183
U 1 1 615A9424
P 2550 6850
F 0 "#PWR0183" H 2550 6700 50  0001 C CNN
F 1 "+3V3" V 2550 7000 50  0000 L CNN
F 2 "" H 2550 6850 50  0001 C CNN
F 3 "" H 2550 6850 50  0001 C CNN
	1    2550 6850
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
