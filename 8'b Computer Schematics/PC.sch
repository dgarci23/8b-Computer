EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 14
Title "PC Control Signals and Logic"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_Flash:SST39SF010 U49
U 1 1 60B11BE7
P 5950 2300
F 0 "U49" H 5700 3650 50  0000 C CNN
F 1 "SST39SF010" H 6250 3650 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 5950 2600 50  0001 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
Text GLabel 5950 1000 1    50   Input ~ 0
PWR
Text GLabel 5950 3500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	5350 3300 5350 3350
Wire Wire Line
	5350 3350 5300 3350
Connection ~ 5350 3350
Wire Wire Line
	5350 3350 5350 3400
Text GLabel 5300 3350 0    50   UnSpc ~ 0
GND
Wire Wire Line
	5300 3100 5350 3100
Text GLabel 5300 3100 0    50   Input ~ 0
PWR
NoConn ~ 5350 2900
NoConn ~ 5350 2800
Wire Wire Line
	5350 2700 5350 2600
Connection ~ 5350 2600
Wire Wire Line
	5350 2600 5350 2500
Connection ~ 5350 2500
Wire Wire Line
	5350 2500 5350 2400
Wire Wire Line
	5350 2100 5350 2200
Connection ~ 5350 2400
Connection ~ 5350 2200
Wire Wire Line
	5350 2200 5350 2300
Connection ~ 5350 2300
Wire Wire Line
	5350 2300 5350 2400
Wire Wire Line
	5350 2400 5300 2400
Text GLabel 5300 2400 0    50   UnSpc ~ 0
GND
Entry Wire Line
	3350 1300 3450 1400
Entry Wire Line
	3350 1400 3450 1500
Entry Wire Line
	3350 1500 3450 1600
Entry Wire Line
	3350 1600 3450 1700
Text HLabel 3350 800  0    50   Input ~ 0
opcode[0..3]
Text GLabel 5350 1100 0    50   UnSpc ~ 0
GND
Text HLabel 5350 1900 0    50   Input ~ 0
FZ
Text HLabel 5350 2000 0    50   Input ~ 0
FC
Text GLabel 1600 3700 3    50   UnSpc ~ 0
GND
Text GLabel 1600 2100 1    50   Input ~ 0
PWR
$Comp
L 74xx:74LS138 U47
U 1 1 60B15FC9
P 3000 2700
F 0 "U47" H 2850 3200 50  0000 C CNN
F 1 "74LS138" H 3200 3200 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
Text GLabel 3000 3400 3    50   UnSpc ~ 0
GND
Text GLabel 3000 2100 1    50   Input ~ 0
PWR
Wire Wire Line
	1100 2900 1100 3000
Connection ~ 1100 3000
Wire Wire Line
	1100 3000 1100 3100
Wire Wire Line
	1100 3000 1050 3000
Text GLabel 1050 3000 0    50   Input ~ 0
PWR
Wire Wire Line
	1050 3200 1100 3200
Text GLabel 1050 3200 0    50   Input ~ 0
~CLK
NoConn ~ 1100 2400
NoConn ~ 1100 2500
NoConn ~ 1100 2600
NoConn ~ 1100 2700
NoConn ~ 2100 2900
NoConn ~ 2100 2700
Wire Wire Line
	2100 2400 2500 2400
Wire Wire Line
	2500 2500 2100 2500
Wire Wire Line
	2100 2600 2500 2600
Wire Wire Line
	2500 3000 2500 3050
Wire Wire Line
	2500 3050 2450 3050
Connection ~ 2500 3050
Wire Wire Line
	2500 3050 2500 3100
Text GLabel 2450 3050 0    50   UnSpc ~ 0
GND
Text GLabel 2500 2900 0    50   Input ~ 0
PWR
NoConn ~ 3500 3000
NoConn ~ 3500 3100
NoConn ~ 3500 2400
NoConn ~ 3500 2500
NoConn ~ 3500 2600
NoConn ~ 3500 2700
NoConn ~ 3500 2800
Text HLabel 3500 2900 2    50   Output ~ 0
~T5
Text Label 3450 1400 0    50   ~ 0
code0
Text Label 3450 1500 0    50   ~ 0
code1
Text Label 3450 1600 0    50   ~ 0
code2
Text Label 3450 1700 0    50   ~ 0
code3
Text Label 2200 2400 0    50   ~ 0
micro0
Text Label 2200 2500 0    50   ~ 0
micro1
Text Label 2200 2600 0    50   ~ 0
micro2
Text Label 5350 1200 2    50   ~ 0
micro0
Text Label 5350 1300 2    50   ~ 0
micro1
Text Label 5350 1400 2    50   ~ 0
micro2
Text Label 5350 1500 2    50   ~ 0
code0
Text Label 5350 1600 2    50   ~ 0
code1
Text Label 5350 1700 2    50   ~ 0
code2
Text Label 5350 1800 2    50   ~ 0
code3
$Comp
L Memory_Flash:SST39SF010 U50
U 1 1 60B3761A
P 8000 2300
F 0 "U50" H 7750 3650 50  0000 C CNN
F 1 "SST39SF010" H 8300 3650 50  0000 C CNN
F 2 "" H 8000 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 8000 2600 50  0001 C CNN
	1    8000 2300
	1    0    0    -1  
$EndComp
Text GLabel 8000 1000 1    50   Input ~ 0
PWR
Text GLabel 8000 3500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	7400 3300 7400 3350
Wire Wire Line
	7400 3350 7350 3350
Connection ~ 7400 3350
Wire Wire Line
	7400 3350 7400 3400
Text GLabel 7350 3350 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7350 3100 7400 3100
Text GLabel 7350 3100 0    50   Input ~ 0
PWR
NoConn ~ 7400 2900
NoConn ~ 7400 2800
Wire Wire Line
	7400 2700 7400 2600
Connection ~ 7400 2600
Wire Wire Line
	7400 2600 7400 2500
Connection ~ 7400 2500
Wire Wire Line
	7400 2500 7400 2400
Wire Wire Line
	7400 2100 7400 2200
Connection ~ 7400 2400
Connection ~ 7400 2200
Wire Wire Line
	7400 2200 7400 2300
Connection ~ 7400 2300
Wire Wire Line
	7400 2300 7400 2400
Wire Wire Line
	7400 2400 7350 2400
Text GLabel 7350 2400 0    50   UnSpc ~ 0
GND
Text GLabel 7400 1100 0    50   UnSpc ~ 0
GND
Text Label 7400 1200 2    50   ~ 0
micro0
Text Label 7400 1300 2    50   ~ 0
micro1
Text Label 7400 1400 2    50   ~ 0
micro2
Text Label 7400 1500 2    50   ~ 0
code0
Text Label 7400 1600 2    50   ~ 0
code1
Text Label 7400 1700 2    50   ~ 0
code2
Text Label 7400 1800 2    50   ~ 0
code3
$Comp
L Memory_Flash:SST39SF010 U51
U 1 1 60B38DB0
P 10100 2300
F 0 "U51" H 9850 3650 50  0000 C CNN
F 1 "SST39SF010" H 10400 3650 50  0000 C CNN
F 2 "" H 10100 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 10100 2600 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
Text GLabel 10100 1000 1    50   Input ~ 0
PWR
Text GLabel 10100 3500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9500 3300 9500 3350
Wire Wire Line
	9500 3350 9450 3350
Connection ~ 9500 3350
Wire Wire Line
	9500 3350 9500 3400
Text GLabel 9450 3350 0    50   UnSpc ~ 0
GND
Wire Wire Line
	9450 3100 9500 3100
Text GLabel 9450 3100 0    50   Input ~ 0
PWR
NoConn ~ 9500 2900
NoConn ~ 9500 2800
Wire Wire Line
	9500 2700 9500 2600
Connection ~ 9500 2600
Wire Wire Line
	9500 2600 9500 2500
Connection ~ 9500 2500
Wire Wire Line
	9500 2500 9500 2400
Wire Wire Line
	9500 2100 9500 2200
Connection ~ 9500 2400
Connection ~ 9500 2200
Wire Wire Line
	9500 2200 9500 2300
Connection ~ 9500 2300
Wire Wire Line
	9500 2300 9500 2400
Wire Wire Line
	9500 2400 9450 2400
Text GLabel 9450 2400 0    50   UnSpc ~ 0
GND
Text GLabel 9500 1100 0    50   UnSpc ~ 0
GND
Text Label 9500 1200 2    50   ~ 0
micro0
Text Label 9500 1300 2    50   ~ 0
micro1
Text Label 9500 1400 2    50   ~ 0
micro2
Text Label 9500 1500 2    50   ~ 0
code0
Text Label 9500 1600 2    50   ~ 0
code1
Text Label 9500 1700 2    50   ~ 0
code2
Text Label 9500 1800 2    50   ~ 0
code3
Text HLabel 6550 1800 2    50   Output ~ 0
HLT
Text HLabel 6550 1700 2    50   Output ~ 0
WE
Text Label 6550 1500 0    50   ~ 0
MI
Text Label 6550 1400 0    50   ~ 0
AI
Text Label 6550 1300 0    50   ~ 0
BI
Text Label 6550 1200 0    50   ~ 0
AO
Text Label 6550 1100 0    50   ~ 0
BO
Text Label 8600 1800 0    50   ~ 0
EO
Text Label 8600 1400 0    50   ~ 0
J
Text HLabel 8600 1700 2    50   Output ~ 0
SUB
Text HLabel 8600 1500 2    50   Output ~ 0
CE
Text HLabel 8600 1600 2    50   Output ~ 0
OI
Text Label 8600 1300 0    50   ~ 0
CO
Text Label 8600 1200 0    50   ~ 0
II
Text Label 8600 1100 0    50   ~ 0
IO
NoConn ~ 10700 1100
NoConn ~ 10700 1200
NoConn ~ 10700 1300
NoConn ~ 10700 1400
NoConn ~ 10700 1500
NoConn ~ 10700 1600
NoConn ~ 10700 1700
Text Label 10700 1800 0    50   ~ 0
FI
$Comp
L 74xx:74LS04 U45
U 1 1 60B4826F
P 1550 4500
F 0 "U45" H 1550 4817 50  0000 C CNN
F 1 "74LS04" H 1550 4726 50  0000 C CNN
F 2 "" H 1550 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 4500 50  0001 C CNN
	1    1550 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 2 1 60B489D1
P 1550 5000
F 0 "U45" H 1550 5317 50  0000 C CNN
F 1 "74LS04" H 1550 5226 50  0000 C CNN
F 2 "" H 1550 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 5000 50  0001 C CNN
	2    1550 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 60B4983B
P 1550 5500
F 0 "U1" H 1550 5817 50  0000 C CNN
F 1 "74LS04" H 1550 5726 50  0000 C CNN
F 2 "" H 1550 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 5500 50  0001 C CNN
	3    1550 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 4 1 60B4AFA9
P 1550 6000
F 0 "U1" H 1550 6317 50  0000 C CNN
F 1 "74LS04" H 1550 6226 50  0000 C CNN
F 2 "" H 1550 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 6000 50  0001 C CNN
	4    1550 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 60B4B9E0
P 1550 6500
F 0 "U1" H 1550 6817 50  0000 C CNN
F 1 "74LS04" H 1550 6726 50  0000 C CNN
F 2 "" H 1550 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 6500 50  0001 C CNN
	5    1550 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 60B4C849
P 1550 7000
F 0 "U1" H 1550 7317 50  0000 C CNN
F 1 "74LS04" H 1550 7226 50  0000 C CNN
F 2 "" H 1550 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1550 7000 50  0001 C CNN
	6    1550 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 7 1 60B4D925
P 2500 5750
F 0 "U45" H 2730 5796 50  0000 L CNN
F 1 "74LS04" H 2730 5705 50  0000 L CNN
F 2 "" H 2500 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2500 5750 50  0001 C CNN
	7    2500 5750
	1    0    0    -1  
$EndComp
Text GLabel 2500 6250 3    50   UnSpc ~ 0
GND
Text GLabel 2500 5250 1    50   Input ~ 0
PWR
Text Label 1250 4500 2    50   ~ 0
OE
Text HLabel 1850 4500 2    50   Output ~ 0
~OE
Text Label 1250 5000 2    50   ~ 0
MI
Text HLabel 1850 5000 2    50   Output ~ 0
~MI
Text Label 1250 5500 2    50   ~ 0
AI
Text HLabel 1850 5500 2    50   Output ~ 0
~AI
Text HLabel 1850 6000 2    50   Output ~ 0
~BI
Text Label 1250 6000 2    50   ~ 0
BI
Text Label 1250 6500 2    50   ~ 0
AO
Text HLabel 1850 6500 2    50   Output ~ 0
~AO
Text Label 1250 7000 2    50   ~ 0
BO
Text HLabel 1850 7000 2    50   Output ~ 0
~BO
$Comp
L 74xx:74LS04 U48
U 1 1 60B544B4
P 3500 4500
F 0 "U48" H 3500 4817 50  0000 C CNN
F 1 "74LS04" H 3500 4726 50  0000 C CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U48
U 2 1 60B544BA
P 3500 5000
F 0 "U48" H 3500 5317 50  0000 C CNN
F 1 "74LS04" H 3500 5226 50  0000 C CNN
F 2 "" H 3500 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 5000 50  0001 C CNN
	2    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 3 1 60B544C0
P 3500 5500
F 0 "U45" H 3500 5817 50  0000 C CNN
F 1 "74LS04" H 3500 5726 50  0000 C CNN
F 2 "" H 3500 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 5500 50  0001 C CNN
	3    3500 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 4 1 60B544C6
P 3500 6000
F 0 "U45" H 3500 6317 50  0000 C CNN
F 1 "74LS04" H 3500 6226 50  0000 C CNN
F 2 "" H 3500 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 6000 50  0001 C CNN
	4    3500 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 5 1 60B544CC
P 3500 6500
F 0 "U45" H 3500 6817 50  0000 C CNN
F 1 "74LS04" H 3500 6726 50  0000 C CNN
F 2 "" H 3500 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 6500 50  0001 C CNN
	5    3500 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U45
U 6 1 60B544D2
P 3500 7000
F 0 "U45" H 3500 7317 50  0000 C CNN
F 1 "74LS04" H 3500 7226 50  0000 C CNN
F 2 "" H 3500 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3500 7000 50  0001 C CNN
	6    3500 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U48
U 7 1 60B55BC4
P 4450 5750
F 0 "U48" H 4680 5796 50  0000 L CNN
F 1 "74LS04" H 4680 5705 50  0000 L CNN
F 2 "" H 4450 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4450 5750 50  0001 C CNN
	7    4450 5750
	1    0    0    -1  
$EndComp
Text GLabel 4450 6250 3    50   UnSpc ~ 0
GND
Text GLabel 4450 5250 1    50   Input ~ 0
PWR
Text Label 3200 4500 2    50   ~ 0
EO
Text HLabel 3800 4500 2    50   Output ~ 0
~EO
Text Label 3200 5000 2    50   ~ 0
J
Text HLabel 3800 5000 2    50   Output ~ 0
~J
Text Label 3200 5500 2    50   ~ 0
CO
Text HLabel 3800 5500 2    50   Output ~ 0
~CO
Text Label 3200 6000 2    50   ~ 0
II
Text HLabel 3800 6000 2    50   Output ~ 0
~II
Text HLabel 3800 6500 2    50   Output ~ 0
~IO
Text Label 3200 6500 2    50   ~ 0
IO
Text Label 3200 7000 2    50   ~ 0
FI
Text HLabel 3800 7000 2    50   Output ~ 0
~FI
Text Label 6550 1600 0    50   ~ 0
OE
$Comp
L 74xx:74LS161 U46
U 1 1 60B13FA9
P 1600 2900
F 0 "U46" H 1450 3600 50  0000 C CNN
F 1 "74LS161" H 1850 3600 50  0000 C CNN
F 2 "" H 1600 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 1600 2900 50  0001 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
Text GLabel 1100 3400 0    50   Input ~ 0
~STEPRST
Text HLabel 7400 1900 0    50   Input ~ 0
FZ
Text HLabel 7400 2000 0    50   Input ~ 0
FC
Text HLabel 9500 1900 0    50   Input ~ 0
FZ
Text HLabel 9500 2000 0    50   Input ~ 0
FC
Wire Bus Line
	3350 800  3350 1600
$EndSCHEMATC
