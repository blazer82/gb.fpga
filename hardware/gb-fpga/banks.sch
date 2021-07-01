EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Banks"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L gb-fpga:xc7s25ftgb196 U1
U 2 1 60E62F9D
P 6900 1550
F 0 "U1" H 8628 -497 60  0000 L CNN
F 1 "xc7s25ftgb196" H 8628 -603 60  0000 L CNN
F 2 "" H 7100 1600 60  0001 L CNN
F 3 "" H 7100 1400 60  0001 L CNN
	2    6900 1550
	1    0    0    -1  
$EndComp
$Comp
L gb-fpga:xc7s25ftgb196 U1
U 3 1 60E6F7B8
P 3300 1400
F 0 "U1" H 4528 -997 60  0000 L CNN
F 1 "xc7s25ftgb196" H 4528 -1103 60  0000 L CNN
F 2 "" H 3500 1450 60  0001 L CNN
F 3 "" H 3500 1250 60  0001 L CNN
	3    3300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3200 3150 3200
Wire Wire Line
	3300 3300 3150 3300
Text GLabel 3150 3200 0    50   Output ~ 0
RX
Text GLabel 3150 3300 0    50   Input ~ 0
TX
Wire Wire Line
	3300 4000 3150 4000
Text GLabel 3150 4000 0    50   Input ~ 0
12MHZ
$EndSCHEMATC
