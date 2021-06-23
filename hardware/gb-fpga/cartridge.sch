EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L gb-fpga:Cartridge-32bit J2
U 1 1 60D540F7
P 5700 4000
F 0 "J2" H 5968 4111 50  0000 L CNN
F 1 "Cartridge-32bit" H 5968 4020 50  0000 L CNN
F 2 "gb-fpga:Cartridge-DMG" H 5700 4550 50  0001 C CNN
F 3 "" H 5700 4550 50  0001 C CNN
	1    5700 4000
	1    0    0    -1  
$EndComp
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
$EndSCHEMATC
