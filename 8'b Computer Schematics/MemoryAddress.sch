EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 14
Title "Memory Address"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS173 U27
U 1 1 60C2E6DF
P 4450 3750
F 0 "U27" H 4300 4550 50  0000 C CNN
F 1 "74LS173" H 4700 4550 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4450 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4450 3750 50  0001 C CNN
	1    4450 3750
	1    0    0    -1  
$EndComp
Text Label 6800 3050 0    50   ~ 0
addr0
Text Label 6800 3350 0    50   ~ 0
addr1
Text Label 6800 3650 0    50   ~ 0
addr2
Text Label 6800 3950 0    50   ~ 0
addr3
Text GLabel 4450 2850 1    50   Input ~ 0
PWR
Text GLabel 4450 4650 3    50   UnSpc ~ 0
GND
$Comp
L 74xx:74LS157 U28
U 1 1 60C2EE84
P 6300 3650
F 0 "U28" H 6150 4450 50  0000 C CNN
F 1 "74LS157" H 6550 4450 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6300 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6300 3650 50  0001 C CNN
	1    6300 3650
	1    0    0    -1  
$EndComp
Text GLabel 6300 2750 1    50   Input ~ 0
PWR
Text GLabel 6300 4650 3    50   UnSpc ~ 0
GND
Text GLabel 3950 4350 0    50   Input ~ 0
~RST
Text GLabel 3950 4150 0    50   Input ~ 0
CLK
Text GLabel 5800 4350 0    50   UnSpc ~ 0
GND
Text GLabel 3950 3150 0    50   Input ~ 0
bus4
Text GLabel 3950 3250 0    50   Input ~ 0
bus5
Text GLabel 3950 3350 0    50   Input ~ 0
bus6
Text GLabel 3950 3450 0    50   Input ~ 0
bus7
$Comp
L Switch:SW_DIP_x04 SW17
U 1 1 60C30E1D
P 2250 3750
F 0 "SW17" H 2250 4217 50  0000 C CNN
F 1 "SW_DIP_x04" H 2250 4126 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx04_Slide_Copal_CVS-04xB_W5.9mm_P1mm" H 2250 3750 50  0001 C CNN
F 3 "~" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3550 2550 3650
Connection ~ 2550 3650
Wire Wire Line
	2550 3650 2550 3700
Connection ~ 2550 3750
Wire Wire Line
	2550 3750 2550 3850
Wire Wire Line
	2550 3700 2700 3700
Connection ~ 2550 3700
Wire Wire Line
	2550 3700 2550 3750
Text GLabel 2700 3700 2    50   UnSpc ~ 0
GND
Text Label 1950 3550 2    50   ~ 0
manual0
Text Label 1950 3650 2    50   ~ 0
manual1
Text Label 1950 3750 2    50   ~ 0
manual2
Text Label 1950 3850 2    50   ~ 0
manual3
Text Label 5800 3050 2    50   ~ 0
manual0
Text Label 5800 3350 2    50   ~ 0
manual1
Text Label 5800 3650 2    50   ~ 0
manual2
Text Label 5800 3950 2    50   ~ 0
manual3
Wire Wire Line
	3950 3650 3950 3700
Wire Wire Line
	3950 3700 3900 3700
Connection ~ 3950 3700
Wire Wire Line
	3950 3700 3950 3750
Text GLabel 3900 3700 0    50   UnSpc ~ 0
GND
Wire Wire Line
	3950 3950 3950 4000
Wire Wire Line
	4950 3150 5800 3150
Wire Wire Line
	4950 3250 5450 3250
Wire Wire Line
	5450 3250 5450 3450
Wire Wire Line
	5450 3450 5800 3450
Wire Wire Line
	4950 3350 5350 3350
Wire Wire Line
	5350 3350 5350 3750
Wire Wire Line
	5350 3750 5800 3750
Wire Wire Line
	4950 3450 5250 3450
Wire Wire Line
	5250 3450 5250 4050
Wire Wire Line
	5250 4050 5800 4050
Text Label 7500 3000 0    50   ~ 0
addr0
Text Label 7500 3100 0    50   ~ 0
addr1
Text Label 7500 3200 0    50   ~ 0
addr2
Text Label 7500 3300 0    50   ~ 0
addr3
Entry Wire Line
	7400 2900 7500 3000
Entry Wire Line
	7400 3000 7500 3100
Entry Wire Line
	7400 3100 7500 3200
Entry Wire Line
	7400 3200 7500 3300
Wire Bus Line
	7400 2600 7600 2600
Text HLabel 7600 2600 2    50   Output ~ 0
addr[0..3]
Text HLabel 5800 4250 0    50   Input ~ 0
mux_s
Wire Wire Line
	3950 4000 3900 4000
Connection ~ 3950 4000
Wire Wire Line
	3950 4000 3950 4050
Text HLabel 3900 4000 0    50   Input ~ 0
MI
Wire Bus Line
	7400 2600 7400 3200
$EndSCHEMATC
