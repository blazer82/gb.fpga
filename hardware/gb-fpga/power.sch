EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Power"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx7:xc7s25ftgb196 U1
U 4 1 60CFF16A
P 6050 3100
F 0 "U1" H 6881 3003 60  0000 L CNN
F 1 "xc7s25ftgb196" H 6881 2897 60  0000 L CNN
F 2 "Package_BGA:Xilinx_FTGB196" H 6250 3150 60  0001 L CNN
F 3 "" H 6250 2950 60  0001 L CNN
F 4 "xc7s25ftgb196" H 6250 2850 60  0001 L CNN "desc"
	4    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60D21807
P 5500 3700
F 0 "#PWR0102" H 5500 3450 50  0001 C CNN
F 1 "GND" H 5505 3527 50  0000 C CNN
F 2 "" H 5500 3700 50  0001 C CNN
F 3 "" H 5500 3700 50  0001 C CNN
	1    5500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3100 5500 3100
Wire Wire Line
	5500 3100 5500 3700
$EndSCHEMATC
