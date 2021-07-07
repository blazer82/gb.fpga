EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
Title "USB"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:FT2232HQ U3
U 1 1 60D308B2
P 5800 4050
F 0 "U3" H 6900 2100 50  0000 L CNN
F 1 "FT2232HQ" H 6900 2000 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-64-1EP_9x9mm_P0.5mm_EP4.35x4.35mm" H 5800 4050 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232H.pdf" H 5800 4050 50  0001 C CNN
F 4 "FT2232HQ-REEL" H 5800 4050 50  0001 C CNN "Manufacturer Part Number"
	1    5800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6250 5400 6400
Wire Wire Line
	5400 6400 5500 6400
Wire Wire Line
	6200 6400 6200 6250
Wire Wire Line
	6100 6250 6100 6400
Connection ~ 6100 6400
Wire Wire Line
	6100 6400 6200 6400
Wire Wire Line
	6000 6250 6000 6400
Connection ~ 6000 6400
Wire Wire Line
	6000 6400 6100 6400
Wire Wire Line
	5900 6250 5900 6400
Connection ~ 5900 6400
Wire Wire Line
	5900 6400 6000 6400
Wire Wire Line
	5800 6250 5800 6400
Connection ~ 5800 6400
Wire Wire Line
	5800 6400 5900 6400
Wire Wire Line
	5700 6250 5700 6400
Connection ~ 5700 6400
Wire Wire Line
	5700 6400 5800 6400
Wire Wire Line
	5600 6250 5600 6400
Connection ~ 5600 6400
Wire Wire Line
	5600 6400 5700 6400
Wire Wire Line
	5500 6250 5500 6400
Connection ~ 5500 6400
Wire Wire Line
	5500 6400 5600 6400
$Comp
L power:GND #PWR0104
U 1 1 60D35F2D
P 6200 6400
F 0 "#PWR0104" H 6200 6150 50  0001 C CNN
F 1 "GND" H 6205 6227 50  0000 C CNN
F 2 "" H 6200 6400 50  0001 C CNN
F 3 "" H 6200 6400 50  0001 C CNN
	1    6200 6400
	1    0    0    -1  
$EndComp
Connection ~ 6200 6400
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 60E1E155
P 1650 3150
F 0 "J1" H 1757 4017 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1757 3926 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_XKB_U262-16XN-4BVC11" H 1800 3150 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1800 3150 50  0001 C CNN
F 4 "U262-161N-4BVC11" H 1650 3150 50  0001 C CNN "Manufacturer Part Number"
	1    1650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3050 2250 3150
Wire Wire Line
	2250 3250 2250 3350
Wire Wire Line
	2250 2750 2600 2750
Wire Wire Line
	2600 2750 2600 4050
Wire Wire Line
	2250 2850 2450 2850
Wire Wire Line
	2450 2850 2450 4050
$Comp
L Device:R_Small R17
U 1 1 60E27BFE
P 2600 4150
F 0 "R17" H 2659 4196 50  0000 L CNN
F 1 "4.7k" H 2659 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2600 4150 50  0001 C CNN
F 3 "~" H 2600 4150 50  0001 C CNN
F 4 "RC0402JR-074K7L" H 2600 4150 50  0001 C CNN "Manufacturer Part Number"
	1    2600 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 60E284E5
P 2450 4150
F 0 "R16" H 2300 4200 50  0000 L CNN
F 1 "4.7k" H 2250 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2450 4150 50  0001 C CNN
F 3 "~" H 2450 4150 50  0001 C CNN
F 4 "RC0402JR-074K7L" H 2450 4150 50  0001 C CNN "Manufacturer Part Number"
	1    2450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4250 2600 4300
Wire Wire Line
	2600 4300 2450 4300
Wire Wire Line
	1650 4300 1650 4050
Wire Wire Line
	2450 4250 2450 4300
Connection ~ 2450 4300
Wire Wire Line
	2450 4300 1650 4300
Wire Wire Line
	1350 4050 1350 4300
Wire Wire Line
	1350 4300 1650 4300
Connection ~ 1650 4300
$Comp
L power:GND #PWR0103
U 1 1 60E2A044
P 1650 4400
F 0 "#PWR0103" H 1650 4150 50  0001 C CNN
F 1 "GND" H 1655 4227 50  0000 C CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4300 1650 4400
Wire Wire Line
	4600 3150 2250 3150
Connection ~ 2250 3150
Wire Wire Line
	4600 3250 2250 3250
Connection ~ 2250 3250
$Comp
L power:GND #PWR0127
U 1 1 60E38689
P 3800 3550
F 0 "#PWR0127" H 3800 3300 50  0001 C CNN
F 1 "GND" H 3805 3377 50  0000 C CNN
F 2 "" H 3800 3550 50  0001 C CNN
F 3 "" H 3800 3550 50  0001 C CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 60E395C8
P 3950 3450
F 0 "R14" V 3850 3450 50  0000 C CNN
F 1 "12k" V 4050 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3950 3450 50  0001 C CNN
F 3 "~" H 3950 3450 50  0001 C CNN
F 4 "RC0402FR-0712KL" H 3950 3450 50  0001 C CNN "Manufacturer Part Number"
	1    3950 3450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 60E3B00E
P 4300 3650
F 0 "#PWR0128" H 4300 3500 50  0001 C CNN
F 1 "+3V3" H 4200 3750 50  0000 C CNN
F 2 "" H 4300 3650 50  0001 C CNN
F 3 "" H 4300 3650 50  0001 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3450 4050 3450
Wire Wire Line
	3850 3450 3800 3450
Wire Wire Line
	3800 3450 3800 3550
$Comp
L Device:R_Small R15
U 1 1 60E3EB77
P 4450 3650
F 0 "R15" V 4350 3650 50  0000 C CNN
F 1 "1k" V 4550 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4450 3650 50  0001 C CNN
F 3 "~" H 4450 3650 50  0001 C CNN
F 4 "RC0402JR-071KL" H 4450 3650 50  0001 C CNN "Manufacturer Part Number"
	1    4450 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3650 4550 3650
Wire Wire Line
	4350 3650 4300 3650
Wire Wire Line
	7000 2150 7900 2150
Wire Wire Line
	7000 2250 7650 2250
Wire Wire Line
	7000 2350 7400 2350
Wire Wire Line
	7000 2450 7150 2450
Text GLabel 8000 2150 2    50   Output ~ 0
TCK
Text GLabel 8000 2250 2    50   Output ~ 0
TDI
Text GLabel 8000 2350 2    50   Input ~ 0
TDO
Text GLabel 8000 2450 2    50   Output ~ 0
TMS
$Comp
L Device:R_Small R10
U 1 1 60E5232A
P 7150 1850
F 0 "R10" H 7209 1896 50  0000 L CNN
F 1 "10k" H 7209 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7150 1850 50  0001 C CNN
F 3 "~" H 7150 1850 50  0001 C CNN
F 4 "RC0402JR-0710KL" H 7150 1850 50  0001 C CNN "Manufacturer Part Number"
	1    7150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60E544FA
P 7400 1850
F 0 "R11" H 7459 1896 50  0000 L CNN
F 1 "10k" H 7459 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7400 1850 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
F 4 "RC0402JR-0710KL" H 7400 1850 50  0001 C CNN "Manufacturer Part Number"
	1    7400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60E54870
P 7650 1850
F 0 "R12" H 7709 1896 50  0000 L CNN
F 1 "10k" H 7709 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7650 1850 50  0001 C CNN
F 3 "~" H 7650 1850 50  0001 C CNN
F 4 "RC0402JR-0710KL" H 7650 1850 50  0001 C CNN "Manufacturer Part Number"
	1    7650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 60E54D49
P 7900 1850
F 0 "R13" H 7959 1896 50  0000 L CNN
F 1 "10k" H 7959 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7900 1850 50  0001 C CNN
F 3 "~" H 7900 1850 50  0001 C CNN
F 4 "RC0402JR-0710KL" H 7900 1850 50  0001 C CNN "Manufacturer Part Number"
	1    7900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2150 7900 1950
Connection ~ 7900 2150
Wire Wire Line
	7900 2150 8000 2150
Wire Wire Line
	7650 2250 7650 1950
Connection ~ 7650 2250
Wire Wire Line
	7650 2250 8000 2250
Wire Wire Line
	7400 2350 7400 1950
Connection ~ 7400 2350
Wire Wire Line
	7400 2350 8000 2350
Wire Wire Line
	7150 2450 7150 1950
Connection ~ 7150 2450
Wire Wire Line
	7150 2450 8000 2450
$Comp
L power:+3V3 #PWR0129
U 1 1 60E59DC8
P 7150 1650
F 0 "#PWR0129" H 7150 1500 50  0001 C CNN
F 1 "+3V3" H 7165 1823 50  0000 C CNN
F 2 "" H 7150 1650 50  0001 C CNN
F 3 "" H 7150 1650 50  0001 C CNN
	1    7150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0130
U 1 1 60E5A854
P 7400 1650
F 0 "#PWR0130" H 7400 1500 50  0001 C CNN
F 1 "+3V3" H 7415 1823 50  0000 C CNN
F 2 "" H 7400 1650 50  0001 C CNN
F 3 "" H 7400 1650 50  0001 C CNN
	1    7400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0131
U 1 1 60E5AD24
P 7650 1650
F 0 "#PWR0131" H 7650 1500 50  0001 C CNN
F 1 "+3V3" H 7665 1823 50  0000 C CNN
F 2 "" H 7650 1650 50  0001 C CNN
F 3 "" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 60E5B24D
P 7900 1650
F 0 "#PWR0132" H 7900 1500 50  0001 C CNN
F 1 "+3V3" H 7915 1823 50  0000 C CNN
F 2 "" H 7900 1650 50  0001 C CNN
F 3 "" H 7900 1650 50  0001 C CNN
	1    7900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1650 7900 1750
Wire Wire Line
	7650 1650 7650 1750
Wire Wire Line
	7400 1650 7400 1750
Wire Wire Line
	7150 1650 7150 1750
Wire Wire Line
	4600 5850 4500 5850
Wire Wire Line
	4500 5850 4500 6400
Wire Wire Line
	4500 6400 5200 6400
Connection ~ 5400 6400
Wire Wire Line
	5200 6250 5200 6400
Connection ~ 5200 6400
Wire Wire Line
	5200 6400 5400 6400
Wire Wire Line
	7000 3950 8000 3950
Wire Wire Line
	7000 4050 8000 4050
Text GLabel 8000 3950 2    50   Output ~ 0
TX
Text GLabel 8000 4050 2    50   Input ~ 0
RX
$Comp
L Oscillator:SG-8002JA X1
U 1 1 60ECBD8E
P 3250 5250
F 0 "X1" H 3594 5296 50  0000 L CNN
F 1 "SG-8002JA" H 3594 5205 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 3950 4900 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-8002DC" H 3150 5250 50  0001 C CNN
F 4 "CB3LV-3C-12M000000" H 3250 5250 50  0001 C CNN "Manufacturer Part Number"
	1    3250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5250 4200 5250
$Comp
L Device:C_Small C2
U 1 1 60ECE62B
P 2900 5700
F 0 "C2" V 3000 5750 50  0000 L CNN
F 1 "10nF" V 3000 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 5700 50  0001 C CNN
F 3 "~" H 2900 5700 50  0001 C CNN
F 4 "CL05B103KB5NNNC" H 2900 5700 50  0001 C CNN "Manufacturer Part Number"
	1    2900 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 5700 3250 5700
Wire Wire Line
	3250 5700 3250 5550
$Comp
L power:GND #PWR0133
U 1 1 60ED319C
P 3250 5800
F 0 "#PWR0133" H 3250 5550 50  0001 C CNN
F 1 "GND" H 3255 5627 50  0000 C CNN
F 2 "" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5800 3250 5700
Connection ~ 3250 5700
Wire Wire Line
	3250 4850 3250 4950
$Comp
L power:+3V3 #PWR0134
U 1 1 60ED4C57
P 3250 4850
F 0 "#PWR0134" H 3250 4700 50  0001 C CNN
F 1 "+3V3" H 3265 5023 50  0000 C CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0135
U 1 1 60ED7EA6
P 2850 5200
F 0 "#PWR0135" H 2850 5050 50  0001 C CNN
F 1 "+3V3" H 2865 5373 50  0000 C CNN
F 2 "" H 2850 5200 50  0001 C CNN
F 3 "" H 2850 5200 50  0001 C CNN
	1    2850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0136
U 1 1 60ED878B
P 2650 5650
F 0 "#PWR0136" H 2650 5500 50  0001 C CNN
F 1 "+3V3" H 2665 5823 50  0000 C CNN
F 2 "" H 2650 5650 50  0001 C CNN
F 3 "" H 2650 5650 50  0001 C CNN
	1    2650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5650 2650 5700
Wire Wire Line
	2650 5700 2800 5700
Wire Wire Line
	2850 5200 2850 5250
Wire Wire Line
	2850 5250 2950 5250
Text GLabel 4200 5150 1    50   Input ~ 0
12MHZ
Wire Wire Line
	4200 5150 4200 5250
Connection ~ 4200 5250
Wire Wire Line
	4200 5250 4600 5250
Text GLabel 3400 2550 2    50   Output ~ 0
USB_5V
$Comp
L Diode:PMEG2020EJ D2
U 1 1 60DEA6C7
P 3150 2550
F 0 "D2" H 3150 2334 50  0000 C CNN
F 1 "PMEG2020EJ" H 3150 2425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323F" H 3150 2375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG2020EH_EJ.pdf" H 3150 2550 50  0001 C CNN
F 4 "PMEG2020EJF" H 3150 2550 50  0001 C CNN "Manufacturer Part Number"
	1    3150 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 2550 3400 2550
$Comp
L Device:C_Small C10
U 1 1 60DF265C
P 2850 2650
F 0 "C10" H 2942 2696 50  0000 L CNN
F 1 "100nF" H 2942 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2850 2650 50  0001 C CNN
F 3 "~" H 2850 2650 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 2850 2650 50  0001 C CNN "Manufacturer Part Number"
	1    2850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2550 3000 2550
Connection ~ 2850 2550
$Comp
L power:GND #PWR0150
U 1 1 60DF6310
P 2850 2750
F 0 "#PWR0150" H 2850 2500 50  0001 C CNN
F 1 "GND" H 2855 2577 50  0000 C CNN
F 2 "" H 2850 2750 50  0001 C CNN
F 3 "" H 2850 2750 50  0001 C CNN
	1    2850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1850 5800 1750
Wire Wire Line
	5800 1750 5700 1750
Wire Wire Line
	5600 1750 5600 1850
Wire Wire Line
	5700 1850 5700 1750
Connection ~ 5700 1750
Wire Wire Line
	5700 1750 5600 1750
$Comp
L power:+1V8 #PWR0217
U 1 1 60EAC37F
P 5600 1750
F 0 "#PWR0217" H 5600 1600 50  0001 C CNN
F 1 "+1V8" H 5615 1923 50  0000 C CNN
F 2 "" H 5600 1750 50  0001 C CNN
F 3 "" H 5600 1750 50  0001 C CNN
	1    5600 1750
	1    0    0    -1  
$EndComp
Connection ~ 5600 1750
Wire Wire Line
	6300 1850 6300 1750
Wire Wire Line
	6300 1750 6200 1750
Wire Wire Line
	6000 1750 6000 1850
Wire Wire Line
	6100 1850 6100 1750
Connection ~ 6100 1750
Wire Wire Line
	6100 1750 6000 1750
Wire Wire Line
	6200 1850 6200 1750
Connection ~ 6200 1750
Wire Wire Line
	6200 1750 6100 1750
$Comp
L power:+3V3 #PWR0218
U 1 1 60EB39AA
P 6000 1750
F 0 "#PWR0218" H 6000 1600 50  0001 C CNN
F 1 "+3V3" H 6015 1923 50  0000 C CNN
F 2 "" H 6000 1750 50  0001 C CNN
F 3 "" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
Connection ~ 6000 1750
$Comp
L Device:L_Core_Ferrite_Small L7
U 1 1 60EB4F3F
P 4150 1600
F 0 "L7" V 4355 1600 50  0000 C CNN
F 1 "600R/0.5A" V 4264 1600 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 4150 1600 50  0001 C CNN
F 3 "~" H 4150 1600 50  0001 C CNN
F 4 "BLM15AX601SN1D" H 4150 1600 50  0001 C CNN "Manufacturer Part Number"
	1    4150 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 2550 2850 2550
$Comp
L Device:L_Core_Ferrite_Small L6
U 1 1 60EC149C
P 4150 1150
F 0 "L6" V 4355 1150 50  0000 C CNN
F 1 "600R/0.5A" V 4264 1150 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 4150 1150 50  0001 C CNN
F 3 "~" H 4150 1150 50  0001 C CNN
F 4 "BLM15AX601SN1D" H 4150 1150 50  0001 C CNN "Manufacturer Part Number"
	1    4150 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C60
U 1 1 60EC21BE
P 4500 1700
F 0 "C60" H 4592 1746 50  0000 L CNN
F 1 "4.7µF" H 4592 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4500 1700 50  0001 C CNN
F 3 "~" H 4500 1700 50  0001 C CNN
F 4 "CL05A475KP5NRNC" H 4500 1700 50  0001 C CNN "Manufacturer Part Number"
	1    4500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C61
U 1 1 60ECA5ED
P 4900 1700
F 0 "C61" H 4992 1746 50  0000 L CNN
F 1 "100nF" H 4992 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4900 1700 50  0001 C CNN
F 3 "~" H 4900 1700 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 4900 1700 50  0001 C CNN "Manufacturer Part Number"
	1    4900 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C58
U 1 1 60ECAB25
P 4500 1250
F 0 "C58" H 4592 1296 50  0000 L CNN
F 1 "4.7µF" H 4592 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4500 1250 50  0001 C CNN
F 3 "~" H 4500 1250 50  0001 C CNN
F 4 "CL05A475KP5NRNC" H 4500 1250 50  0001 C CNN "Manufacturer Part Number"
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C59
U 1 1 60ECEE48
P 4900 1250
F 0 "C59" H 4992 1296 50  0000 L CNN
F 1 "100nF" H 4992 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4900 1250 50  0001 C CNN
F 3 "~" H 4900 1250 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 4900 1250 50  0001 C CNN "Manufacturer Part Number"
	1    4900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 60ECF39A
P 4500 1800
F 0 "#PWR0219" H 4500 1550 50  0001 C CNN
F 1 "GND" H 4600 1700 50  0000 C CNN
F 2 "" H 4500 1800 50  0001 C CNN
F 3 "" H 4500 1800 50  0001 C CNN
	1    4500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0220
U 1 1 60ECF75E
P 4900 1800
F 0 "#PWR0220" H 4900 1550 50  0001 C CNN
F 1 "GND" H 5000 1700 50  0000 C CNN
F 2 "" H 4900 1800 50  0001 C CNN
F 3 "" H 4900 1800 50  0001 C CNN
	1    4900 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0221
U 1 1 60ECFB5C
P 4500 1350
F 0 "#PWR0221" H 4500 1100 50  0001 C CNN
F 1 "GND" H 4600 1250 50  0000 C CNN
F 2 "" H 4500 1350 50  0001 C CNN
F 3 "" H 4500 1350 50  0001 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0222
U 1 1 60ECFE66
P 4900 1350
F 0 "#PWR0222" H 4900 1100 50  0001 C CNN
F 1 "GND" H 5000 1250 50  0000 C CNN
F 2 "" H 4900 1350 50  0001 C CNN
F 3 "" H 4900 1350 50  0001 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1850 5300 1600
Wire Wire Line
	5300 1600 4900 1600
Connection ~ 4500 1600
Wire Wire Line
	4500 1600 4250 1600
Connection ~ 4900 1600
Wire Wire Line
	4900 1600 4500 1600
Wire Wire Line
	5400 1850 5400 1150
Wire Wire Line
	5400 1150 4900 1150
Connection ~ 4500 1150
Wire Wire Line
	4500 1150 4250 1150
Connection ~ 4900 1150
Wire Wire Line
	4900 1150 4500 1150
$Comp
L power:+3V3 #PWR0223
U 1 1 60ED556A
P 3700 1150
F 0 "#PWR0223" H 3700 1000 50  0001 C CNN
F 1 "+3V3" H 3715 1323 50  0000 C CNN
F 2 "" H 3700 1150 50  0001 C CNN
F 3 "" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1150 3700 1150
Wire Wire Line
	4050 1600 3700 1600
Wire Wire Line
	3700 1600 3700 1150
Connection ~ 3700 1150
$Comp
L Device:C_Small C62
U 1 1 60EF05D9
P 9100 2550
F 0 "C62" H 9192 2596 50  0000 L CNN
F 1 "100nF" H 9192 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 2550 50  0001 C CNN
F 3 "~" H 9100 2550 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9100 2550 50  0001 C CNN "Manufacturer Part Number"
	1    9100 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C63
U 1 1 60EF12AD
P 9500 2550
F 0 "C63" H 9592 2596 50  0000 L CNN
F 1 "100nF" H 9592 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9500 2550 50  0001 C CNN
F 3 "~" H 9500 2550 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9500 2550 50  0001 C CNN "Manufacturer Part Number"
	1    9500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C64
U 1 1 60EF1879
P 9900 2550
F 0 "C64" H 9992 2596 50  0000 L CNN
F 1 "100nF" H 9992 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9900 2550 50  0001 C CNN
F 3 "~" H 9900 2550 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9900 2550 50  0001 C CNN "Manufacturer Part Number"
	1    9900 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C65
U 1 1 60EF4967
P 9100 3450
F 0 "C65" H 9192 3496 50  0000 L CNN
F 1 "100nF" H 9192 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 3450 50  0001 C CNN
F 3 "~" H 9100 3450 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9100 3450 50  0001 C CNN "Manufacturer Part Number"
	1    9100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C66
U 1 1 60EF5012
P 9500 3450
F 0 "C66" H 9592 3496 50  0000 L CNN
F 1 "100nF" H 9592 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9500 3450 50  0001 C CNN
F 3 "~" H 9500 3450 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9500 3450 50  0001 C CNN "Manufacturer Part Number"
	1    9500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C67
U 1 1 60EF5552
P 9900 3450
F 0 "C67" H 9992 3496 50  0000 L CNN
F 1 "100nF" H 9992 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9900 3450 50  0001 C CNN
F 3 "~" H 9900 3450 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 9900 3450 50  0001 C CNN "Manufacturer Part Number"
	1    9900 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C68
U 1 1 60EF597D
P 10300 3450
F 0 "C68" H 10392 3496 50  0000 L CNN
F 1 "100nF" H 10392 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10300 3450 50  0001 C CNN
F 3 "~" H 10300 3450 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 10300 3450 50  0001 C CNN "Manufacturer Part Number"
	1    10300 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0224
U 1 1 60EF6886
P 9100 2650
F 0 "#PWR0224" H 9100 2400 50  0001 C CNN
F 1 "GND" H 9105 2477 50  0000 C CNN
F 2 "" H 9100 2650 50  0001 C CNN
F 3 "" H 9100 2650 50  0001 C CNN
	1    9100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0225
U 1 1 60EF6DC8
P 9500 2650
F 0 "#PWR0225" H 9500 2400 50  0001 C CNN
F 1 "GND" H 9505 2477 50  0000 C CNN
F 2 "" H 9500 2650 50  0001 C CNN
F 3 "" H 9500 2650 50  0001 C CNN
	1    9500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 60EF7000
P 9900 2650
F 0 "#PWR0226" H 9900 2400 50  0001 C CNN
F 1 "GND" H 9905 2477 50  0000 C CNN
F 2 "" H 9900 2650 50  0001 C CNN
F 3 "" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0227
U 1 1 60EF72A4
P 9100 3550
F 0 "#PWR0227" H 9100 3300 50  0001 C CNN
F 1 "GND" H 9105 3377 50  0000 C CNN
F 2 "" H 9100 3550 50  0001 C CNN
F 3 "" H 9100 3550 50  0001 C CNN
	1    9100 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0228
U 1 1 60EF77DE
P 9500 3550
F 0 "#PWR0228" H 9500 3300 50  0001 C CNN
F 1 "GND" H 9505 3377 50  0000 C CNN
F 2 "" H 9500 3550 50  0001 C CNN
F 3 "" H 9500 3550 50  0001 C CNN
	1    9500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0229
U 1 1 60EF7AFE
P 9900 3550
F 0 "#PWR0229" H 9900 3300 50  0001 C CNN
F 1 "GND" H 9905 3377 50  0000 C CNN
F 2 "" H 9900 3550 50  0001 C CNN
F 3 "" H 9900 3550 50  0001 C CNN
	1    9900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0230
U 1 1 60EF7DCB
P 10300 3550
F 0 "#PWR0230" H 10300 3300 50  0001 C CNN
F 1 "GND" H 10305 3377 50  0000 C CNN
F 2 "" H 10300 3550 50  0001 C CNN
F 3 "" H 10300 3550 50  0001 C CNN
	1    10300 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0231
U 1 1 60EFC4F9
P 9100 2350
F 0 "#PWR0231" H 9100 2200 50  0001 C CNN
F 1 "+1V8" H 9115 2523 50  0000 C CNN
F 2 "" H 9100 2350 50  0001 C CNN
F 3 "" H 9100 2350 50  0001 C CNN
	1    9100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0232
U 1 1 60EFCB66
P 9100 3250
F 0 "#PWR0232" H 9100 3100 50  0001 C CNN
F 1 "+3V3" H 9115 3423 50  0000 C CNN
F 2 "" H 9100 3250 50  0001 C CNN
F 3 "" H 9100 3250 50  0001 C CNN
	1    9100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2450 9500 2450
Wire Wire Line
	9100 2450 9100 2350
Connection ~ 9100 2450
Connection ~ 9500 2450
Wire Wire Line
	9500 2450 9100 2450
Wire Wire Line
	10300 3350 9900 3350
Wire Wire Line
	9100 3350 9100 3250
Connection ~ 9100 3350
Connection ~ 9500 3350
Wire Wire Line
	9500 3350 9100 3350
Connection ~ 9900 3350
Wire Wire Line
	9900 3350 9500 3350
$EndSCHEMATC
