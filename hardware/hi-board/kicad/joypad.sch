EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "Joypad"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push SW1
U 1 1 61436926
P 4200 2750
F 0 "SW1" H 4200 3035 50  0000 C CNN
F 1 "Up" H 4200 2944 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 4200 2950 50  0001 C CNN
F 3 "~" H 4200 2950 50  0001 C CNN
	1    4200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 61438197
P 4600 2600
F 0 "R9" H 4659 2646 50  0000 L CNN
F 1 "10k" H 4659 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0148
U 1 1 61438AD2
P 4600 2500
F 0 "#PWR0148" H 4600 2350 50  0001 C CNN
F 1 "+3V3" H 4615 2673 50  0000 C CNN
F 2 "" H 4600 2500 50  0001 C CNN
F 3 "" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2750 4600 2750
Wire Wire Line
	4600 2750 4600 2700
Text GLabel 4900 2750 2    50   Output ~ 0
JOY_UP
Wire Wire Line
	4900 2750 4600 2750
Connection ~ 4600 2750
$Comp
L power:GND #PWR0149
U 1 1 6143990C
P 4000 2750
F 0 "#PWR0149" H 4000 2500 50  0001 C CNN
F 1 "GND" H 4005 2577 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 6143CC3D
P 4200 3550
F 0 "SW3" H 4200 3835 50  0000 C CNN
F 1 "Down" H 4200 3744 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 4200 3750 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
	1    4200 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 6143CC47
P 4600 3400
F 0 "R11" H 4659 3446 50  0000 L CNN
F 1 "10k" H 4659 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 3400 50  0001 C CNN
F 3 "~" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0150
U 1 1 6143CC51
P 4600 3300
F 0 "#PWR0150" H 4600 3150 50  0001 C CNN
F 1 "+3V3" H 4615 3473 50  0000 C CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3550 4600 3550
Wire Wire Line
	4600 3550 4600 3500
Text GLabel 4900 3550 2    50   Output ~ 0
JOY_DOWN
Wire Wire Line
	4900 3550 4600 3550
Connection ~ 4600 3550
$Comp
L power:GND #PWR0151
U 1 1 6143CC60
P 4000 3550
F 0 "#PWR0151" H 4000 3300 50  0001 C CNN
F 1 "GND" H 4005 3377 50  0000 C CNN
F 2 "" H 4000 3550 50  0001 C CNN
F 3 "" H 4000 3550 50  0001 C CNN
	1    4000 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 6143F102
P 4200 4350
F 0 "SW5" H 4200 4635 50  0000 C CNN
F 1 "Left" H 4200 4544 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 4200 4550 50  0001 C CNN
F 3 "~" H 4200 4550 50  0001 C CNN
	1    4200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6143F10C
P 4600 4200
F 0 "R13" H 4659 4246 50  0000 L CNN
F 1 "10k" H 4659 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 4200 50  0001 C CNN
F 3 "~" H 4600 4200 50  0001 C CNN
	1    4600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0152
U 1 1 6143F116
P 4600 4100
F 0 "#PWR0152" H 4600 3950 50  0001 C CNN
F 1 "+3V3" H 4615 4273 50  0000 C CNN
F 2 "" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4350 4600 4350
Wire Wire Line
	4600 4350 4600 4300
Text GLabel 4900 4350 2    50   Output ~ 0
JOY_LEFT
Wire Wire Line
	4900 4350 4600 4350
Connection ~ 4600 4350
$Comp
L power:GND #PWR0153
U 1 1 6143F125
P 4000 4350
F 0 "#PWR0153" H 4000 4100 50  0001 C CNN
F 1 "GND" H 4005 4177 50  0000 C CNN
F 2 "" H 4000 4350 50  0001 C CNN
F 3 "" H 4000 4350 50  0001 C CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 61440FAF
P 4200 5150
F 0 "SW7" H 4200 5435 50  0000 C CNN
F 1 "Right" H 4200 5344 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 4200 5350 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 61440FB9
P 4600 5000
F 0 "R15" H 4659 5046 50  0000 L CNN
F 1 "10k" H 4659 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 5000 50  0001 C CNN
F 3 "~" H 4600 5000 50  0001 C CNN
	1    4600 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0154
U 1 1 61440FC3
P 4600 4900
F 0 "#PWR0154" H 4600 4750 50  0001 C CNN
F 1 "+3V3" H 4615 5073 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5150 4600 5150
Wire Wire Line
	4600 5150 4600 5100
Text GLabel 4900 5150 2    50   Output ~ 0
JOY_RIGHT
Wire Wire Line
	4900 5150 4600 5150
Connection ~ 4600 5150
$Comp
L power:GND #PWR0155
U 1 1 61440FD2
P 4000 5150
F 0 "#PWR0155" H 4000 4900 50  0001 C CNN
F 1 "GND" H 4005 4977 50  0000 C CNN
F 2 "" H 4000 5150 50  0001 C CNN
F 3 "" H 4000 5150 50  0001 C CNN
	1    4000 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 61444904
P 6300 2750
F 0 "SW2" H 6300 3035 50  0000 C CNN
F 1 "A" H 6300 2944 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 6300 2950 50  0001 C CNN
F 3 "~" H 6300 2950 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 6144490E
P 6700 2600
F 0 "R10" H 6759 2646 50  0000 L CNN
F 1 "10k" H 6759 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 2600 50  0001 C CNN
F 3 "~" H 6700 2600 50  0001 C CNN
	1    6700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0156
U 1 1 61444918
P 6700 2500
F 0 "#PWR0156" H 6700 2350 50  0001 C CNN
F 1 "+3V3" H 6715 2673 50  0000 C CNN
F 2 "" H 6700 2500 50  0001 C CNN
F 3 "" H 6700 2500 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2750 6700 2750
Wire Wire Line
	6700 2750 6700 2700
Text GLabel 7000 2750 2    50   Output ~ 0
JOY_A
Wire Wire Line
	7000 2750 6700 2750
Connection ~ 6700 2750
$Comp
L power:GND #PWR0157
U 1 1 61444927
P 6100 2750
F 0 "#PWR0157" H 6100 2500 50  0001 C CNN
F 1 "GND" H 6105 2577 50  0000 C CNN
F 2 "" H 6100 2750 50  0001 C CNN
F 3 "" H 6100 2750 50  0001 C CNN
	1    6100 2750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 61444931
P 6300 3550
F 0 "SW4" H 6300 3835 50  0000 C CNN
F 1 "B" H 6300 3744 50  0000 C CNN
F 2 "hi-board:Rubber_Round" H 6300 3750 50  0001 C CNN
F 3 "~" H 6300 3750 50  0001 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6144493B
P 6700 3400
F 0 "R12" H 6759 3446 50  0000 L CNN
F 1 "10k" H 6759 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 3400 50  0001 C CNN
F 3 "~" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0158
U 1 1 61444945
P 6700 3300
F 0 "#PWR0158" H 6700 3150 50  0001 C CNN
F 1 "+3V3" H 6715 3473 50  0000 C CNN
F 2 "" H 6700 3300 50  0001 C CNN
F 3 "" H 6700 3300 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3550 6700 3550
Wire Wire Line
	6700 3550 6700 3500
Text GLabel 7000 3550 2    50   Output ~ 0
JOY_B
Wire Wire Line
	7000 3550 6700 3550
Connection ~ 6700 3550
$Comp
L power:GND #PWR0159
U 1 1 61444954
P 6100 3550
F 0 "#PWR0159" H 6100 3300 50  0001 C CNN
F 1 "GND" H 6105 3377 50  0000 C CNN
F 2 "" H 6100 3550 50  0001 C CNN
F 3 "" H 6100 3550 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 6144495E
P 6300 4350
F 0 "SW6" H 6300 4635 50  0000 C CNN
F 1 "Start" H 6300 4544 50  0000 C CNN
F 2 "hi-board:Rubber_Square" H 6300 4550 50  0001 C CNN
F 3 "~" H 6300 4550 50  0001 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 61444968
P 6700 4200
F 0 "R14" H 6759 4246 50  0000 L CNN
F 1 "10k" H 6759 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 4200 50  0001 C CNN
F 3 "~" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0160
U 1 1 61444972
P 6700 4100
F 0 "#PWR0160" H 6700 3950 50  0001 C CNN
F 1 "+3V3" H 6715 4273 50  0000 C CNN
F 2 "" H 6700 4100 50  0001 C CNN
F 3 "" H 6700 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4350 6700 4350
Wire Wire Line
	6700 4350 6700 4300
Text GLabel 7000 4350 2    50   Output ~ 0
JOY_START
Wire Wire Line
	7000 4350 6700 4350
Connection ~ 6700 4350
$Comp
L power:GND #PWR0161
U 1 1 61444981
P 6100 4350
F 0 "#PWR0161" H 6100 4100 50  0001 C CNN
F 1 "GND" H 6105 4177 50  0000 C CNN
F 2 "" H 6100 4350 50  0001 C CNN
F 3 "" H 6100 4350 50  0001 C CNN
	1    6100 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 6144498B
P 6300 5150
F 0 "SW8" H 6300 5435 50  0000 C CNN
F 1 "Select" H 6300 5344 50  0000 C CNN
F 2 "hi-board:Rubber_Square" H 6300 5350 50  0001 C CNN
F 3 "~" H 6300 5350 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 61444995
P 6700 5000
F 0 "R16" H 6759 5046 50  0000 L CNN
F 1 "10k" H 6759 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 5000 50  0001 C CNN
F 3 "~" H 6700 5000 50  0001 C CNN
	1    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0162
U 1 1 6144499F
P 6700 4900
F 0 "#PWR0162" H 6700 4750 50  0001 C CNN
F 1 "+3V3" H 6715 5073 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5150 6700 5150
Wire Wire Line
	6700 5150 6700 5100
Text GLabel 7000 5150 2    50   Output ~ 0
JOY_SELECT
Wire Wire Line
	7000 5150 6700 5150
Connection ~ 6700 5150
$Comp
L power:GND #PWR0163
U 1 1 614449AE
P 6100 5150
F 0 "#PWR0163" H 6100 4900 50  0001 C CNN
F 1 "GND" H 6105 4977 50  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
