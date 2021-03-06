EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 14
Title "RAM Memory"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2800 1950 2800 2050
Connection ~ 2800 2050
Wire Wire Line
	2800 2050 2800 2150
Connection ~ 2800 2150
Wire Wire Line
	2800 2150 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	2800 2250 2800 2350
Connection ~ 2800 2350
Wire Wire Line
	2800 2350 2800 2450
Connection ~ 2800 2450
Wire Wire Line
	2800 2450 2800 2550
Connection ~ 2800 2550
Wire Wire Line
	2800 2550 2800 2650
Connection ~ 2800 2650
Wire Wire Line
	2800 2650 2800 2750
Connection ~ 2800 2750
Wire Wire Line
	2800 2750 2800 2850
Connection ~ 2800 2850
Wire Wire Line
	2800 2850 2800 2950
Wire Wire Line
	2800 2450 2950 2450
Text GLabel 2950 2450 2    50   UnSpc ~ 0
GND
Text GLabel 2200 3550 3    50   UnSpc ~ 0
GND
Text GLabel 2200 950  1    50   Input ~ 0
PWR
Text GLabel 1600 1550 0    50   UnSpc ~ 0
GND
Text HLabel 1350 1650 0    50   Input ~ 0
~OE
Wire Wire Line
	1350 1650 1600 1650
$Comp
L lib:AS6C62256 U24
U 1 1 60BBF788
P 2200 2250
F 0 "U24" H 2000 3450 60  0000 C CNN
F 1 "AS6C62256" H 2500 3450 60  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0001 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U21
U 1 1 60BCCB26
P 5450 2350
F 0 "U21" H 5300 3050 50  0000 C CNN
F 1 "74LS245" H 5650 3050 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5450 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5450 2350 50  0001 C CNN
	1    5450 2350
	1    0    0    -1  
$EndComp
Text Label 4950 1850 2    50   ~ 0
inner0
Text Label 4950 1950 2    50   ~ 0
inner1
Text Label 4950 2050 2    50   ~ 0
inner2
Text Label 4950 2150 2    50   ~ 0
inner3
Text Label 4950 2250 2    50   ~ 0
inner4
Text Label 4950 2350 2    50   ~ 0
inner5
Text Label 4950 2450 2    50   ~ 0
inner6
Text Label 4950 2550 2    50   ~ 0
inner7
Text Label 1600 2250 2    50   ~ 0
inner0
Text Label 1600 2350 2    50   ~ 0
inner1
Text Label 1600 2450 2    50   ~ 0
inner2
Text Label 1600 2550 2    50   ~ 0
inner3
Text Label 1600 2650 2    50   ~ 0
inner4
Text Label 1600 2750 2    50   ~ 0
inner5
Text Label 1600 2850 2    50   ~ 0
inner6
Text Label 1600 2950 2    50   ~ 0
inner7
Text GLabel 5450 1550 1    50   Input ~ 0
PWR
$Comp
L 74xx:74LS245 U23
U 1 1 60BEE755
P 7750 2350
F 0 "U23" H 7600 3050 50  0000 C CNN
F 1 "74LS245" H 7950 3050 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 7750 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7750 2350 50  0001 C CNN
	1    7750 2350
	1    0    0    -1  
$EndComp
Text Label 7250 1850 2    50   ~ 0
inner0
Text Label 7250 1950 2    50   ~ 0
inner1
Text Label 7250 2050 2    50   ~ 0
inner2
Text Label 7250 2150 2    50   ~ 0
inner3
Text Label 7250 2250 2    50   ~ 0
inner4
Text Label 7250 2350 2    50   ~ 0
inner5
Text Label 7250 2450 2    50   ~ 0
inner6
Text Label 7250 2550 2    50   ~ 0
inner7
Text GLabel 7750 1550 1    50   Input ~ 0
PWR
Text GLabel 8250 1850 2    50   3State ~ 0
bus0
Text GLabel 8250 1950 2    50   3State ~ 0
bus1
Text GLabel 8250 2050 2    50   3State ~ 0
bus2
Text GLabel 8250 2150 2    50   3State ~ 0
bus3
Text GLabel 8250 2250 2    50   3State ~ 0
bus4
Text GLabel 8250 2350 2    50   3State ~ 0
bus5
Text GLabel 8250 2450 2    50   3State ~ 0
bus6
Text GLabel 8250 2550 2    50   3State ~ 0
bus7
Text HLabel 7050 2850 0    50   Input ~ 0
~OE
Wire Wire Line
	7050 2850 7250 2850
Text HLabel 4750 2850 0    50   Input ~ 0
~OE
Wire Wire Line
	4750 2850 4950 2850
$Sheet
S 4700 5600 650  550 
U 60BF1E66
F0 "Memory Values" 50
F1 "MemoryValues.sch" 50
F2 "mux_s" I L 4700 5850 50 
F3 "mem[0..7]" O R 5350 5700 50 
$EndSheet
Text GLabel 7750 3150 3    50   UnSpc ~ 0
GND
Text GLabel 5450 3150 3    50   UnSpc ~ 0
GND
$Comp
L Switch:SW_SPDT SW14
U 1 1 60C07859
P 4500 5850
F 0 "SW14" H 4500 6135 50  0000 C CNN
F 1 "SW_SPDT" H 4500 6044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN" H 4500 5850 50  0001 C CNN
F 3 "~" H 4500 5850 50  0001 C CNN
	1    4500 5850
	-1   0    0    1   
$EndComp
Text GLabel 4300 5950 0    50   UnSpc ~ 0
GND
Text GLabel 4300 5750 0    50   Input ~ 0
PWR
NoConn ~ 5800 4500
NoConn ~ 5800 4600
NoConn ~ 5800 4800
NoConn ~ 5800 4900
NoConn ~ 5800 5100
NoConn ~ 5800 5200
NoConn ~ 6800 5100
NoConn ~ 6800 4800
NoConn ~ 6800 4500
Text GLabel 5800 5500 0    50   UnSpc ~ 0
GND
Text GLabel 6300 5800 3    50   UnSpc ~ 0
GND
Text GLabel 6300 3900 1    50   Input ~ 0
PWR
$Comp
L 74xx:74LS157 U22
U 1 1 60C1FB78
P 6300 4800
AR Path="/60BBE402/60C1FB78" Ref="U22"  Part="1" 
AR Path="/60BBE402/60BF1E66/60C1FB78" Ref="U?"  Part="1" 
F 0 "U22" H 6150 5600 50  0000 C CNN
F 1 "74LS157" H 6550 5600 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 6300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60C1FB7F
P 5600 4200
AR Path="/60BBE402/60BF1E66/60C1FB7F" Ref="SW?"  Part="1" 
AR Path="/60BBE402/60C1FB7F" Ref="SW15"  Part="1" 
F 0 "SW15" H 5600 4485 50  0000 C CNN
F 1 "SW_Push" H 5600 4394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN" H 5600 4400 50  0001 C CNN
F 3 "~" H 5600 4400 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
Text GLabel 5400 4200 0    50   UnSpc ~ 0
GND
Wire Wire Line
	5800 4300 5600 4300
Wire Wire Line
	5600 4300 5600 4750
Wire Wire Line
	5600 4750 5450 4750
$Comp
L 74xx:74LS00 U?
U 1 1 60C1FB89
P 5150 4750
AR Path="/60BBE402/60BF1E66/60C1FB89" Ref="U?"  Part="1" 
AR Path="/60BBE402/60C1FB89" Ref="U20"  Part="1" 
F 0 "U20" H 5150 5075 50  0000 C CNN
F 1 "74LS00" H 5150 4984 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 5150 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5150 4750 50  0001 C CNN
	1    5150 4750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 5 1 60C1FB8F
P 9750 2150
AR Path="/60BBE402/60BF1E66/60C1FB8F" Ref="U?"  Part="5" 
AR Path="/60BBE402/60C1FB8F" Ref="U20"  Part="5" 
F 0 "U20" H 9980 2196 50  0000 L CNN
F 1 "74LS00" H 9980 2105 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 9750 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9750 2150 50  0001 C CNN
	5    9750 2150
	1    0    0    -1  
$EndComp
Text GLabel 9750 2650 3    50   UnSpc ~ 0
GND
Text GLabel 9750 1650 1    50   Input ~ 0
PWR
Text GLabel 4850 4650 0    50   Input ~ 0
CLK
Text HLabel 4850 4850 0    50   Input ~ 0
WE
Wire Wire Line
	4600 5850 4600 5400
Wire Wire Line
	4600 5400 5800 5400
Text Label 5850 5800 0    50   ~ 0
data0
Text Label 5850 5900 0    50   ~ 0
data1
Text Label 5850 6000 0    50   ~ 0
data2
Text Label 5850 6100 0    50   ~ 0
data3
Text Label 5850 6200 0    50   ~ 0
data4
Text Label 5850 6300 0    50   ~ 0
data5
Text Label 5850 6400 0    50   ~ 0
data6
Text Label 5850 6500 0    50   ~ 0
data7
Wire Bus Line
	5350 5700 5750 5700
Entry Wire Line
	5750 5700 5850 5800
Entry Wire Line
	5750 5800 5850 5900
Entry Wire Line
	5750 5900 5850 6000
Entry Wire Line
	5750 6000 5850 6100
Entry Wire Line
	5750 6100 5850 6200
Entry Wire Line
	5750 6200 5850 6300
Entry Wire Line
	5750 6300 5850 6400
Entry Wire Line
	5750 6400 5850 6500
Text Label 5950 1850 0    50   ~ 0
data0
Text Label 5950 1950 0    50   ~ 0
data1
Text Label 5950 2050 0    50   ~ 0
data2
Text Label 5950 2150 0    50   ~ 0
data3
Text Label 5950 2250 0    50   ~ 0
data4
Text Label 5950 2350 0    50   ~ 0
data5
Text Label 5950 2450 0    50   ~ 0
data6
Text Label 5950 2550 0    50   ~ 0
data7
$Sheet
S 2850 4950 1150 950 
U 60C2C6FD
F0 "Memory Address" 50
F1 "MemoryAddress.sch" 50
F2 "addr[0..3]" O L 2850 5400 50 
F3 "mux_s" I R 4000 5400 50 
F4 "MI" I L 2850 5100 50 
$EndSheet
Wire Wire Line
	4000 5400 4600 5400
Connection ~ 4600 5400
Wire Bus Line
	2850 5400 2500 5400
Entry Wire Line
	2400 5300 2500 5400
Entry Wire Line
	2400 5400 2500 5500
Entry Wire Line
	2400 5500 2500 5600
Entry Wire Line
	2400 5600 2500 5700
Text Label 2400 5300 2    50   ~ 0
addr_in0
Text Label 2400 5400 2    50   ~ 0
addr_in1
Text Label 2400 5500 2    50   ~ 0
addr_in2
Text Label 2400 5600 2    50   ~ 0
addr_in3
Text GLabel 7250 2750 0    50   Input ~ 0
PWR
Wire Wire Line
	4950 2750 4350 2750
$Comp
L 74xx:74LS00 U20
U 2 1 60B12373
P 4050 2750
F 0 "U20" H 4050 3075 50  0000 C CNN
F 1 "74LS00" H 4050 2984 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_SMD-Socket" H 4050 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 4050 2750 50  0001 C CNN
	2    4050 2750
	1    0    0    -1  
$EndComp
Text HLabel 3750 2650 0    50   Input ~ 0
~OE
Text HLabel 3750 2850 0    50   Input ~ 0
WE
Text Label 2800 1850 0    50   ~ 0
addr_in0
Text Label 2800 1750 0    50   ~ 0
addr_in1
Text Label 2800 1650 0    50   ~ 0
addr_in2
Text Label 2800 1550 0    50   ~ 0
addr_in3
Wire Bus Line
	2500 5400 2500 5700
Wire Bus Line
	5750 5700 5750 6400
$EndSCHEMATC
