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
$Comp
L Memory_Flash:MX25L3233F U?
U 1 1 60D202EC
P 4200 3250
F 0 "U?" H 4744 3296 50  0000 L CNN
F 1 "MX25L3233F" H 4744 3205 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 4200 2650 50  0001 C CNN
F 3 "http://www.macronix.com/Lists/Datasheet/Attachments/7534/MX25R3235F,%20Wide%20Range,%2032Mb,%20v1.6.pdf" H 4200 3250 50  0001 C CNN
	1    4200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2100 3200 2100
Wire Wire Line
	3200 2100 3200 3150
Wire Wire Line
	3200 3150 3700 3150
$EndSCHEMATC
