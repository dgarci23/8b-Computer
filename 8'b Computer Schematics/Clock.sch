EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 14
Title "Clock Module"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer:LM555xN U?
U 1 1 60B42395
P 5600 2800
AR Path="/60B42395" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B42395" Ref="U5"  Part="1" 
F 0 "U5" H 5400 3150 50  0000 C CNN
F 1 "LM5550N" H 5850 3150 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6250 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 6450 2400 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B4239B
P 4750 3250
AR Path="/60B4239B" Ref="C?"  Part="1" 
AR Path="/60B0C6F5/60B4239B" Ref="C2"  Part="1" 
F 0 "C2" H 4635 3204 50  0000 R CNN
F 1 "100p" H 4635 3295 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 4788 3100 50  0001 C CNN
F 3 "~" H 4750 3250 50  0001 C CNN
	1    4750 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60B423A1
P 1750 3550
AR Path="/60B423A1" Ref="C?"  Part="1" 
AR Path="/60B0C6F5/60B423A1" Ref="C1"  Part="1" 
F 0 "C1" H 1865 3596 50  0000 L CNN
F 1 "100p" H 1865 3505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1788 3400 50  0001 C CNN
F 3 "~" H 1750 3550 50  0001 C CNN
	1    1750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2150 8900 2150
Text Label 8100 2650 0    50   ~ 0
ASTABLE
Text GLabel 7600 2450 1    50   Input ~ 0
PWR
Text GLabel 5600 2400 1    50   Input ~ 0
PWR
Text GLabel 7100 3050 0    50   Input ~ 0
PWR
Text GLabel 7600 3250 3    50   UnSpc ~ 0
GND
Text GLabel 5600 3200 3    50   UnSpc ~ 0
GND
Text GLabel 6800 3500 3    50   UnSpc ~ 0
GND
$Comp
L Device:C C?
U 1 1 60B423AF
P 6800 3350
AR Path="/60B423AF" Ref="C?"  Part="1" 
AR Path="/60B0C6F5/60B423AF" Ref="C4"  Part="1" 
F 0 "C4" H 6685 3304 50  0000 R CNN
F 1 "100p" H 6685 3395 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6838 3200 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3200 6800 2850
Wire Wire Line
	6800 2850 7100 2850
$Comp
L Timer:LM555xN U?
U 1 1 60B423B7
P 7600 2850
AR Path="/60B423B7" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B423B7" Ref="U6"  Part="1" 
F 0 "U6" H 7400 3200 50  0000 C CNN
F 1 "LM5550N" H 7850 3200 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 8250 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 8450 2450 50  0001 C CNN
	1    7600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2150 8900 2850
Wire Wire Line
	8900 3050 8100 3050
$Comp
L Device:R R?
U 1 1 60B423BF
P 8250 2850
AR Path="/60B423BF" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B423BF" Ref="R5"  Part="1" 
F 0 "R5" V 8350 2850 50  0000 C CNN
F 1 "10k" V 8134 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8180 2850 50  0001 C CNN
F 3 "~" H 8250 2850 50  0001 C CNN
	1    8250 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 60B423C5
P 8550 2850
AR Path="/60B423C5" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B423C5" Ref="R6"  Part="1" 
F 0 "R6" V 8650 2850 50  0000 C CNN
F 1 "10k pot" V 8396 2850 50  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_ACP_CA6-VSMD_Vertical" V 8480 2850 50  0001 C CNN
F 3 "~" H 8550 2850 50  0001 C CNN
	1    8550 2850
	0    1    1    0   
$EndComp
Text GLabel 5100 3000 0    50   Input ~ 0
PWR
$Comp
L Device:C C?
U 1 1 60B423CC
P 6100 3150
AR Path="/60B423CC" Ref="C?"  Part="1" 
AR Path="/60B0C6F5/60B423CC" Ref="C3"  Part="1" 
F 0 "C3" H 6215 3196 50  0000 L CNN
F 1 "3.3u" H 6215 3105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6138 3000 50  0001 C CNN
F 3 "~" H 6100 3150 50  0001 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
Text GLabel 6100 3300 3    50   UnSpc ~ 0
GND
Connection ~ 6100 3000
$Comp
L Device:R R?
U 1 1 60B423D4
P 6250 2800
AR Path="/60B423D4" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B423D4" Ref="R4"  Part="1" 
F 0 "R4" V 6350 2800 50  0000 C CNN
F 1 "1M" V 6150 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6180 2800 50  0001 C CNN
F 3 "~" H 6250 2800 50  0001 C CNN
	1    6250 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2800 6100 3000
Connection ~ 6100 2800
Text GLabel 6400 2800 2    50   Input ~ 0
PWR
Text GLabel 4750 3400 3    50   UnSpc ~ 0
GND
Wire Wire Line
	4750 3100 4750 2800
Wire Wire Line
	4750 2800 5100 2800
Wire Wire Line
	5100 2600 4950 2600
$Comp
L Device:R R?
U 1 1 60B423E1
P 4950 2450
AR Path="/60B423E1" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B423E1" Ref="R3"  Part="1" 
F 0 "R3" H 5020 2496 50  0000 L CNN
F 1 "1k" H 5020 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 4880 2450 50  0001 C CNN
F 3 "~" H 4950 2450 50  0001 C CNN
	1    4950 2450
	1    0    0    -1  
$EndComp
Text GLabel 4950 2300 1    50   Input ~ 0
PWR
Wire Wire Line
	4950 2600 4850 2600
Connection ~ 4950 2600
$Comp
L Switch:SW_Push SW?
U 1 1 60B423EA
P 4650 2600
AR Path="/60B423EA" Ref="SW?"  Part="1" 
AR Path="/60B0C6F5/60B423EA" Ref="SW3"  Part="1" 
F 0 "SW3" H 4650 2885 50  0000 C CNN
F 1 "SW_Push" H 4650 2794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T-MP_NO_Horizontal_Alps_SKRTLAE010" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
Text GLabel 4450 2600 3    50   UnSpc ~ 0
GND
Text Label 6100 2600 0    50   ~ 0
MONOSTABLE
Text GLabel 3200 2400 1    50   Input ~ 0
PWR
Text GLabel 3200 3200 3    50   UnSpc ~ 0
GND
Text GLabel 1750 3700 3    50   UnSpc ~ 0
GND
$Comp
L Timer:LM555xN U?
U 1 1 60B423F5
P 3200 2800
AR Path="/60B423F5" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B423F5" Ref="U2"  Part="1" 
F 0 "U2" H 3000 3150 50  0000 C CNN
F 1 "LM5550N" H 3450 3150 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3850 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 4050 2400 50  0001 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B423FB
P 2700 3150
AR Path="/60B423FB" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B423FB" Ref="R2"  Part="1" 
F 0 "R2" V 2600 3150 50  0000 C CNN
F 1 "1k" V 2800 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2630 3150 50  0001 C CNN
F 3 "~" H 2700 3150 50  0001 C CNN
	1    2700 3150
	1    0    0    -1  
$EndComp
Text GLabel 3700 2800 2    50   UnSpc ~ 0
GND
Text GLabel 3700 3000 2    50   UnSpc ~ 0
GND
Text Label 1750 3400 0    50   ~ 0
CoupleC
Text Label 2700 2800 2    50   ~ 0
CoupleC
$Comp
L Device:R R?
U 1 1 60B42405
P 2700 2450
AR Path="/60B42405" Ref="R?"  Part="1" 
AR Path="/60B0C6F5/60B42405" Ref="R1"  Part="1" 
F 0 "R1" V 2600 2450 50  0000 C CNN
F 1 "1k" V 2800 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2630 2450 50  0001 C CNN
F 3 "~" H 2700 2450 50  0001 C CNN
	1    2700 2450
	1    0    0    -1  
$EndComp
Text GLabel 2700 2300 1    50   Input ~ 0
PWR
Wire Wire Line
	2700 2600 2250 2600
Connection ~ 2700 2600
Text GLabel 2700 3300 3    50   Input ~ 0
PWR
Wire Wire Line
	2700 3000 2250 3000
Connection ~ 2700 3000
$Comp
L Switch:SW_SPDT SW?
U 1 1 60B42411
P 2050 2800
AR Path="/60B42411" Ref="SW?"  Part="1" 
AR Path="/60B0C6F5/60B42411" Ref="SW1"  Part="1" 
F 0 "SW1" H 2050 3085 50  0000 C CNN
F 1 "SW_SPDT" H 2050 2994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN" H 2050 2800 50  0001 C CNN
F 3 "~" H 2050 2800 50  0001 C CNN
	1    2050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2700 2250 2600
Wire Wire Line
	2250 2900 2250 3000
Text GLabel 1850 2800 0    50   UnSpc ~ 0
GND
Text Label 3700 2600 0    50   ~ 0
SELECTOR
$Comp
L 74xx:74LS32 U?
U 1 1 60B4241B
P 4350 4800
AR Path="/60B4241B" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B4241B" Ref="U4"  Part="1" 
F 0 "U4" H 4350 5125 50  0000 C CNN
F 1 "74LS32" H 4350 5034 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4350 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4350 4800 50  0001 C CNN
	1    4350 4800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 60B42421
P 3750 5150
AR Path="/60B42421" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B42421" Ref="U3"  Part="1" 
F 0 "U3" H 3750 5475 50  0000 C CNN
F 1 "74LS08" H 3750 5384 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3750 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3750 5150 50  0001 C CNN
	1    3750 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 60B42427
P 3750 4500
AR Path="/60B42427" Ref="U?"  Part="2" 
AR Path="/60B0C6F5/60B42427" Ref="U3"  Part="2" 
F 0 "U3" H 3750 4825 50  0000 C CNN
F 1 "74LS08" H 3750 4734 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3750 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3750 4500 50  0001 C CNN
	2    3750 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 3 1 60B4242D
P 4950 4900
AR Path="/60B4242D" Ref="U?"  Part="3" 
AR Path="/60B0C6F5/60B4242D" Ref="U3"  Part="3" 
F 0 "U3" H 4950 5225 50  0000 C CNN
F 1 "74LS08" H 4950 5134 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4950 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4950 4900 50  0001 C CNN
	3    4950 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 60B42439
P 3150 5050
AR Path="/60B42439" Ref="U?"  Part="2" 
AR Path="/60B0C6F5/60B42439" Ref="U1"  Part="2" 
F 0 "U1" H 3150 5367 50  0000 C CNN
F 1 "74LS04" H 3150 5276 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_SMD-Socket" H 3150 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3150 5050 50  0001 C CNN
	2    3150 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 7 1 60B4243F
P 7950 4900
AR Path="/60B4243F" Ref="U?"  Part="7" 
AR Path="/60B0C6F5/60B4243F" Ref="U1"  Part="7" 
F 0 "U1" H 8180 4946 50  0000 L CNN
F 1 "74LS04" H 8180 4855 50  0000 L CNN
F 2 "Package_LCC:PLCC-44_SMD-Socket" H 7950 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7950 4900 50  0001 C CNN
	7    7950 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 60B42445
P 6250 4900
AR Path="/60B42445" Ref="U?"  Part="5" 
AR Path="/60B0C6F5/60B42445" Ref="U3"  Part="5" 
F 0 "U3" H 6480 4946 50  0000 L CNN
F 1 "74LS08" H 6480 4855 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6250 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 4900 50  0001 C CNN
	5    6250 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 60B4244B
P 7100 4900
AR Path="/60B4244B" Ref="U?"  Part="5" 
AR Path="/60B0C6F5/60B4244B" Ref="U4"  Part="5" 
F 0 "U4" H 7330 4946 50  0000 L CNN
F 1 "74LS32" H 7330 4855 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 7100 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7100 4900 50  0001 C CNN
	5    7100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5250 2500 5250
Wire Wire Line
	3450 4600 2850 4600
Wire Wire Line
	2850 4600 2850 4850
Wire Wire Line
	2850 4850 2500 4850
Connection ~ 2850 4850
Wire Wire Line
	2850 4850 2850 5050
Wire Wire Line
	3450 4400 2500 4400
Text Label 2500 4400 2    50   ~ 0
MONOSTABLE
Text Label 2500 5250 2    50   ~ 0
ASTABLE
Text Label 2500 4850 2    50   ~ 0
SELECTOR
Wire Wire Line
	4050 4500 4050 4700
Wire Wire Line
	4050 4900 4050 5150
Wire Wire Line
	4650 5600 4650 5000
Text GLabel 6250 4400 1    50   Input ~ 0
PWR
Text GLabel 7100 4400 1    50   Input ~ 0
PWR
Text GLabel 7950 4400 1    50   Input ~ 0
PWR
Text GLabel 6250 5400 3    50   UnSpc ~ 0
GND
Text GLabel 7100 5400 3    50   UnSpc ~ 0
GND
Text GLabel 7950 5400 3    50   UnSpc ~ 0
GND
Wire Wire Line
	7100 2650 7100 2150
Wire Wire Line
	8700 2850 8900 2850
Connection ~ 8900 2850
Wire Wire Line
	8900 2850 8900 3050
Text GLabel 5250 4900 2    50   Output ~ 0
CLK
Wire Wire Line
	2500 5600 2850 5600
Text HLabel 2500 5600 0    50   Input ~ 0
HLT
Wire Wire Line
	3450 5600 4650 5600
$Comp
L 74xx:74LS04 U?
U 1 1 60B42433
P 3150 5600
AR Path="/60B42433" Ref="U?"  Part="1" 
AR Path="/60B0C6F5/60B42433" Ref="U1"  Part="1" 
F 0 "U1" H 3150 5917 50  0000 C CNN
F 1 "74LS04" H 3150 5826 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_SMD-Socket" H 3150 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3150 5600 50  0001 C CNN
	1    3150 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60BA58AD
P 8900 3200
F 0 "C5" H 9015 3246 50  0000 L CNN
F 1 "100u" H 9015 3155 50  0000 L CNN
F 2 "" H 8938 3050 50  0001 C CNN
F 3 "~" H 8900 3200 50  0001 C CNN
	1    8900 3200
	1    0    0    -1  
$EndComp
Connection ~ 8900 3050
Text GLabel 8900 3350 3    50   UnSpc ~ 0
GND
$EndSCHEMATC
