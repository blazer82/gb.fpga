EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
P 2900 1750
F 0 "U1" H 4628 -297 60  0000 L CNN
F 1 "xc7s25ftgb196" H 4628 -403 60  0000 L CNN
F 2 "" H 3100 1800 60  0001 L CNN
F 3 "" H 3100 1600 60  0001 L CNN
	2    2900 1750
	1    0    0    -1  
$EndComp
$Comp
L gb-fpga:xc7s25ftgb196 U1
U 3 1 60E6F7B8
P 7150 1150
F 0 "U1" H 8378 -1247 60  0000 L CNN
F 1 "xc7s25ftgb196" H 8378 -1353 60  0000 L CNN
F 2 "" H 7350 1200 60  0001 L CNN
F 3 "" H 7350 1000 60  0001 L CNN
	3    7150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2950 7000 2950
Wire Wire Line
	7150 3050 7000 3050
Text GLabel 7000 2950 0    50   Output ~ 0
RX
Text GLabel 7000 3050 0    50   Input ~ 0
TX
$EndSCHEMATC
