EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
Title "ALU"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS245 U14
U 1 1 60B51DF3
P 3100 3550
F 0 "U14" H 2900 4250 50  0000 C CNN
F 1 "74LS245" H 3300 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3100 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3100 3550 50  0001 C CNN
	1    3100 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS283 U15
U 1 1 60B53358
P 4950 3550
F 0 "U15" H 4750 4250 50  0000 C CNN
F 1 "74LS283" H 5200 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4950 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS283" H 4950 3550 50  0001 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U13
U 1 1 60B540F9
P 3050 5200
F 0 "U13" H 3050 5525 50  0000 C CNN
F 1 "74LS86" H 3050 5434 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3050 5200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 3050 5200 50  0001 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U13
U 2 1 60B57701
P 3050 5750
F 0 "U13" H 3050 6075 50  0000 C CNN
F 1 "74LS86" H 3050 5984 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3050 5750 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 3050 5750 50  0001 C CNN
	2    3050 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U13
U 3 1 60B59059
P 3050 6350
F 0 "U13" H 3050 6675 50  0000 C CNN
F 1 "74LS86" H 3050 6584 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3050 6350 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 3050 6350 50  0001 C CNN
	3    3050 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U13
U 4 1 60B5AA3A
P 3050 6900
F 0 "U13" H 3050 7225 50  0000 C CNN
F 1 "74LS86" H 3050 7134 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 3050 6900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 3050 6900 50  0001 C CNN
	4    3050 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U13
U 5 1 60B5CA06
P 7950 3450
F 0 "U13" H 8180 3496 50  0000 L CNN
F 1 "74LS86" H 8180 3405 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 7950 3450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 7950 3450 50  0001 C CNN
	5    7950 3450
	1    0    0    -1  
$EndComp
Text GLabel 3100 2750 1    50   Input ~ 0
PWR
Text GLabel 4950 2750 1    50   Input ~ 0
PWR
Text GLabel 3600 3050 2    50   3State ~ 0
bus0
Text GLabel 3600 3150 2    50   3State ~ 0
bus1
Text GLabel 3600 3250 2    50   3State ~ 0
bus2
Text GLabel 3600 3350 2    50   3State ~ 0
bus3
Text GLabel 3600 3450 2    50   3State ~ 0
bus4
Text GLabel 3600 3550 2    50   3State ~ 0
bus5
Text GLabel 3600 3650 2    50   3State ~ 0
bus6
Text GLabel 3600 3750 2    50   3State ~ 0
bus7
Text GLabel 3100 4350 3    50   UnSpc ~ 0
GND
Text GLabel 4950 4350 3    50   UnSpc ~ 0
GND
Text GLabel 7950 3950 3    50   UnSpc ~ 0
GND
Text GLabel 7950 2950 1    50   Input ~ 0
PWR
Text HLabel 2450 4050 0    50   Input ~ 0
~EO
Wire Wire Line
	2600 4050 2450 4050
Text GLabel 2600 3950 0    50   Input ~ 0
PWR
Text Label 2600 3050 2    50   ~ 0
e0
Text Label 2600 3150 2    50   ~ 0
e1
Text Label 2600 3250 2    50   ~ 0
e2
Text Label 2600 3350 2    50   ~ 0
e3
Text Label 2600 3450 2    50   ~ 0
e4
Text Label 2600 3550 2    50   ~ 0
e5
Text Label 2600 3650 2    50   ~ 0
e6
Text Label 2600 3750 2    50   ~ 0
e7
Text Label 5450 3050 0    50   ~ 0
e0
Text Label 5450 3150 0    50   ~ 0
e1
Text Label 5450 3250 0    50   ~ 0
e2
Text Label 5450 3350 0    50   ~ 0
e3
$Comp
L 74xx:74LS283 U17
U 1 1 60AF0F12
P 6700 3550
F 0 "U17" H 6500 4250 50  0000 C CNN
F 1 "74LS283" H 6950 4250 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS283" H 6700 3550 50  0001 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
Text GLabel 6700 2750 1    50   Input ~ 0
PWR
Text GLabel 6700 4350 3    50   UnSpc ~ 0
GND
Text Label 7200 3050 0    50   ~ 0
e4
Text Label 7200 3150 0    50   ~ 0
e5
Text Label 7200 3250 0    50   ~ 0
e6
Text Label 7200 3350 0    50   ~ 0
e7
Text GLabel 4450 3050 0    50   UnSpc ~ 0
GND
$Comp
L 74xx:74LS86 U16
U 1 1 60B06FE1
P 5100 5200
F 0 "U16" H 5100 5525 50  0000 C CNN
F 1 "74LS86" H 5100 5434 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5100 5200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5100 5200 50  0001 C CNN
	1    5100 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U16
U 2 1 60B06FE7
P 5100 5750
F 0 "U16" H 5100 6075 50  0000 C CNN
F 1 "74LS86" H 5100 5984 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5100 5750 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5100 5750 50  0001 C CNN
	2    5100 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U16
U 3 1 60B06FED
P 5100 6350
F 0 "U16" H 5100 6675 50  0000 C CNN
F 1 "74LS86" H 5100 6584 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5100 6350 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5100 6350 50  0001 C CNN
	3    5100 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U16
U 4 1 60B06FF3
P 5100 6900
F 0 "U16" H 5100 7225 50  0000 C CNN
F 1 "74LS86" H 5100 7134 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5100 6900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5100 6900 50  0001 C CNN
	4    5100 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5200 3900 5200
Wire Wire Line
	3900 5200 3900 3750
Wire Wire Line
	3900 3750 4450 3750
Wire Wire Line
	2750 5300 1750 5300
Wire Wire Line
	1750 5300 1750 5850
Wire Wire Line
	1750 7000 2750 7000
Wire Wire Line
	1750 6450 2750 6450
Connection ~ 1750 6450
Wire Wire Line
	1750 6450 1750 7000
Wire Wire Line
	1750 5850 2750 5850
Connection ~ 1750 5850
Wire Wire Line
	1750 5850 1750 6100
Wire Wire Line
	1750 6100 1250 6100
Connection ~ 1750 6100
Wire Wire Line
	1750 6100 1750 6450
Text HLabel 1250 6100 0    50   Input ~ 0
SUB
Wire Wire Line
	3350 5750 4000 5750
Wire Wire Line
	4000 5750 4000 3850
Wire Wire Line
	4000 3850 4450 3850
Wire Wire Line
	4450 3950 4100 3950
Wire Wire Line
	4100 3950 4100 6350
Wire Wire Line
	4100 6350 3350 6350
Wire Wire Line
	4450 4050 4200 4050
Wire Wire Line
	4200 6900 3350 6900
Wire Wire Line
	4200 4050 4200 6900
Wire Wire Line
	1750 7000 1750 7150
Wire Wire Line
	1750 7150 4350 7150
Wire Wire Line
	4350 7150 4350 7000
Connection ~ 1750 7000
Wire Wire Line
	4350 5300 4800 5300
Wire Wire Line
	4350 5850 4800 5850
Connection ~ 4350 5850
Wire Wire Line
	4350 5850 4350 5300
Wire Wire Line
	4800 6450 4350 6450
Connection ~ 4350 6450
Wire Wire Line
	4350 6450 4350 5850
Wire Wire Line
	4800 7000 4350 7000
Connection ~ 4350 7000
Wire Wire Line
	4350 7000 4350 6450
Wire Wire Line
	5400 5200 5550 5200
Wire Wire Line
	5550 5200 5550 3750
Wire Wire Line
	5550 3750 6200 3750
Wire Wire Line
	5400 5750 5700 5750
Wire Wire Line
	5700 5750 5700 3850
Wire Wire Line
	5700 3850 6200 3850
Wire Wire Line
	5400 6350 5850 6350
Wire Wire Line
	5850 6350 5850 3950
Wire Wire Line
	5850 3950 6200 3950
Wire Wire Line
	5400 6900 6000 6900
Wire Wire Line
	6000 6900 6000 4050
Wire Wire Line
	6000 4050 6200 4050
$Comp
L 74xx:74LS86 U16
U 5 1 60B5B576
P 8850 3450
F 0 "U16" H 9080 3496 50  0000 L CNN
F 1 "74LS86" H 9080 3405 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 8850 3450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 8850 3450 50  0001 C CNN
	5    8850 3450
	1    0    0    -1  
$EndComp
Text GLabel 8850 3950 3    50   UnSpc ~ 0
GND
Text GLabel 8850 2950 1    50   Input ~ 0
PWR
Wire Wire Line
	4450 3250 4250 3250
Wire Wire Line
	4450 3350 4250 3350
Wire Wire Line
	4450 3450 4250 3450
Wire Wire Line
	4450 3550 4250 3550
Entry Wire Line
	4150 3150 4250 3250
Entry Wire Line
	4150 3250 4250 3350
Entry Wire Line
	4150 3350 4250 3450
Entry Wire Line
	4150 3450 4250 3550
Text Label 4250 3250 0    50   ~ 0
regA0
Text Label 4250 3350 0    50   ~ 0
regA1
Text Label 4250 3450 0    50   ~ 0
regA2
Text Label 4250 3550 0    50   ~ 0
regA3
Text Label 5450 3550 0    50   ~ 0
carry
Text Label 6200 3050 2    50   ~ 0
carry
Wire Wire Line
	6200 3250 5950 3250
Wire Wire Line
	6200 3350 5950 3350
Wire Wire Line
	6200 3450 5950 3450
Wire Wire Line
	6200 3550 5950 3550
Text Label 6000 3250 0    50   ~ 0
regA4
Text Label 6000 3350 0    50   ~ 0
regA5
Text Label 6000 3450 0    50   ~ 0
regA6
Text Label 6000 3550 0    50   ~ 0
regA7
Entry Wire Line
	5850 3150 5950 3250
Entry Wire Line
	5850 3250 5950 3350
Entry Wire Line
	5850 3350 5950 3450
Entry Wire Line
	5850 3450 5950 3550
Wire Bus Line
	5850 2300 4150 2300
Text HLabel 5850 2300 2    50   3State ~ 0
regA[0..7]
Text Label 2750 5100 2    50   ~ 0
regB0
Text Label 2750 5650 2    50   ~ 0
regB1
Text Label 2750 6250 2    50   ~ 0
regB2
Text Label 2750 6800 2    50   ~ 0
regB3
Text Label 4800 5100 2    50   ~ 0
regB4
Text Label 4800 5650 2    50   ~ 0
regB5
Text Label 4800 6250 2    50   ~ 0
regB6
Text Label 4800 6800 2    50   ~ 0
regB7
Text Label 6750 5350 0    50   ~ 0
regB0
Text Label 6750 5450 0    50   ~ 0
regB1
Text Label 6750 5550 0    50   ~ 0
regB2
Text Label 6750 5650 0    50   ~ 0
regB3
Text Label 6750 5750 0    50   ~ 0
regB4
Text Label 6750 5850 0    50   ~ 0
regB5
Text Label 6750 5950 0    50   ~ 0
regB6
Text Label 6750 6050 0    50   ~ 0
regB7
Entry Wire Line
	6550 5250 6650 5350
Entry Wire Line
	6550 5350 6650 5450
Entry Wire Line
	6550 5450 6650 5550
Entry Wire Line
	6550 5550 6650 5650
Entry Wire Line
	6550 5650 6650 5750
Entry Wire Line
	6550 5750 6650 5850
Entry Wire Line
	6550 5850 6650 5950
Entry Wire Line
	6550 5950 6650 6050
Wire Bus Line
	6550 4800 6700 4800
Text HLabel 6700 4800 2    50   Input ~ 0
regB[0..7]
Wire Wire Line
	6650 5350 6750 5350
Wire Wire Line
	6650 5450 6750 5450
Wire Wire Line
	6650 5550 6750 5550
Wire Wire Line
	6650 5650 6750 5650
Wire Wire Line
	6650 5750 6750 5750
Wire Wire Line
	6650 5850 6750 5850
Wire Wire Line
	6650 5950 6750 5950
Wire Wire Line
	6650 6050 6750 6050
Text HLabel 7200 3550 2    50   Output ~ 0
FLAG_C
$Comp
L 74xx:74LS02 U42
U 1 1 60B1995A
P 9200 4650
F 0 "U42" H 9200 4975 50  0000 C CNN
F 1 "74LS02" H 9200 4884 50  0000 C CNN
F 2 "" H 9200 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9200 4650 50  0001 C CNN
	1    9200 4650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U42
U 2 1 60B1CD8C
P 9200 5200
F 0 "U42" H 9200 5525 50  0000 C CNN
F 1 "74LS02" H 9200 5434 50  0000 C CNN
F 2 "" H 9200 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9200 5200 50  0001 C CNN
	2    9200 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U42
U 3 1 60B1F9C1
P 9200 5750
F 0 "U42" H 9200 6075 50  0000 C CNN
F 1 "74LS02" H 9200 5984 50  0000 C CNN
F 2 "" H 9200 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9200 5750 50  0001 C CNN
	3    9200 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U42
U 5 1 60B260C4
P 7400 5400
F 0 "U42" H 7630 5446 50  0000 L CNN
F 1 "74LS02" H 7630 5355 50  0000 L CNN
F 2 "" H 7400 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 7400 5400 50  0001 C CNN
	5    7400 5400
	1    0    0    -1  
$EndComp
Text GLabel 7400 5900 3    50   UnSpc ~ 0
GND
Text GLabel 7400 4900 1    50   Input ~ 0
PWR
Text Label 8900 4550 2    50   ~ 0
e0
Text Label 8900 4750 2    50   ~ 0
e1
Text Label 8900 5100 2    50   ~ 0
e2
Text Label 8900 5300 2    50   ~ 0
e3
Text Label 8900 5650 2    50   ~ 0
e4
Text Label 8900 5850 2    50   ~ 0
e5
Text Label 8900 6200 2    50   ~ 0
e6
$Comp
L 74xx:74LS02 U42
U 4 1 60B21D0D
P 9200 6300
F 0 "U42" H 9200 6625 50  0000 C CNN
F 1 "74LS02" H 9200 6534 50  0000 C CNN
F 2 "" H 9200 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9200 6300 50  0001 C CNN
	4    9200 6300
	1    0    0    -1  
$EndComp
Text Label 8900 6400 2    50   ~ 0
e7
$Comp
L 74xx:74LS00 U43
U 1 1 60B34024
P 9850 4900
F 0 "U43" H 9850 5225 50  0000 C CNN
F 1 "74LS00" H 9850 5134 50  0000 C CNN
F 2 "" H 9850 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9850 4900 50  0001 C CNN
	1    9850 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U43
U 2 1 60B38954
P 9850 6000
F 0 "U43" H 9850 6325 50  0000 C CNN
F 1 "74LS00" H 9850 6234 50  0000 C CNN
F 2 "" H 9850 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9850 6000 50  0001 C CNN
	2    9850 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U43
U 3 1 60B3DC69
P 10500 5450
F 0 "U43" H 10500 5775 50  0000 C CNN
F 1 "74LS00" H 10500 5684 50  0000 C CNN
F 2 "" H 10500 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 10500 5450 50  0001 C CNN
	3    10500 5450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U43
U 5 1 60B403D2
P 8250 5400
F 0 "U43" H 8480 5446 50  0000 L CNN
F 1 "74LS00" H 8480 5355 50  0000 L CNN
F 2 "" H 8250 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8250 5400 50  0001 C CNN
	5    8250 5400
	1    0    0    -1  
$EndComp
Text GLabel 8250 4900 1    50   Input ~ 0
PWR
Text GLabel 8250 5900 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9550 4650 9500 4650
Wire Wire Line
	9550 4650 9550 4800
Wire Wire Line
	9550 5000 9550 5200
Wire Wire Line
	9550 5200 9500 5200
Wire Wire Line
	9500 5750 9550 5750
Wire Wire Line
	9550 5750 9550 5900
Wire Wire Line
	9550 6100 9550 6300
Wire Wire Line
	9550 6300 9500 6300
Wire Wire Line
	10150 6000 10150 5550
Wire Wire Line
	10150 5550 10200 5550
Wire Wire Line
	10200 5350 10150 5350
Wire Wire Line
	10150 5350 10150 4900
Wire Bus Line
	5850 2300 5850 3450
Wire Bus Line
	4150 2300 4150 3450
Wire Bus Line
	6550 4800 6550 5950
Text HLabel 10800 5450 2    50   Output ~ 0
FLAG_Z
$EndSCHEMATC
