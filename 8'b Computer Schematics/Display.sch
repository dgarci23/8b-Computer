EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
Title "Output Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Display_Character:HDSP-A153 U38
U 1 1 60B088D9
P 8150 4500
F 0 "U38" H 8150 5167 50  0000 C CNN
F 1 "HDSP-A153" H 8150 5076 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 8150 3950 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 7750 5050 50  0001 C CNN
	1    8150 4500
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-A153 U40
U 1 1 60B08F75
P 9400 4500
F 0 "U40" H 9400 5167 50  0000 C CNN
F 1 "HDSP-A153" H 9400 5076 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 9400 3950 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 9000 5050 50  0001 C CNN
	1    9400 4500
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-A153 U41
U 1 1 60B0973D
P 10550 4500
F 0 "U41" H 10550 5167 50  0000 C CNN
F 1 "HDSP-A153" H 10550 5076 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 10550 3950 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 10150 5050 50  0001 C CNN
	1    10550 4500
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:SST39SF010 U35
U 1 1 60B0A948
P 5800 3900
F 0 "U35" H 5650 5250 50  0000 C CNN
F 1 "SST39SF010" H 6050 5250 50  0000 C CNN
F 2 "" H 5800 4200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 5800 4200 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U39
U 1 1 60B0E105
P 8600 2550
F 0 "U39" H 8450 3250 50  0000 C CNN
F 1 "74LS273" H 8800 3250 50  0000 C CNN
F 2 "" H 8600 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 8600 2550 50  0001 C CNN
	1    8600 2550
	1    0    0    -1  
$EndComp
Text GLabel 8600 3350 3    50   UnSpc ~ 0
GND
Text GLabel 8600 1750 1    50   Input ~ 0
PWR
$Comp
L 74xx:74LS107 U33
U 1 1 60B11692
P 2650 2950
F 0 "U33" H 2650 3317 50  0000 C CNN
F 1 "74LS107" H 2650 3226 50  0000 C CNN
F 2 "" H 2650 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS107" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS107 U33
U 2 1 60B11F30
P 2700 4200
F 0 "U33" H 2700 4567 50  0000 C CNN
F 1 "74LS107" H 2700 4476 50  0000 C CNN
F 2 "" H 2700 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS107" H 2700 4200 50  0001 C CNN
	2    2700 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS107 U33
U 3 1 60B12B91
P 2200 5250
F 0 "U33" H 2430 5296 50  0000 L CNN
F 1 "74LS107" H 2430 5205 50  0000 L CNN
F 2 "" H 2200 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS107" H 2200 5250 50  0001 C CNN
	3    2200 5250
	1    0    0    -1  
$EndComp
Text GLabel 1450 1150 1    50   Input ~ 0
PWR
Text GLabel 1450 1950 3    50   UnSpc ~ 0
GND
Text GLabel 2200 4850 1    50   Input ~ 0
PWR
Text GLabel 2200 5650 3    50   UnSpc ~ 0
GND
Text GLabel 3900 4250 3    50   UnSpc ~ 0
GND
Text GLabel 3900 2950 1    50   Input ~ 0
PWR
Text GLabel 5800 2600 1    50   Input ~ 0
PWR
Text GLabel 5800 5100 3    50   UnSpc ~ 0
GND
NoConn ~ 5200 4400
NoConn ~ 5200 4500
Text Label 7850 4200 2    50   ~ 0
disp0
Text Label 7850 4300 2    50   ~ 0
disp1
Text Label 7850 4400 2    50   ~ 0
disp2
Text Label 7850 4500 2    50   ~ 0
disp3
Text Label 7850 4600 2    50   ~ 0
disp4
Text Label 7850 4700 2    50   ~ 0
disp5
Text Label 7850 4800 2    50   ~ 0
disp6
Text Label 7850 4900 2    50   ~ 0
disp7
Text Label 9100 4200 2    50   ~ 0
disp0
Text Label 9100 4300 2    50   ~ 0
disp1
Text Label 9100 4400 2    50   ~ 0
disp2
Text Label 9100 4500 2    50   ~ 0
disp3
Text Label 9100 4600 2    50   ~ 0
disp4
Text Label 9100 4700 2    50   ~ 0
disp5
Text Label 9100 4800 2    50   ~ 0
disp6
Text Label 9100 4900 2    50   ~ 0
disp7
Text Label 10250 4200 2    50   ~ 0
disp0
Text Label 10250 4300 2    50   ~ 0
disp1
Text Label 10250 4400 2    50   ~ 0
disp2
Text Label 10250 4500 2    50   ~ 0
disp3
Text Label 10250 4600 2    50   ~ 0
disp4
Text Label 10250 4700 2    50   ~ 0
disp5
Text Label 10250 4800 2    50   ~ 0
disp6
Text Label 10250 4900 2    50   ~ 0
disp7
Text GLabel 5200 4700 0    50   Input ~ 0
PWR
Text GLabel 5150 4100 0    50   UnSpc ~ 0
GND
Wire Wire Line
	5200 4100 5200 4200
Connection ~ 5200 4200
Text GLabel 8100 3050 0    50   Input ~ 0
RST
Text GLabel 7300 2850 0    50   Input ~ 0
CLK
Text GLabel 4950 2700 0    50   UnSpc ~ 0
GND
Text Label 9100 2050 0    50   ~ 0
disp0
Text Label 9100 2150 0    50   ~ 0
disp1
Text Label 9100 2250 0    50   ~ 0
disp2
Text Label 9100 2350 0    50   ~ 0
disp3
Text Label 9100 2450 0    50   ~ 0
disp4
Text Label 9100 2550 0    50   ~ 0
disp5
Text Label 9100 2650 0    50   ~ 0
disp6
Text Label 9100 2750 0    50   ~ 0
disp7
Text Label 5200 2800 2    50   ~ 0
disp0
Text Label 5200 2900 2    50   ~ 0
disp1
Text Label 5200 3000 2    50   ~ 0
disp2
Text Label 5200 3100 2    50   ~ 0
disp3
Text Label 5200 3200 2    50   ~ 0
disp4
Text Label 5200 3300 2    50   ~ 0
disp5
Text Label 5200 3400 2    50   ~ 0
disp6
Text Label 5200 3500 2    50   ~ 0
disp7
Wire Wire Line
	4950 2700 5200 2700
Wire Wire Line
	5200 4900 5200 4950
Wire Wire Line
	5200 4950 5150 4950
Connection ~ 5200 4950
Wire Wire Line
	5200 4950 5200 5000
Text GLabel 5150 4950 0    50   UnSpc ~ 0
GND
Text Label 6400 2700 0    50   ~ 0
disp0
Text Label 6400 2800 0    50   ~ 0
disp1
Text Label 6400 2900 0    50   ~ 0
disp2
Text Label 6400 3000 0    50   ~ 0
disp3
Text Label 6400 3100 0    50   ~ 0
disp4
Text Label 6400 3200 0    50   ~ 0
disp5
Text Label 6400 3300 0    50   ~ 0
disp6
Text Label 6400 3400 0    50   ~ 0
disp7
Connection ~ 5200 4100
Wire Wire Line
	5200 4000 5200 4100
Wire Wire Line
	5200 3900 5200 4000
Connection ~ 5200 4000
Text GLabel 5200 3800 0    50   Input ~ 0
PWR
Text Label 5200 3600 2    50   ~ 0
demux0
Text Label 5200 3700 2    50   ~ 0
demux1
Wire Wire Line
	5200 4200 5200 4300
Wire Wire Line
	5150 4100 5200 4100
Text GLabel 2650 3250 3    50   Input ~ 0
PWR
Text Label 2350 2950 2    50   ~ 0
innerCLK
Text GLabel 2400 4300 0    50   Input ~ 0
PWR
Text GLabel 2700 4500 3    50   Input ~ 0
PWR
Text GLabel 2400 4100 0    50   Input ~ 0
PWR
Wire Wire Line
	2950 2850 3000 2850
Wire Wire Line
	3000 2850 3000 3600
Wire Wire Line
	3000 3600 2100 3600
Wire Wire Line
	2100 3600 2100 4200
Wire Wire Line
	2100 4200 2400 4200
Text GLabel 2350 3050 0    50   Input ~ 0
PWR
$Comp
L 74xx:74LS138 U34
U 1 1 60B2035D
P 3900 3550
F 0 "U34" H 3750 4050 50  0000 C CNN
F 1 "74LS138" H 4100 4050 50  0000 C CNN
F 2 "" H 3900 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3900 3550 50  0001 C CNN
	1    3900 3550
	1    0    0    -1  
$EndComp
NoConn ~ 3400 3250
NoConn ~ 3400 3350
NoConn ~ 3400 3450
NoConn ~ 3400 3750
NoConn ~ 3400 3850
NoConn ~ 3400 3950
Text Label 3000 2850 0    50   ~ 0
demux0
Text Label 3000 4100 0    50   ~ 0
demux1
Text Label 4400 3350 0    50   ~ 0
demux0
Text Label 4400 3450 0    50   ~ 0
demux1
Text GLabel 4450 3150 1    50   UnSpc ~ 0
GND
Wire Wire Line
	4400 3250 4450 3250
Wire Wire Line
	4450 3250 4450 3150
NoConn ~ 4400 3950
Text Label 4400 3550 0    50   ~ 0
units
Text Label 4400 3650 0    50   ~ 0
tens
Text Label 4400 3750 0    50   ~ 0
hundreds
Text Label 4400 3850 0    50   ~ 0
sign
NoConn ~ 10900 4900
NoConn ~ 9700 4900
NoConn ~ 8450 4900
NoConn ~ 7300 4900
Text Label 10850 4800 0    50   ~ 0
units
Text Label 9700 4800 0    50   ~ 0
tens
Text Label 8450 4800 0    50   ~ 0
hundreds
Text Label 7300 4800 0    50   ~ 0
sign
Text Label 6700 4900 2    50   ~ 0
disp7
Text Label 6700 4800 2    50   ~ 0
disp6
Text Label 6700 4700 2    50   ~ 0
disp5
Text Label 6700 4600 2    50   ~ 0
disp4
Text Label 6700 4500 2    50   ~ 0
disp3
Text Label 6700 4400 2    50   ~ 0
disp2
Text Label 6700 4300 2    50   ~ 0
disp1
Text Label 6700 4200 2    50   ~ 0
disp0
$Comp
L Display_Character:HDSP-A153 U36
U 1 1 60B07E30
P 7000 4500
F 0 "U36" H 7000 5167 50  0000 C CNN
F 1 "HDSP-A153" H 7000 5076 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 7000 3950 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 6600 5050 50  0001 C CNN
	1    7000 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U37
U 1 1 60B358EA
P 7600 2950
F 0 "U37" H 7600 3275 50  0000 C CNN
F 1 "74LS08" H 7600 3184 50  0000 C CNN
F 2 "" H 7600 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7600 2950 50  0001 C CNN
	1    7600 2950
	1    0    0    -1  
$EndComp
Text HLabel 7300 3050 0    50   Input ~ 0
OI
Wire Wire Line
	7900 2950 8100 2950
Text GLabel 8100 2050 0    50   Input ~ 0
bus0
Text GLabel 8100 2150 0    50   Input ~ 0
bus1
Text GLabel 8100 2250 0    50   Input ~ 0
bus2
Text GLabel 8100 2350 0    50   Input ~ 0
bus3
Text GLabel 8100 2450 0    50   Input ~ 0
bus4
Text GLabel 8100 2550 0    50   Input ~ 0
bus5
Text GLabel 8100 2650 0    50   Input ~ 0
bus6
Text GLabel 8100 2750 0    50   Input ~ 0
bus7
$Comp
L 74xx:74LS08 U44
U 5 1 60B3AAA2
P 7000 1650
F 0 "U44" H 7230 1696 50  0000 L CNN
F 1 "74LS08" H 7230 1605 50  0000 L CNN
F 2 "" H 7000 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7000 1650 50  0001 C CNN
	5    7000 1650
	1    0    0    -1  
$EndComp
Text GLabel 7000 1150 1    50   Input ~ 0
PWR
Text GLabel 7000 2150 3    50   UnSpc ~ 0
GND
Text Label 1950 1350 0    50   ~ 0
innerCLK
Wire Wire Line
	950  1350 700  1350
Wire Wire Line
	700  1350 700  2650
Wire Wire Line
	700  2650 2300 2650
Wire Wire Line
	2300 2650 2300 1750
Wire Wire Line
	2300 1750 1950 1750
$Comp
L Timer:LM555xN U32
U 1 1 60B13620
P 1450 1550
F 0 "U32" H 1300 1950 50  0000 C CNN
F 1 "LM555xN" H 1700 1950 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2100 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2300 1150 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
Text GLabel 950  1750 0    50   Input ~ 0
PWR
$Comp
L Device:C C6
U 1 1 60B3EADE
P 3050 1600
F 0 "C6" H 3165 1646 50  0000 L CNN
F 1 "100p" H 3165 1555 50  0000 L CNN
F 2 "" H 3088 1450 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
	1    3050 1600
	1    0    0    -1  
$EndComp
Text GLabel 3050 1750 3    50   UnSpc ~ 0
GND
Text Label 3050 1450 0    50   ~ 0
coupling
Text Label 950  1550 2    50   ~ 0
coupling
$Comp
L Device:R R7
U 1 1 60B401DC
P 2300 1600
F 0 "R7" H 2370 1646 50  0000 L CNN
F 1 "10k" H 2370 1555 50  0000 L CNN
F 2 "" V 2230 1600 50  0001 C CNN
F 3 "~" H 2300 1600 50  0001 C CNN
	1    2300 1600
	1    0    0    -1  
$EndComp
Connection ~ 2300 1750
Wire Wire Line
	1950 1550 1950 1450
Wire Wire Line
	1950 1450 2300 1450
$Comp
L Device:R R8
U 1 1 60B41400
P 2450 1450
F 0 "R8" V 2243 1450 50  0000 C CNN
F 1 "1k" V 2334 1450 50  0000 C CNN
F 2 "" V 2380 1450 50  0001 C CNN
F 3 "~" H 2450 1450 50  0001 C CNN
	1    2450 1450
	0    1    1    0   
$EndComp
Connection ~ 2300 1450
Text GLabel 2600 1450 2    50   Input ~ 0
PWR
Text GLabel 1900 2850 0    50   Input ~ 0
PWR
Wire Wire Line
	1900 2850 2350 2850
NoConn ~ 2950 3050
NoConn ~ 3000 4300
$EndSCHEMATC
