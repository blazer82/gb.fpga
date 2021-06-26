EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L power:GND #PWR0105
U 1 1 60D575F5
P 5500 5550
F 0 "#PWR0105" H 5500 5300 50  0001 C CNN
F 1 "GND" H 5505 5377 50  0000 C CNN
F 2 "" H 5500 5550 50  0001 C CNN
F 3 "" H 5500 5550 50  0001 C CNN
	1    5500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5500 5500
Wire Wire Line
	5500 5500 5500 5550
$Comp
L gb-fpga:Cartridge-32pin J2
U 1 1 60D4B0EF
P 5650 2400
F 0 "J2" H 6178 903 60  0000 L CNN
F 1 "Cartridge-32pin" H 6178 797 60  0000 L CNN
F 2 "gb-fpga:Cartridge-DMG" H 5850 2450 60  0001 L CNN
F 3 "" H 5850 2250 60  0001 L CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60EE2CF5
P 5500 2400
F 0 "#PWR?" H 5500 2250 50  0001 C CNN
F 1 "+5V" H 5515 2573 50  0000 C CNN
F 2 "" H 5500 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2400 5650 2400
Text GLabel 5500 2600 0    50   Input ~ 0
GB_RST
Text GLabel 5500 2700 0    50   Input ~ 0
GB_WR
Text GLabel 5500 2900 0    50   Input ~ 0
GB_A0
Text GLabel 5500 3000 0    50   Input ~ 0
GB_A1
Text GLabel 5500 3100 0    50   Input ~ 0
GB_A2
Text GLabel 5500 3200 0    50   Input ~ 0
GB_A3
Text GLabel 5500 3300 0    50   Input ~ 0
GB_A4
Text GLabel 5500 3400 0    50   Input ~ 0
GB_A5
Text GLabel 5500 3500 0    50   Input ~ 0
GB_A6
Text GLabel 5500 3600 0    50   Input ~ 0
GB_A7
Text GLabel 5500 3700 0    50   Input ~ 0
GB_A8
Text GLabel 5500 3800 0    50   Input ~ 0
GB_A9
Text GLabel 5500 3900 0    50   Input ~ 0
GB_A10
Text GLabel 5500 4000 0    50   Input ~ 0
GB_A11
Text GLabel 5500 4100 0    50   Input ~ 0
GB_A12
Text GLabel 5500 4200 0    50   Input ~ 0
GB_A13
Text GLabel 5500 4300 0    50   Input ~ 0
GB_A14
Text GLabel 5500 4400 0    50   Input ~ 0
GB_CS
Text GLabel 5500 4500 0    50   BiDi ~ 0
GB_D0
Text GLabel 5500 4600 0    50   BiDi ~ 0
GB_D1
Text GLabel 5500 4700 0    50   BiDi ~ 0
GB_D2
Text GLabel 5500 4800 0    50   BiDi ~ 0
GB_D3
Text GLabel 5500 4900 0    50   BiDi ~ 0
GB_D4
Text GLabel 5500 5000 0    50   BiDi ~ 0
GB_D5
Text GLabel 5500 5100 0    50   BiDi ~ 0
GB_D6
Text GLabel 5500 5200 0    50   BiDi ~ 0
GB_D7
Text GLabel 5500 5300 0    50   Input ~ 0
GB_RD
Wire Wire Line
	5500 2600 5650 2600
Wire Wire Line
	5500 2700 5650 2700
Wire Wire Line
	5500 2900 5650 2900
Wire Wire Line
	5500 3000 5650 3000
Wire Wire Line
	5500 3100 5650 3100
Wire Wire Line
	5500 3200 5650 3200
Wire Wire Line
	5500 3300 5650 3300
Wire Wire Line
	5500 3400 5650 3400
Wire Wire Line
	5500 3500 5650 3500
Wire Wire Line
	5500 3600 5650 3600
Wire Wire Line
	5500 3700 5650 3700
Wire Wire Line
	5500 3800 5650 3800
Wire Wire Line
	5500 3900 5650 3900
Wire Wire Line
	5500 4000 5650 4000
Wire Wire Line
	5500 4100 5650 4100
Wire Wire Line
	5500 4200 5650 4200
Wire Wire Line
	5500 4300 5650 4300
Wire Wire Line
	5500 4400 5650 4400
Wire Wire Line
	5500 4500 5650 4500
Wire Wire Line
	5500 4600 5650 4600
Wire Wire Line
	5500 4700 5650 4700
Wire Wire Line
	5500 4800 5650 4800
Wire Wire Line
	5500 4900 5650 4900
Wire Wire Line
	5500 5000 5650 5000
Wire Wire Line
	5500 5100 5650 5100
Wire Wire Line
	5500 5200 5650 5200
Wire Wire Line
	5500 5300 5650 5300
$EndSCHEMATC
