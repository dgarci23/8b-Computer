EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 14
Title "Register B"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS173 U?
U 1 1 60B03432
P 7700 3550
AR Path="/60AE8A9A/60B03432" Ref="U?"  Part="1" 
AR Path="/60AFAF5E/60B03432" Ref="U11"  Part="1" 
F 0 "U11" H 7500 4350 50  0000 C CNN
F 1 "74LS173" H 7900 4350 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 7700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 7700 3550 50  0001 C CNN
	1    7700 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 60B03438
P 5800 3550
AR Path="/60AE8A9A/60B03438" Ref="U?"  Part="1" 
AR Path="/60AFAF5E/60B03438" Ref="U10"  Part="1" 
F 0 "U10" H 5600 4250 50  0000 C CNN
F 1 "74LS245" H 6050 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5800 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5800 3550 50  0001 C CNN
	1    5800 3550
	1    0    0    -1  
$EndComp
Text GLabel 5800 2750 1    50   Input ~ 0
PWR
Text GLabel 5800 4350 3    50   UnSpc ~ 0
GND
Text GLabel 7700 2650 1    50   Input ~ 0
PWR
Text GLabel 7700 4450 3    50   UnSpc ~ 0
GND
Wire Wire Line
	7200 3450 7200 3500
Wire Wire Line
	7200 3750 7200 3800
Text HLabel 5000 4050 0    50   Input ~ 0
~BO
Wire Wire Line
	5000 4050 5300 4050
Wire Wire Line
	7200 3800 7050 3800
Connection ~ 7200 3800
Wire Wire Line
	7200 3800 7200 3850
Connection ~ 7200 3500
Wire Wire Line
	7200 3500 7200 3550
Text GLabel 7050 3500 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7050 3500 7200 3500
Text HLabel 7050 3800 0    50   Input ~ 0
~BI
Text GLabel 6300 3050 2    50   3State ~ 0
bus0
Text GLabel 6300 3150 2    50   3State ~ 0
bus1
Text GLabel 6300 3250 2    50   3State ~ 0
bus2
Text GLabel 6300 3350 2    50   3State ~ 0
bus3
Text GLabel 6300 3450 2    50   3State ~ 0
bus4
Text GLabel 6300 3550 2    50   3State ~ 0
bus5
Text GLabel 6300 3650 2    50   3State ~ 0
bus6
Text GLabel 6300 3750 2    50   3State ~ 0
bus7
Text GLabel 7200 3950 0    50   Input ~ 0
CLK
Text GLabel 5300 3950 0    50   Input ~ 0
PWR
Text GLabel 7200 4150 0    50   Input ~ 0
~RST
$Comp
L 74xx:74LS173 U?
U 1 1 60B03461
P 9600 3550
AR Path="/60AE8A9A/60B03461" Ref="U?"  Part="1" 
AR Path="/60AFAF5E/60B03461" Ref="U12"  Part="1" 
F 0 "U12" H 9400 4350 50  0000 C CNN
F 1 "74LS173" H 9800 4350 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 9600 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 9600 3550 50  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
Text GLabel 9600 2650 1    50   Input ~ 0
PWR
Text GLabel 9600 4450 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9100 3450 9100 3500
Wire Wire Line
	9100 3750 9100 3800
Wire Wire Line
	9100 3800 8950 3800
Connection ~ 9100 3800
Wire Wire Line
	9100 3800 9100 3850
Connection ~ 9100 3500
Wire Wire Line
	9100 3500 9100 3550
Text GLabel 8950 3500 0    50   UnSpc ~ 0
GND
Wire Wire Line
	8950 3500 9100 3500
Text HLabel 8950 3800 0    50   Input ~ 0
~BI
Text GLabel 9100 3950 0    50   Input ~ 0
CLK
Text GLabel 9100 4150 0    50   Input ~ 0
~RST
Text GLabel 7200 2950 0    50   3State ~ 0
bus0
Text GLabel 7200 3050 0    50   3State ~ 0
bus1
Text GLabel 7200 3150 0    50   3State ~ 0
bus2
Text GLabel 7200 3250 0    50   3State ~ 0
bus3
Text GLabel 9100 2950 0    50   3State ~ 0
bus4
Text GLabel 9100 3050 0    50   3State ~ 0
bus5
Text GLabel 9100 3150 0    50   3State ~ 0
bus6
Text GLabel 9100 3250 0    50   3State ~ 0
bus7
Text Label 8200 2950 0    50   ~ 0
b0
Text Label 8200 3050 0    50   ~ 0
b1
Text Label 8200 3150 0    50   ~ 0
b2
Text Label 8200 3250 0    50   ~ 0
b3
Text Label 10100 2950 0    50   ~ 0
b4
Text Label 10100 3050 0    50   ~ 0
b5
Text Label 10100 3150 0    50   ~ 0
b6
Text Label 10100 3250 0    50   ~ 0
b7
Text Label 5300 3750 2    50   ~ 0
b7
Text Label 5300 3650 2    50   ~ 0
b6
Text Label 5300 3550 2    50   ~ 0
b5
Text Label 5300 3450 2    50   ~ 0
b4
Text Label 5300 3350 2    50   ~ 0
b3
Text Label 5300 3250 2    50   ~ 0
b2
Text Label 5300 3150 2    50   ~ 0
b1
Text Label 5300 3050 2    50   ~ 0
b0
Wire Wire Line
	5300 3050 5150 3050
Wire Wire Line
	5300 3150 5150 3150
Wire Wire Line
	5300 3250 5150 3250
Wire Wire Line
	5300 3350 5150 3350
Wire Wire Line
	5300 3450 5150 3450
Wire Wire Line
	5300 3550 5150 3550
Wire Wire Line
	5300 3650 5150 3650
Wire Wire Line
	5300 3750 5150 3750
Entry Wire Line
	5050 2950 5150 3050
Entry Wire Line
	5050 3050 5150 3150
Entry Wire Line
	5050 3150 5150 3250
Entry Wire Line
	5050 3250 5150 3350
Entry Wire Line
	5050 3350 5150 3450
Entry Wire Line
	5050 3450 5150 3550
Entry Wire Line
	5050 3550 5150 3650
Entry Wire Line
	5050 3650 5150 3750
Text HLabel 5050 2450 0    50   Input ~ 0
regB[0...7]
Wire Bus Line
	5050 2400 5050 3650
$EndSCHEMATC
