EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
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
L Connector_Generic:Conn_02x25_Counter_Clockwise J5
U 1 1 60DDE126
P 5600 3700
F 0 "J5" H 5650 5117 50  0000 C CNN
F 1 "Conn_02x25_Counter_Clockwise" H 5650 5026 50  0001 C CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-50S-0.5SH_1x50-1MP_P0.50mm_Horizontal" H 5600 3700 50  0001 C CNN
F 3 "~" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0186
U 1 1 60DE5708
P 5400 2500
F 0 "#PWR0186" H 5400 2350 50  0001 C CNN
F 1 "+5V" H 5415 2673 50  0000 C CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0001 C CNN
	1    5400 2500
	1    0    0    -1  
$EndComp
Text GLabel 6000 2600 2    50   Input ~ 0
VOUT
$Comp
L power:GND #PWR0188
U 1 1 60DE7C0A
P 5400 2700
F 0 "#PWR0188" H 5400 2450 50  0001 C CNN
F 1 "GND" V 5405 2572 50  0000 R CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	0    1    1    0   
$EndComp
Text GLabel 5300 3000 0    50   Input ~ 0
DISP_SCLK
Text GLabel 5300 3100 0    50   Input ~ 0
DISP_CS
Text GLabel 5300 2900 0    50   Input ~ 0
DISP_SDI
Text GLabel 5300 2800 0    50   Output ~ 0
DISP_SDO
$Comp
L power:GND #PWR0189
U 1 1 60DEAF08
P 5400 3300
F 0 "#PWR0189" H 5400 3050 50  0001 C CNN
F 1 "GND" V 5405 3172 50  0000 R CNN
F 2 "" H 5400 3300 50  0001 C CNN
F 3 "" H 5400 3300 50  0001 C CNN
	1    5400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2800 5400 2800
Wire Wire Line
	5300 2900 5400 2900
Wire Wire Line
	5300 3000 5400 3000
Wire Wire Line
	5300 3100 5400 3100
Text GLabel 5300 3200 0    50   Input ~ 0
DISP_RST
Wire Wire Line
	5300 3200 5400 3200
Text GLabel 5300 3400 0    50   Input ~ 0
DISP_B0
Text GLabel 5300 3500 0    50   Input ~ 0
DISP_B1
Text GLabel 5300 3600 0    50   Input ~ 0
DISP_B2
Text GLabel 5300 3700 0    50   Input ~ 0
DISP_B3
Text GLabel 5300 3800 0    50   Input ~ 0
DISP_B4
Text GLabel 5300 3900 0    50   Input ~ 0
DISP_G0
Text GLabel 5300 4000 0    50   Input ~ 0
DISP_G1
Text GLabel 5300 4100 0    50   Input ~ 0
DISP_G2
Text GLabel 5300 4200 0    50   Input ~ 0
DISP_G3
Text GLabel 5300 4300 0    50   Input ~ 0
DISP_G4
Text GLabel 5300 4400 0    50   Input ~ 0
DISP_G5
Text GLabel 5300 4500 0    50   Input ~ 0
DISP_R0
Text GLabel 5300 4600 0    50   Input ~ 0
DISP_R1
Text GLabel 5300 4700 0    50   Input ~ 0
DISP_R2
Text GLabel 5300 4800 0    50   Input ~ 0
DISP_R3
Text GLabel 5300 4900 0    50   Input ~ 0
DISP_R4
$Comp
L power:GND #PWR0190
U 1 1 60DF02FE
P 5900 4900
F 0 "#PWR0190" H 5900 4650 50  0001 C CNN
F 1 "GND" V 5905 4772 50  0000 R CNN
F 2 "" H 5900 4900 50  0001 C CNN
F 3 "" H 5900 4900 50  0001 C CNN
	1    5900 4900
	0    -1   -1   0   
$EndComp
Text GLabel 6000 4800 2    50   Input ~ 0
DISP_DE
Text GLabel 6000 4700 2    50   Input ~ 0
DISP_PCLK
Text GLabel 6000 4600 2    50   Input ~ 0
DISP_HS
Text GLabel 6000 4500 2    50   Input ~ 0
DISP_VS
$Comp
L power:GND #PWR0191
U 1 1 60DF188C
P 5900 4400
F 0 "#PWR0191" H 5900 4150 50  0001 C CNN
F 1 "GND" V 5905 4272 50  0000 R CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "" H 5900 4400 50  0001 C CNN
	1    5900 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4500 6000 4500
Wire Wire Line
	5900 4600 6000 4600
Wire Wire Line
	5900 4700 6000 4700
Wire Wire Line
	5900 4800 6000 4800
Wire Wire Line
	5400 4900 5300 4900
Wire Wire Line
	5300 4800 5400 4800
Wire Wire Line
	5300 4700 5400 4700
Wire Wire Line
	5300 4600 5400 4600
Wire Wire Line
	5300 4500 5400 4500
Wire Wire Line
	5300 4400 5400 4400
Wire Wire Line
	5300 4300 5400 4300
Wire Wire Line
	5400 4200 5300 4200
Wire Wire Line
	5300 4100 5400 4100
Wire Wire Line
	5400 4000 5300 4000
Wire Wire Line
	5300 3900 5400 3900
Wire Wire Line
	5400 3800 5300 3800
Wire Wire Line
	5300 3700 5400 3700
Wire Wire Line
	5400 3600 5300 3600
Wire Wire Line
	5300 3500 5400 3500
Wire Wire Line
	5400 3400 5300 3400
$Comp
L power:GND #PWR0192
U 1 1 60DF8A12
P 5900 4300
F 0 "#PWR0192" H 5900 4050 50  0001 C CNN
F 1 "GND" V 5905 4172 50  0000 R CNN
F 2 "" H 5900 4300 50  0001 C CNN
F 3 "" H 5900 4300 50  0001 C CNN
	1    5900 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 60DF95FC
P 5900 3000
F 0 "#PWR0193" H 5900 2750 50  0001 C CNN
F 1 "GND" V 5905 2872 50  0000 R CNN
F 2 "" H 5900 3000 50  0001 C CNN
F 3 "" H 5900 3000 50  0001 C CNN
	1    5900 3000
	0    -1   -1   0   
$EndComp
Text GLabel 8250 3150 2    50   Input ~ 0
AUD_R
Wire Wire Line
	6000 2700 5900 2700
Wire Wire Line
	5900 2600 6000 2600
$Comp
L power:GND #PWR0187
U 1 1 60DFC643
P 5900 3100
F 0 "#PWR0187" H 5900 2850 50  0001 C CNN
F 1 "GND" V 5905 2972 50  0000 R CNN
F 2 "" H 5900 3100 50  0001 C CNN
F 3 "" H 5900 3100 50  0001 C CNN
	1    5900 3100
	0    -1   -1   0   
$EndComp
Text GLabel 6000 4200 2    50   Input ~ 0
JOY_B
Text GLabel 6000 4100 2    50   Input ~ 0
JOY_A
Text GLabel 6000 4000 2    50   Input ~ 0
JOY_START
Text GLabel 6000 3900 2    50   Input ~ 0
JOY_SELECT
Text GLabel 6000 3800 2    50   Input ~ 0
JOY_RIGHT
Text GLabel 6000 3700 2    50   Input ~ 0
JOY_UP
Text GLabel 6000 3600 2    50   Input ~ 0
JOY_DOWN
Text GLabel 6000 3500 2    50   Input ~ 0
JOY_LEFT
$Comp
L power:GND #PWR0194
U 1 1 60DFEACD
P 5900 3400
F 0 "#PWR0194" H 5900 3150 50  0001 C CNN
F 1 "GND" V 5905 3272 50  0000 R CNN
F 2 "" H 5900 3400 50  0001 C CNN
F 3 "" H 5900 3400 50  0001 C CNN
	1    5900 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3500 6000 3500
Wire Wire Line
	5900 3600 6000 3600
Wire Wire Line
	5900 3700 6000 3700
Wire Wire Line
	5900 3800 6000 3800
Wire Wire Line
	5900 3900 6000 3900
Wire Wire Line
	5900 4000 6000 4000
Wire Wire Line
	5900 4100 6000 4100
Wire Wire Line
	5900 4200 6000 4200
Text GLabel 6000 2800 2    50   Input ~ 0
VOUT
Text GLabel 6000 2700 2    50   Input ~ 0
VOUT
$Comp
L power:GND #PWR0195
U 1 1 60E0B6AC
P 5400 2600
F 0 "#PWR0195" H 5400 2350 50  0001 C CNN
F 1 "GND" V 5405 2472 50  0000 R CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	0    1    1    0   
$EndComp
Text GLabel 8250 3650 2    50   Input ~ 0
AUD_L
Wire Wire Line
	6000 2800 5900 2800
Text GLabel 6000 2900 2    50   Input ~ 0
VOUT
Wire Wire Line
	6000 2900 5900 2900
$Comp
L power:+3V3 #PWR0196
U 1 1 60E17B51
P 5900 2500
F 0 "#PWR0196" H 5900 2350 50  0001 C CNN
F 1 "+3V3" H 5915 2673 50  0000 C CNN
F 2 "" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R35
U 1 1 60DEF326
P 8000 3150
F 0 "R35" V 7804 3150 50  0000 C CNN
F 1 "1k" V 7895 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8000 3150 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	1    8000 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R36
U 1 1 60DEF85D
P 8000 3650
F 0 "R36" V 7804 3650 50  0000 C CNN
F 1 "1k" V 7895 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8000 3650 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C48
U 1 1 60DF013C
P 7650 3250
F 0 "C48" H 7742 3296 50  0000 L CNN
F 1 "4.7nF" H 7742 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7650 3250 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C49
U 1 1 60DF0823
P 7650 3750
F 0 "C49" H 7742 3796 50  0000 L CNN
F 1 "4.7nF" H 7742 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7650 3750 50  0001 C CNN
F 3 "~" H 7650 3750 50  0001 C CNN
	1    7650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3150 8100 3150
Wire Wire Line
	7900 3150 7650 3150
Wire Wire Line
	6600 3000 6600 3200
Wire Wire Line
	5900 3200 6600 3200
Wire Wire Line
	8250 3650 8100 3650
Wire Wire Line
	7900 3650 7650 3650
Wire Wire Line
	6600 3500 6600 3300
Wire Wire Line
	5900 3300 6600 3300
$Comp
L power:GND #PWR0197
U 1 1 60DF887F
P 7650 3350
F 0 "#PWR0197" H 7650 3100 50  0001 C CNN
F 1 "GND" H 7655 3177 50  0000 C CNN
F 2 "" H 7650 3350 50  0001 C CNN
F 3 "" H 7650 3350 50  0001 C CNN
	1    7650 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 60DF88E6
P 7650 3850
F 0 "#PWR0198" H 7650 3600 50  0001 C CNN
F 1 "GND" H 7655 3677 50  0000 C CNN
F 2 "" H 7650 3850 50  0001 C CNN
F 3 "" H 7650 3850 50  0001 C CNN
	1    7650 3850
	1    0    0    -1  
$EndComp
$Comp
L gb-fpga:R_POT_Dual RV1
U 1 1 60DF9C86
P 7150 3250
F 0 "RV1" V 7200 3250 50  0000 R CNN
F 1 "25k" V 7100 3250 50  0000 R CNN
F 2 "gb-fpga:Dual_Pot" H 7400 3175 50  0001 C CNN
F 3 "~" H 7400 3175 50  0001 C CNN
	1    7150 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3150 7250 3150
Connection ~ 7650 3150
Wire Wire Line
	7650 3650 7250 3650
Connection ~ 7650 3650
Wire Wire Line
	7050 3000 6600 3000
Wire Wire Line
	7050 3500 6600 3500
$Comp
L power:GND #PWR0199
U 1 1 60E10420
P 7400 2850
F 0 "#PWR0199" H 7400 2600 50  0001 C CNN
F 1 "GND" H 7405 2677 50  0000 C CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 60E10808
P 7400 3350
F 0 "#PWR0200" H 7400 3100 50  0001 C CNN
F 1 "GND" H 7405 3177 50  0000 C CNN
F 2 "" H 7400 3350 50  0001 C CNN
F 3 "" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3350 7400 3350
Wire Wire Line
	7250 2850 7400 2850
$EndSCHEMATC
