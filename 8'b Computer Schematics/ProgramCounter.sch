EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
Title "Program Counter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS161 U19
U 1 1 60B8BEB9
P 6050 3100
F 0 "U19" H 5850 3800 50  0000 C CNN
F 1 "74LS161" H 6300 3800 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6050 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U18
U 1 1 60B8D26C
P 4000 3100
F 0 "U18" H 3800 3800 50  0000 C CNN
F 1 "74LS245" H 4250 3800 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4000 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4000 3100 50  0001 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
Text GLabel 4000 3900 3    50   UnSpc ~ 0
GND
Text GLabel 6050 3900 3    50   UnSpc ~ 0
GND
Text GLabel 4000 2300 1    50   Input ~ 0
PWR
Text GLabel 6050 2300 1    50   Input ~ 0
PWR
Text GLabel 3500 3500 0    50   UnSpc ~ 0
GND
Text HLabel 3500 3600 0    50   Input ~ 0
~CO
Text GLabel 3500 3000 0    50   3State ~ 0
bus4
Text GLabel 3500 3100 0    50   3State ~ 0
bus5
Text GLabel 3500 3200 0    50   3State ~ 0
bus6
Text GLabel 3500 3300 0    50   3State ~ 0
bus7
Wire Wire Line
	3500 2600 3500 2700
Connection ~ 3500 2700
Wire Wire Line
	3500 2700 3500 2750
Connection ~ 3500 2800
Wire Wire Line
	3500 2800 3500 2900
Wire Wire Line
	3450 2750 3500 2750
Connection ~ 3500 2750
Wire Wire Line
	3500 2750 3500 2800
Wire Wire Line
	4500 2600 4500 2700
Connection ~ 4500 2700
Wire Wire Line
	4500 2700 4500 2750
Connection ~ 4500 2800
Wire Wire Line
	4500 2800 4500 2900
Wire Wire Line
	4500 2750 4550 2750
Connection ~ 4500 2750
Wire Wire Line
	4500 2750 4500 2800
Text Label 4500 3000 0    50   ~ 0
pc0
Text Label 4500 3100 0    50   ~ 0
pc1
Text Label 4500 3200 0    50   ~ 0
pc2
Text Label 4500 3300 0    50   ~ 0
pc3
Text Label 6550 2600 0    50   ~ 0
pc0
Text Label 6550 2700 0    50   ~ 0
pc1
Text Label 6550 2800 0    50   ~ 0
pc2
Text Label 6550 2900 0    50   ~ 0
pc3
Text GLabel 5550 2600 0    50   3State ~ 0
bus4
Text GLabel 5550 2700 0    50   3State ~ 0
bus5
Text GLabel 5550 2800 0    50   3State ~ 0
bus6
Text GLabel 5550 2900 0    50   3State ~ 0
bus7
Wire Wire Line
	5550 3200 5550 3250
Text GLabel 5550 3400 0    50   Input ~ 0
CLK
Wire Wire Line
	5550 3250 5500 3250
Connection ~ 5550 3250
Wire Wire Line
	5550 3250 5550 3300
Text GLabel 5550 3600 0    50   Input ~ 0
~RST
NoConn ~ 6550 3100
Text HLabel 5500 3250 0    50   Input ~ 0
CE
Wire Wire Line
	5550 3100 5500 3100
Text HLabel 5500 3100 0    50   Input ~ 0
~J
Text GLabel 3450 2750 0    50   UnSpc ~ 0
GND
Text GLabel 4550 2750 2    50   UnSpc ~ 0
GND
$EndSCHEMATC
