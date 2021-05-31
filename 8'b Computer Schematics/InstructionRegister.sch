EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 14
Title "Instruction Register"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS173 U31
U 1 1 60B32563
P 7450 3450
F 0 "U31" H 7300 4250 50  0000 C CNN
F 1 "74LS173" H 7700 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 7450 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 7450 3450 50  0001 C CNN
	1    7450 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U30
U 1 1 60B32D49
P 5350 3450
F 0 "U30" H 5150 4250 50  0000 C CNN
F 1 "74LS173" H 5600 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5350 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 5350 3450 50  0001 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U29
U 1 1 60B33DF8
P 3600 3350
F 0 "U29" H 3400 4050 50  0000 C CNN
F 1 "74LS245" H 3850 4050 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3600 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
Text GLabel 3600 2550 1    50   Input ~ 0
PWR
Text GLabel 5350 2550 1    50   Input ~ 0
PWR
Text GLabel 7450 2550 1    50   Input ~ 0
PWR
Text GLabel 7450 4350 3    50   UnSpc ~ 0
GND
Text GLabel 5350 4350 3    50   UnSpc ~ 0
GND
Text GLabel 3600 4150 3    50   UnSpc ~ 0
GND
Wire Wire Line
	4850 3650 4850 3700
Wire Wire Line
	6950 3650 6950 3700
Wire Wire Line
	3100 2850 3100 2950
Connection ~ 3100 2950
Wire Wire Line
	3100 2950 3100 3000
Connection ~ 3100 3050
Wire Wire Line
	3100 3050 3100 3150
Wire Wire Line
	3100 3000 3050 3000
Connection ~ 3100 3000
Wire Wire Line
	3100 3000 3100 3050
Text GLabel 3050 3000 0    50   UnSpc ~ 0
GND
Text GLabel 3100 3750 0    50   Input ~ 0
PWR
Text Label 5850 2850 0    50   ~ 0
inst0
Text Label 5850 2950 0    50   ~ 0
inst1
Text Label 5850 3050 0    50   ~ 0
inst2
Text Label 5850 3150 0    50   ~ 0
inst3
Text Label 7950 2850 0    50   ~ 0
inst4
Text Label 7950 2950 0    50   ~ 0
inst5
Text Label 7950 3050 0    50   ~ 0
inst6
Text Label 7950 3150 0    50   ~ 0
inst7
Wire Wire Line
	4850 3350 4850 3400
Wire Wire Line
	6950 3450 6950 3400
Wire Wire Line
	6950 3400 6900 3400
Connection ~ 6950 3400
Wire Wire Line
	6950 3400 6950 3350
Wire Wire Line
	6900 3700 6950 3700
Connection ~ 6950 3700
Wire Wire Line
	6950 3700 6950 3750
Wire Wire Line
	4850 3700 4800 3700
Connection ~ 4850 3700
Wire Wire Line
	4850 3700 4850 3750
Wire Wire Line
	4800 3400 4850 3400
Connection ~ 4850 3400
Wire Wire Line
	4850 3400 4850 3450
Text GLabel 4800 3400 0    50   UnSpc ~ 0
GND
Text GLabel 6900 3400 0    50   UnSpc ~ 0
GND
Text HLabel 4800 3700 0    50   Input ~ 0
~II
Text HLabel 6900 3700 0    50   Input ~ 0
~II
Text GLabel 4100 2850 2    50   3State ~ 0
bus0
Text GLabel 4100 2950 2    50   3State ~ 0
bus1
Text GLabel 4100 3050 2    50   3State ~ 0
bus2
Text GLabel 4100 3150 2    50   3State ~ 0
bus3
Text GLabel 4100 3250 2    50   3State ~ 0
bus4
Text GLabel 4100 3350 2    50   3State ~ 0
bus5
Text GLabel 4100 3450 2    50   3State ~ 0
bus6
Text GLabel 4100 3550 2    50   3State ~ 0
bus7
Text Label 3100 3250 2    50   ~ 0
inst4
Text Label 3100 3350 2    50   ~ 0
inst5
Text Label 3100 3450 2    50   ~ 0
inst6
Text Label 3100 3550 2    50   ~ 0
inst7
Text HLabel 3100 3850 0    50   Input ~ 0
~IO
Text GLabel 6950 3850 0    50   Input ~ 0
CLK
Text GLabel 4850 3850 0    50   Input ~ 0
CLK
Text GLabel 4850 4050 0    50   Input ~ 0
~RST
Text GLabel 6950 4050 0    50   Input ~ 0
~RST
Text Label 4350 5200 0    50   ~ 0
inst0
Text Label 4350 5300 0    50   ~ 0
inst1
Text Label 4350 5400 0    50   ~ 0
inst2
Text Label 4350 5500 0    50   ~ 0
inst3
Entry Wire Line
	4250 5100 4350 5200
Entry Wire Line
	4250 5200 4350 5300
Entry Wire Line
	4250 5300 4350 5400
Entry Wire Line
	4250 5400 4350 5500
Wire Bus Line
	4250 4900 5600 4900
Text HLabel 5600 4900 2    50   Output ~ 0
opcode[0..3]
Wire Bus Line
	4250 4900 4250 5400
$EndSCHEMATC
