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
Text GLabel 3300 3200 0    50   Output ~ 0
RX
Text GLabel 3300 3300 0    50   Input ~ 0
TX
Text GLabel 3300 4000 0    50   Input ~ 0
12MHZ
Text GLabel 6900 5750 0    50   Output ~ 0
GB_CLK
Text GLabel 6900 5550 0    50   Output ~ 0
GB_WR
Text GLabel 6900 5650 0    50   Output ~ 0
GB_RD
Text GLabel 6900 5450 0    50   Output ~ 0
GB_CS
Text GLabel 6900 5350 0    50   Output ~ 0
GB_A0
Text GLabel 6900 4850 0    50   Output ~ 0
GB_A1
Text GLabel 6900 5250 0    50   Output ~ 0
GB_A2
Text GLabel 6900 5150 0    50   Output ~ 0
GB_A3
Text GLabel 6900 3950 0    50   Output ~ 0
GB_A4
Text GLabel 6900 5050 0    50   Output ~ 0
GB_A5
Text GLabel 6900 4050 0    50   Output ~ 0
GB_A6
Text GLabel 6900 3850 0    50   Output ~ 0
GB_A7
Text GLabel 6900 4550 0    50   Output ~ 0
GB_A8
Text GLabel 6900 4450 0    50   Output ~ 0
GB_A9
Text GLabel 6900 3750 0    50   Output ~ 0
GB_A10
Text GLabel 6900 3650 0    50   Output ~ 0
GB_A11
Text GLabel 6900 2750 0    50   Output ~ 0
GB_A12
Text GLabel 6900 2650 0    50   Output ~ 0
GB_A13
Text GLabel 6900 2950 0    50   Output ~ 0
GB_A14
Text GLabel 6900 2850 0    50   Output ~ 0
GB_A15
Text GLabel 6900 3150 0    50   Output ~ 0
GB_RST
Text GLabel 6900 2450 0    50   BiDi ~ 0
GB_D0
Text GLabel 6900 3050 0    50   BiDi ~ 0
GB_D1
Text GLabel 6900 2550 0    50   BiDi ~ 0
GB_D2
Text GLabel 6900 1950 0    50   BiDi ~ 0
GB_D3
Text GLabel 6900 2050 0    50   BiDi ~ 0
GB_D4
Text GLabel 6900 2150 0    50   BiDi ~ 0
GB_D5
Text GLabel 6900 1750 0    50   BiDi ~ 0
GB_D6
Text GLabel 6900 1850 0    50   BiDi ~ 0
GB_D7
Text GLabel 3300 2200 0    50   Input ~ 0
DISP_SDO
Text GLabel 3300 2300 0    50   Output ~ 0
DISP_SDI
Text GLabel 3300 1900 0    50   Output ~ 0
DISP_SCLK
Text GLabel 3300 2600 0    50   Output ~ 0
DISP_CS
Text GLabel 3300 1800 0    50   Output ~ 0
DISP_RST
Text GLabel 3300 2100 0    50   Output ~ 0
DISP_B0
Text GLabel 3300 2000 0    50   Output ~ 0
DISP_B1
Text GLabel 3300 1600 0    50   Output ~ 0
DISP_B2
Text GLabel 3300 2500 0    50   Output ~ 0
DISP_B3
Text GLabel 3300 2400 0    50   Output ~ 0
DISP_B4
Text GLabel 3300 1700 0    50   Output ~ 0
DISP_G0
Text GLabel 3300 3600 0    50   Output ~ 0
DISP_G1
Text GLabel 3300 3400 0    50   Output ~ 0
DISP_G2
Text GLabel 3300 3700 0    50   Output ~ 0
DISP_G3
Text GLabel 3300 3500 0    50   Output ~ 0
DISP_G4
Text GLabel 3300 3000 0    50   Output ~ 0
DISP_G5
Text GLabel 3300 3100 0    50   Output ~ 0
DISP_R0
Text GLabel 3300 4200 0    50   Output ~ 0
DISP_R1
Text GLabel 3300 4300 0    50   Output ~ 0
DISP_R2
Text GLabel 3300 4400 0    50   Output ~ 0
DISP_R3
Text GLabel 3300 4500 0    50   Output ~ 0
DISP_R4
Text GLabel 3300 5900 0    50   Output ~ 0
DISP_DE
Text GLabel 3300 5000 0    50   Output ~ 0
DISP_PCLK
Text GLabel 3300 5800 0    50   Output ~ 0
DISP_HS
Text GLabel 3300 5100 0    50   Output ~ 0
DISP_VS
Text GLabel 3300 5200 0    50   Input ~ 0
JOY_B
Text GLabel 3300 5400 0    50   Input ~ 0
JOY_A
Text GLabel 3300 5300 0    50   Input ~ 0
JOY_START
Text GLabel 3300 5500 0    50   Input ~ 0
JOY_SELECT
Text GLabel 3300 5600 0    50   Input ~ 0
JOY_RIGHT
Text GLabel 3300 6200 0    50   Input ~ 0
JOY_UP
Text GLabel 3300 5700 0    50   Input ~ 0
JOY_DOWN
Text GLabel 3300 6300 0    50   Input ~ 0
JOY_LEFT
Text GLabel 6900 1650 0    50   Output ~ 0
AUD_L
Text GLabel 6900 4950 0    50   Output ~ 0
AUD_R
$EndSCHEMATC
