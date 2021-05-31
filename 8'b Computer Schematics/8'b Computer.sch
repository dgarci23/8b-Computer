EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 14
Title "8'b Computer"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3550 1700 700  500 
U 60AE8A9A
F0 "RegisterA" 50
F1 "RegisterA.sch" 50
F2 "regA[0..7]" O R 4250 1950 50 
F3 "~AO" I L 3550 2050 50 
F4 "~AI" I L 3550 1800 50 
$EndSheet
$Sheet
S 3550 2600 700  500 
U 60AFAF5E
F0 "RegisterB" 50
F1 "RegisterB.sch" 50
F2 "~BO" I L 3550 2950 50 
F3 "~BI" I L 3550 2700 50 
F4 "regB[0...7]" O R 4250 2850 50 
$EndSheet
$Sheet
S 1650 2050 750  500 
U 60B0C6F5
F0 "Clock" 50
F1 "Clock.sch" 50
F2 "HLT" I L 1650 2300 50 
$EndSheet
$Comp
L power:+5V #PWR03
U 1 1 60B4815C
P 6050 7000
F 0 "#PWR03" H 6050 6850 50  0001 C CNN
F 1 "+5V" H 6065 7173 50  0000 C CNN
F 2 "" H 6050 7000 50  0001 C CNN
F 3 "" H 6050 7000 50  0001 C CNN
	1    6050 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60B48162
P 6400 7250
F 0 "#PWR04" H 6400 7000 50  0001 C CNN
F 1 "GND" H 6405 7077 50  0000 C CNN
F 2 "" H 6400 7250 50  0001 C CNN
F 3 "" H 6400 7250 50  0001 C CNN
	1    6400 7250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60B48168
P 6400 7000
F 0 "#FLG02" H 6400 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 6400 7173 50  0000 C CNN
F 2 "" H 6400 7000 50  0001 C CNN
F 3 "~" H 6400 7000 50  0001 C CNN
	1    6400 7000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60B4816E
P 6050 7250
F 0 "#FLG01" H 6050 7325 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 7423 50  0000 C CNN
F 2 "" H 6050 7250 50  0001 C CNN
F 3 "~" H 6050 7250 50  0001 C CNN
	1    6050 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 7000 6050 7250
Wire Wire Line
	6400 7000 6400 7250
$Sheet
S 4650 2050 850  650 
U 60B51CA9
F0 "ALU" 50
F1 "ALU.sch" 50
F2 "SUB" I L 4650 2150 50 
F3 "regA[0..7]" I L 4650 2450 50 
F4 "regB[0..7]" I L 4650 2600 50 
F5 "~EO" I L 4650 2300 50 
F6 "FLAG_C" O R 5500 2350 50 
F7 "FLAG_Z" O R 5500 2500 50 
$EndSheet
Text GLabel 5400 7200 3    50   Input ~ 0
PWR
Text GLabel 5700 7050 1    50   UnSpc ~ 0
GND
Wire Wire Line
	5700 7300 5700 7050
Wire Wire Line
	5400 7000 5400 7200
$Comp
L power:GND #PWR02
U 1 1 60B48152
P 5700 7300
F 0 "#PWR02" H 5700 7050 50  0001 C CNN
F 1 "GND" H 5705 7127 50  0000 C CNN
F 2 "" H 5700 7300 50  0001 C CNN
F 3 "" H 5700 7300 50  0001 C CNN
	1    5700 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60B4814C
P 5400 7000
F 0 "#PWR01" H 5400 6850 50  0001 C CNN
F 1 "+5V" H 5415 7173 50  0000 C CNN
F 2 "" H 5400 7000 50  0001 C CNN
F 3 "" H 5400 7000 50  0001 C CNN
	1    5400 7000
	1    0    0    -1  
$EndComp
Wire Bus Line
	4250 1950 4450 1950
Wire Bus Line
	4450 1950 4450 2450
Wire Bus Line
	4450 2450 4650 2450
Wire Bus Line
	4650 2600 4450 2600
Wire Bus Line
	4450 2600 4450 2850
Wire Bus Line
	4450 2850 4250 2850
$Sheet
S 6050 900  950  600 
U 60B31EC4
F0 "Instruction Register" 50
F1 "InstructionRegister.sch" 50
F2 "~II" I L 6050 1050 50 
F3 "~IO" I L 6050 1300 50 
F4 "opcode[0..3]" O R 7000 1150 50 
$EndSheet
$Sheet
S 9850 5050 900  650 
U 60B05AFE
F0 "Display" 50
F1 "Display.sch" 50
F2 "OI" I L 9850 5400 50 
$EndSheet
$Sheet
S 8150 850  800  3000
U 60B4BAE7
F0 "PC Control Signals and Logic" 50
F1 "PC.sch" 50
F2 "opcode[0..3]" I L 8150 1150 50 
F3 "~T5" O R 8950 3700 50 
F4 "HLT" O R 8950 1000 50 
F5 "WE" O R 8950 1150 50 
F6 "SUB" O R 8950 2350 50 
F7 "CE" O R 8950 2650 50 
F8 "OI" O R 8950 2500 50 
F9 "~OE" O R 8950 1300 50 
F10 "~MI" O R 8950 1450 50 
F11 "~AI" O R 8950 1600 50 
F12 "~BI" O R 8950 1750 50 
F13 "~AO" O R 8950 1900 50 
F14 "~BO" O R 8950 2050 50 
F15 "~EO" O R 8950 2200 50 
F16 "~J" O R 8950 2800 50 
F17 "~CO" O R 8950 2950 50 
F18 "~II" O R 8950 3100 50 
F19 "~IO" O R 8950 3250 50 
F20 "~FI" O R 8950 3400 50 
F21 "FZ" I L 8150 2500 50 
F22 "FC" I L 8150 2300 50 
$EndSheet
Text Label 8950 1000 0    50   ~ 0
HLT
Text Label 8950 1150 0    50   ~ 0
WE
Text Label 8950 1300 0    50   ~ 0
~OE
Text Label 8950 1450 0    50   ~ 0
~MI
Text Label 8950 1600 0    50   ~ 0
~AI
Text Label 8950 1750 0    50   ~ 0
~BI
Text Label 8950 1900 0    50   ~ 0
~AO
Text Label 8950 2050 0    50   ~ 0
~BO
Text Label 8950 2200 0    50   ~ 0
~EO
Text Label 8950 2350 0    50   ~ 0
SUB
Text Label 8950 2500 0    50   ~ 0
OI
Text Label 8950 2650 0    50   ~ 0
CE
Text Label 8950 2800 0    50   ~ 0
~J
Text Label 8950 2950 0    50   ~ 0
~CO
Text Label 8950 3100 0    50   ~ 0
~II
Text Label 8950 3250 0    50   ~ 0
~IO
Text Label 8950 3400 0    50   ~ 0
~FI
Text Label 4650 2150 2    50   ~ 0
SUB
Text Label 4650 2300 2    50   ~ 0
~EO
Text Label 3550 1800 2    50   ~ 0
~AI
Text Label 3550 2050 2    50   ~ 0
~AO
Text Label 3550 2700 2    50   ~ 0
~BI
Text Label 3550 2950 2    50   ~ 0
~BO
Text Label 1650 2300 2    50   ~ 0
HLT
Text Label 2300 5550 2    50   ~ 0
~J
Text Label 2300 5350 2    50   ~ 0
CE
Text Label 2300 5150 2    50   ~ 0
~CO
Text Label 9850 5400 2    50   ~ 0
OI
Text Label 6050 1050 2    50   ~ 0
~II
Text Label 6050 1300 2    50   ~ 0
~IO
Wire Bus Line
	7000 1150 8150 1150
$Sheet
S 6050 2100 950  550 
U 60B6B740
F0 "Flag Register" 50
F1 "FlagRegister.sch" 50
F2 "~FI" I L 6050 2200 50 
F3 "FLAG_C" I L 6050 2350 50 
F4 "FLAG_Z" I L 6050 2500 50 
F5 "FC" O R 7000 2300 50 
F6 "FZ" O R 7000 2500 50 
$EndSheet
Wire Wire Line
	7000 2300 8150 2300
Wire Wire Line
	8150 2500 7000 2500
$Sheet
S 9800 3000 1100 1000
U 60B7085A
F0 "Reset Module" 50
F1 "Reset.sch" 50
F2 "~T5" I L 9800 3700 50 
$EndSheet
Wire Wire Line
	8950 3700 9800 3700
Text Label 6050 2200 2    50   ~ 0
FI
Wire Wire Line
	5500 2350 6050 2350
Wire Wire Line
	5500 2500 6050 2500
Text Label 6050 5500 2    50   ~ 0
WE
Text Label 6050 5150 2    50   ~ 0
~OE
$Sheet
S 6050 4900 1250 900 
U 60BBE402
F0 "Memory" 50
F1 "Memory.sch" 50
F2 "~OE" I L 6050 5150 50 
F3 "WE" I L 6050 5500 50 
$EndSheet
$Sheet
S 2300 4950 950  750 
U 60B8B8A3
F0 "Program Counter" 50
F1 "ProgramCounter.sch" 50
F2 "~CO" I L 2300 5100 50 
F3 "CE" I L 2300 5300 50 
F4 "~J" I L 2300 5500 50 
$EndSheet
Wire Notes Line
	3250 1350 3250 3350
Wire Notes Line
	3250 3350 4400 3350
Wire Notes Line
	4400 3350 4400 1350
Wire Notes Line
	4400 1350 3250 1350
Text Notes 3700 1300 0    50   ~ 10
Registers\n
$EndSCHEMATC
