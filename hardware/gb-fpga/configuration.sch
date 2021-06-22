EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L xilinx7:xc7s25ftgb196 U1
U 1 1 60CEDD39
P 6850 2100
F 0 "U1" H 7781 1103 60  0000 L CNN
F 1 "xc7s25ftgb196" H 7781 997 60  0000 L CNN
F 2 "Package_BGA:Xilinx_FTGB196" H 7050 2150 60  0001 L CNN
F 3 "" H 7050 1950 60  0001 L CNN
F 4 "xc7s25ftgb196" H 7050 1850 60  0001 L CNN "desc"
	1    6850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2100 3200 2100
Wire Wire Line
	3200 2100 3200 3150
Wire Wire Line
	3200 3150 3700 3150
$Comp
L power:GND #PWR0101
U 1 1 60D22A7C
P 4400 3650
F 0 "#PWR0101" H 4400 3400 50  0001 C CNN
F 1 "GND" H 4405 3477 50  0000 C CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "" H 4400 3650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:MX25R3235FZBxx1 U2
U 1 1 60D29283
P 4200 3250
F 0 "U2" H 4744 3296 50  0000 L CNN
F 1 "MX25R3235FZBxx1" H 4744 3205 50  0000 L CNN
F 2 "Package_SON:USON-8_4.0x3.0mm_P0.8mm" H 4200 2650 50  0001 C CNN
F 3 "http://www.macronix.com/Lists/Datasheet/Attachments/7534/MX25R3235F,%20Wide%20Range,%2032Mb,%20v1.6.pdf" H 4200 3250 50  0001 C CNN
	1    4200 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
