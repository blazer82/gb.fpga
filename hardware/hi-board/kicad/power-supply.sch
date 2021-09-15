EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Power Supply"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:TLV61046ADB U3
U 1 1 6142C8D8
P 4100 3450
F 0 "U3" H 4100 3875 50  0000 C CNN
F 1 "TLV61046ADB" H 4100 3784 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4150 3300 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv61046a.pdf" H 4100 3550 50  0001 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
Text GLabel 2800 3250 0    50   Input ~ 0
VOUT
$Comp
L Device:C_Small C4
U 1 1 6142D78F
P 3250 3350
F 0 "C4" H 3342 3396 50  0000 L CNN
F 1 "1µF" H 3342 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3250 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3250 3250 3250
Connection ~ 3250 3250
Wire Wire Line
	3250 3250 3650 3250
$Comp
L power:GND #PWR0139
U 1 1 6142EA0D
P 4100 3850
F 0 "#PWR0139" H 4100 3600 50  0001 C CNN
F 1 "GND" H 4105 3677 50  0000 C CNN
F 2 "" H 4100 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	1    4100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3850 4100 3650
$Comp
L power:GND #PWR0140
U 1 1 6142ECDA
P 3250 3850
F 0 "#PWR0140" H 3250 3600 50  0001 C CNN
F 1 "GND" H 3255 3677 50  0000 C CNN
F 2 "" H 3250 3850 50  0001 C CNN
F 3 "" H 3250 3850 50  0001 C CNN
	1    3250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3850 3250 3450
Text GLabel 3800 3450 0    50   Input ~ 0
VOUT
$Comp
L Device:L_Small L1
U 1 1 6142F852
P 4100 2850
F 0 "L1" V 4285 2850 50  0000 C CNN
F 1 "10µH" V 4194 2850 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 4100 2850 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2850 3650 2850
Wire Wire Line
	3650 2850 3650 3250
Connection ~ 3650 3250
Wire Wire Line
	3650 3250 3800 3250
Wire Wire Line
	4200 2850 4550 2850
Wire Wire Line
	4550 2850 4550 3250
Wire Wire Line
	4550 3250 4400 3250
$Comp
L Device:R_Small R7
U 1 1 614308C5
P 4750 3450
F 0 "R7" H 4809 3496 50  0000 L CNN
F 1 "1M" H 4809 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4750 3450 50  0001 C CNN
F 3 "~" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 61430DD2
P 4750 3750
F 0 "R8" H 4809 3796 50  0000 L CNN
F 1 "71.5k" H 4809 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4750 3750 50  0001 C CNN
F 3 "~" H 4750 3750 50  0001 C CNN
	1    4750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3550 4750 3600
Wire Wire Line
	4400 3450 4550 3450
Wire Wire Line
	4550 3450 4550 3600
Wire Wire Line
	4550 3600 4750 3600
Connection ~ 4750 3600
Wire Wire Line
	4750 3600 4750 3650
$Comp
L power:GND #PWR0141
U 1 1 614319B7
P 4750 3850
F 0 "#PWR0141" H 4750 3600 50  0001 C CNN
F 1 "GND" H 4755 3677 50  0000 C CNN
F 2 "" H 4750 3850 50  0001 C CNN
F 3 "" H 4750 3850 50  0001 C CNN
	1    4750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3350 4750 3350
$Comp
L Device:C_Small C5
U 1 1 61432BC6
P 5200 3450
F 0 "C5" H 5292 3496 50  0000 L CNN
F 1 "4.7µF" H 5292 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5200 3450 50  0001 C CNN
F 3 "~" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 614335B0
P 5200 3850
F 0 "#PWR0142" H 5200 3600 50  0001 C CNN
F 1 "GND" H 5205 3677 50  0000 C CNN
F 2 "" H 5200 3850 50  0001 C CNN
F 3 "" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3850 5200 3550
Wire Wire Line
	4750 3350 5200 3350
Connection ~ 4750 3350
Wire Wire Line
	5200 3350 5200 3250
Connection ~ 5200 3350
$Comp
L power:+12V #PWR0143
U 1 1 61434138
P 5200 3250
F 0 "#PWR0143" H 5200 3100 50  0001 C CNN
F 1 "+12V" H 5215 3423 50  0000 C CNN
F 2 "" H 5200 3250 50  0001 C CNN
F 3 "" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L hi-board:ME6210 U4
U 1 1 614214B4
P 7500 3600
F 0 "U4" H 7500 3925 50  0000 C CNN
F 1 "ME6216A30M3G" H 7500 3834 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6142201A
P 6900 3600
F 0 "C6" H 6992 3646 50  0000 L CNN
F 1 "10µF" H 6992 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6900 3600 50  0001 C CNN
F 3 "~" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 614226D0
P 8050 3600
F 0 "C7" H 8142 3646 50  0000 L CNN
F 1 "10µF" H 8142 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8050 3600 50  0001 C CNN
F 3 "~" H 8050 3600 50  0001 C CNN
	1    8050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3500 6900 3500
Wire Wire Line
	6900 3500 6900 3400
Connection ~ 6900 3500
Wire Wire Line
	7850 3500 8050 3500
Wire Wire Line
	8050 3500 8050 3400
Connection ~ 8050 3500
$Comp
L power:GND #PWR0144
U 1 1 614235BD
P 7500 3850
F 0 "#PWR0144" H 7500 3600 50  0001 C CNN
F 1 "GND" H 7505 3677 50  0000 C CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 61423BC4
P 8050 3850
F 0 "#PWR0145" H 8050 3600 50  0001 C CNN
F 1 "GND" H 8055 3677 50  0000 C CNN
F 2 "" H 8050 3850 50  0001 C CNN
F 3 "" H 8050 3850 50  0001 C CNN
	1    8050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 614240B5
P 6900 3850
F 0 "#PWR0146" H 6900 3600 50  0001 C CNN
F 1 "GND" H 6905 3677 50  0000 C CNN
F 2 "" H 6900 3850 50  0001 C CNN
F 3 "" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3850 6900 3700
Wire Wire Line
	8050 3850 8050 3700
$Comp
L power:+3V0 #PWR0147
U 1 1 61424F08
P 8050 3400
F 0 "#PWR0147" H 8050 3250 50  0001 C CNN
F 1 "+3V0" H 8065 3573 50  0000 C CNN
F 2 "" H 8050 3400 50  0001 C CNN
F 3 "" H 8050 3400 50  0001 C CNN
	1    8050 3400
	1    0    0    -1  
$EndComp
Text GLabel 6900 3400 1    50   Input ~ 0
VOUT
$EndSCHEMATC
