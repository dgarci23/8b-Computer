EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 14
Title "Reset Module"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push SW2
U 1 1 60B712EE
P 1700 3550
F 0 "SW2" H 1700 3835 50  0000 C CNN
F 1 "SW_Push" H 1700 3744 50  0000 C CNN
F 2 "" H 1700 3750 50  0001 C CNN
F 3 "~" H 1700 3750 50  0001 C CNN
	1    1700 3550
	1    0    0    -1  
$EndComp
Text GLabel 1500 3550 0    50   Input ~ 0
PWR
$Comp
L Device:R R9
U 1 1 60B71753
P 1900 3700
F 0 "R9" H 1970 3746 50  0000 L CNN
F 1 "10k" H 1970 3655 50  0000 L CNN
F 2 "" V 1830 3700 50  0001 C CNN
F 3 "~" H 1900 3700 50  0001 C CNN
	1    1900 3700
	1    0    0    -1  
$EndComp
Text GLabel 1900 3850 3    50   UnSpc ~ 0
GND
Wire Wire Line
	1900 3550 2350 3550
Connection ~ 1900 3550
$Comp
L 74xx:74LS00 U53
U 1 1 60B71B53
P 2700 3550
F 0 "U53" H 2700 3875 50  0000 C CNN
F 1 "74LS00" H 2700 3784 50  0000 C CNN
F 2 "" H 2700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2700 3550 50  0001 C CNN
	1    2700 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U53
U 2 1 60B743EA
P 3650 3550
F 0 "U53" H 3650 3875 50  0000 C CNN
F 1 "74LS00" H 3650 3784 50  0000 C CNN
F 2 "" H 3650 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3650 3550 50  0001 C CNN
	2    3650 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U53
U 3 1 60B7B95B
P 3650 4100
F 0 "U53" H 3650 4425 50  0000 C CNN
F 1 "74LS00" H 3650 4334 50  0000 C CNN
F 2 "" H 3650 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3650 4100 50  0001 C CNN
	3    3650 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U43
U 4 1 60B7D790
P 4500 4100
F 0 "U43" H 4500 4425 50  0000 C CNN
F 1 "74LS00" H 4500 4334 50  0000 C CNN
F 2 "" H 4500 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 4500 4100 50  0001 C CNN
	4    4500 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U53
U 5 1 60B7F6FC
P 1400 4450
F 0 "U53" H 1630 4496 50  0000 L CNN
F 1 "74LS00" H 1630 4405 50  0000 L CNN
F 2 "" H 1400 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1400 4450 50  0001 C CNN
	5    1400 4450
	1    0    0    -1  
$EndComp
Text GLabel 1400 3950 1    50   Input ~ 0
PWR
Text GLabel 1400 4950 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2350 3550 2350 3450
Wire Wire Line
	2350 3450 2400 3450
Wire Wire Line
	2350 3550 2350 3650
Wire Wire Line
	2350 3650 2400 3650
Connection ~ 2350 3550
Wire Wire Line
	3000 3550 3150 3550
Wire Wire Line
	3350 3550 3350 3450
Wire Wire Line
	3350 3550 3350 3650
Connection ~ 3350 3550
Wire Wire Line
	3150 3550 3150 4000
Wire Wire Line
	3150 4000 3350 4000
Connection ~ 3150 3550
Wire Wire Line
	3150 3550 3350 3550
Wire Wire Line
	3950 4100 4200 4100
Wire Wire Line
	4200 4100 4200 4000
Wire Wire Line
	4200 4100 4200 4200
Connection ~ 4200 4100
Text GLabel 3250 3150 2    50   Output ~ 0
~RST
Wire Wire Line
	3250 3150 3150 3150
Wire Wire Line
	3150 3150 3150 3550
Text GLabel 3950 3550 2    50   Output ~ 0
RST
Text GLabel 4800 4100 2    50   Output ~ 0
~STEPRST
Text HLabel 3350 4200 0    50   Input ~ 0
~T5
$EndSCHEMATC
