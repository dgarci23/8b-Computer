EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 14
Title "Memory Values"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS157 U?
U 1 1 60BF5349
P 3250 3450
AR Path="/60BBE402/60BF5349" Ref="U?"  Part="1" 
AR Path="/60BBE402/60BF1E66/60BF5349" Ref="U25"  Part="1" 
F 0 "U25" H 3100 4250 50  0000 C CNN
F 1 "74LS157" H 3500 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3250 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 60BF534F
P 5200 3450
AR Path="/60BBE402/60BF534F" Ref="U?"  Part="1" 
AR Path="/60BBE402/60BF1E66/60BF534F" Ref="U26"  Part="1" 
F 0 "U26" H 5050 4250 50  0000 C CNN
F 1 "74LS157" H 5450 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5200 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
Text GLabel 3250 4450 3    50   UnSpc ~ 0
GND
Text GLabel 3250 2550 1    50   Input ~ 0
PWR
Text GLabel 5200 2550 1    50   Input ~ 0
PWR
Text GLabel 5200 4450 3    50   UnSpc ~ 0
GND
Text GLabel 4700 4150 0    50   UnSpc ~ 0
GND
Text GLabel 2750 4150 0    50   UnSpc ~ 0
GND
Text Label 2750 2850 2    50   ~ 0
manual0
Text Label 2750 3150 2    50   ~ 0
manual1
Text Label 2750 3450 2    50   ~ 0
manual2
Text Label 2750 3750 2    50   ~ 0
manual3
Text Label 4700 2850 2    50   ~ 0
manual4
Text Label 4700 3150 2    50   ~ 0
manual5
Text Label 4700 3450 2    50   ~ 0
manual6
Text Label 4700 3750 2    50   ~ 0
manual7
Text GLabel 2750 2950 0    50   3State ~ 0
bus0
Text GLabel 2750 3250 0    50   3State ~ 0
bus1
Text GLabel 2750 3550 0    50   3State ~ 0
bus2
Text GLabel 2750 3850 0    50   3State ~ 0
bus3
Text GLabel 4700 2950 0    50   3State ~ 0
bus4
Text GLabel 4700 3250 0    50   3State ~ 0
bus5
Text GLabel 4700 3550 0    50   3State ~ 0
bus6
Text GLabel 4700 3850 0    50   3State ~ 0
bus7
Text Label 3750 2850 0    50   ~ 0
mem0
Text Label 3750 3150 0    50   ~ 0
mem1
Text Label 3750 3450 0    50   ~ 0
mem2
Text Label 3750 3750 0    50   ~ 0
mem3
Text GLabel 2100 1700 2    50   UnSpc ~ 0
GND
Text Label 5700 3750 0    50   ~ 0
mem7
Text Label 5700 3450 0    50   ~ 0
mem6
Text Label 5700 3150 0    50   ~ 0
mem5
Text Label 5700 2850 0    50   ~ 0
mem4
Text Label 1400 2050 2    50   ~ 0
manual7
Text Label 1400 1950 2    50   ~ 0
manual6
Text Label 1400 1850 2    50   ~ 0
manual5
Text Label 1400 1750 2    50   ~ 0
manual4
Text Label 1400 1650 2    50   ~ 0
manual3
Text Label 1400 1550 2    50   ~ 0
manual2
Text Label 1400 1450 2    50   ~ 0
manual1
Text Label 1400 1350 2    50   ~ 0
manual0
Wire Wire Line
	2000 1700 2000 1650
Connection ~ 2000 1700
Wire Wire Line
	2000 1700 2100 1700
Wire Wire Line
	2000 1450 2000 1350
Connection ~ 2000 1450
Wire Wire Line
	2000 1550 2000 1450
Connection ~ 2000 1550
Wire Wire Line
	2000 1650 2000 1550
Connection ~ 2000 1650
Wire Wire Line
	2000 1750 2000 1700
Connection ~ 2000 1750
Wire Wire Line
	2000 1850 2000 1750
Connection ~ 2000 1850
Wire Wire Line
	2000 1950 2000 1850
Connection ~ 2000 1950
Wire Wire Line
	2000 2050 2000 1950
$Comp
L Switch:SW_DIP_x08 SW?
U 1 1 60C02EA4
P 1700 1650
AR Path="/60BBE402/60C02EA4" Ref="SW?"  Part="1" 
AR Path="/60BBE402/60BF1E66/60C02EA4" Ref="SW16"  Part="1" 
F 0 "SW16" V 1746 1220 50  0000 R CNN
F 1 "SW_DIP_x08" V 1655 1220 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx08_Slide_Omron_A6H-8101_W6.15mm_P1.27mm" H 1700 1650 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    1   
$EndComp
Text HLabel 2750 4050 0    50   Input ~ 0
mux_s
Text HLabel 4700 4050 0    50   Input ~ 0
mux_s
Text Label 7550 1350 0    50   ~ 0
mem0
Text Label 7550 1450 0    50   ~ 0
mem1
Text Label 7550 1550 0    50   ~ 0
mem2
Text Label 7550 1650 0    50   ~ 0
mem3
Text Label 7550 1750 0    50   ~ 0
mem4
Text Label 7550 1850 0    50   ~ 0
mem5
Text Label 7550 1950 0    50   ~ 0
mem6
Text Label 7550 2050 0    50   ~ 0
mem7
Entry Wire Line
	7450 1250 7550 1350
Entry Wire Line
	7450 1350 7550 1450
Entry Wire Line
	7450 1450 7550 1550
Entry Wire Line
	7450 1550 7550 1650
Entry Wire Line
	7450 1650 7550 1750
Entry Wire Line
	7450 1750 7550 1850
Entry Wire Line
	7450 1850 7550 1950
Entry Wire Line
	7450 1950 7550 2050
Wire Bus Line
	7450 900  7550 900 
Text HLabel 7550 900  2    50   Output ~ 0
mem[0..7]
Wire Bus Line
	7450 900  7450 1950
$EndSCHEMATC
