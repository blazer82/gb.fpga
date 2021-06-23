EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
P 5850 3800
F 0 "U3" H 5850 6181 50  0000 C CNN
F 1 "FT2232HQ" H 5850 6090 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-64-1EP_9x9mm_P0.5mm_EP4.35x4.35mm" H 5850 3800 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232H.pdf" H 5850 3800 50  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 60D33076
P 3000 3700
F 0 "J1" H 3057 4167 50  0000 C CNN
F 1 "USB_B_Micro" H 3057 4076 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 3150 3650 50  0001 C CNN
F 3 "~" H 3150 3650 50  0001 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60D34652
P 3000 4100
F 0 "#PWR0103" H 3000 3850 50  0001 C CNN
F 1 "GND" H 3005 3927 50  0000 C CNN
F 2 "" H 3000 4100 50  0001 C CNN
F 3 "" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6000 5450 6150
Wire Wire Line
	5450 6150 5550 6150
Wire Wire Line
	6250 6150 6250 6000
Wire Wire Line
	6150 6000 6150 6150
Connection ~ 6150 6150
Wire Wire Line
	6150 6150 6250 6150
Wire Wire Line
	6050 6000 6050 6150
Connection ~ 6050 6150
Wire Wire Line
	6050 6150 6150 6150
Wire Wire Line
	5950 6000 5950 6150
Connection ~ 5950 6150
Wire Wire Line
	5950 6150 6050 6150
Wire Wire Line
	5850 6000 5850 6150
Connection ~ 5850 6150
Wire Wire Line
	5850 6150 5950 6150
Wire Wire Line
	5750 6000 5750 6150
Connection ~ 5750 6150
Wire Wire Line
	5750 6150 5850 6150
Wire Wire Line
	5650 6000 5650 6150
Connection ~ 5650 6150
Wire Wire Line
	5650 6150 5750 6150
Wire Wire Line
	5550 6000 5550 6150
Connection ~ 5550 6150
Wire Wire Line
	5550 6150 5650 6150
$Comp
L power:GND #PWR0104
U 1 1 60D35F2D
P 6250 6150
F 0 "#PWR0104" H 6250 5900 50  0001 C CNN
F 1 "GND" H 6255 5977 50  0000 C CNN
F 2 "" H 6250 6150 50  0001 C CNN
F 3 "" H 6250 6150 50  0001 C CNN
	1    6250 6150
	1    0    0    -1  
$EndComp
Connection ~ 6250 6150
$EndSCHEMATC