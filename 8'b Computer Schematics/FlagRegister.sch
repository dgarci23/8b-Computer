EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 14
Title "Flag Register"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5000 3650 5000 3700
Wire Wire Line
	5000 3700 4950 3700
Connection ~ 5000 3700
Wire Wire Line
	5000 3700 5000 3750
Text GLabel 4950 3700 0    50   UnSpc ~ 0
GND
Text GLabel 5500 2850 1    50   Input ~ 0
PWR
Text GLabel 5000 4150 0    50   Input ~ 0
CLK
Wire Wire Line
	5000 4050 5000 4000
Wire Wire Line
	5000 4000 4950 4000
Connection ~ 5000 4000
Wire Wire Line
	5000 4000 5000 3950
Text HLabel 4950 4000 0    50   Input ~ 0
~FI
$Comp
L 74xx:74LS173 U52
U 1 1 60B6B9C4
P 5500 3750
F 0 "U52" H 5300 4550 50  0000 C CNN
F 1 "74LS173" H 5750 4550 50  0000 C CNN
F 2 "" H 5500 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 5500 3750 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
NoConn ~ 5000 3350
NoConn ~ 5000 3450
NoConn ~ 6000 3450
NoConn ~ 6000 3350
Text HLabel 5000 3150 0    50   Input ~ 0
FLAG_C
Text HLabel 5000 3250 0    50   Input ~ 0
FLAG_Z
Text HLabel 6000 3150 2    50   Output ~ 0
FC
Text HLabel 6000 3250 2    50   Output ~ 0
FZ
Text GLabel 5500 4650 3    50   UnSpc ~ 0
GND
Text GLabel 5000 4350 0    50   Input ~ 0
~RST
$EndSCHEMATC
