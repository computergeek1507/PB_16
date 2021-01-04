EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface:AM26LV32xD U4
U 1 1 5FF2F601
P 5350 4300
F 0 "U4" H 4950 5400 50  0000 C CNN
F 1 "AM26LV32xD" H 5000 5300 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6350 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/am26lv32.pdf" H 5350 3900 50  0001 C CNN
	1    5350 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J13
U 1 1 5E069C26
P 2100 5300
F 0 "J13" V 2111 5830 50  0000 L CNN
F 1 "RJ45" V 2202 5830 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 2100 5325 50  0001 C CNN
F 3 "~" V 2100 5325 50  0001 C CNN
F 4 "AE10392-ND" H 2100 5300 50  0001 C CNN "Digi-Key_PN"
F 5 "A-2014-2-4-R" H 2100 5300 50  0001 C CNN "MPN"
	1    2100 5300
	1    0    0    1   
$EndComp
Text GLabel 5850 3600 2    50   Input ~ 0
OUT1
Text GLabel 5850 4700 2    50   Input ~ 0
OUT3
Text GLabel 5850 3900 2    50   Input ~ 0
OUT2
Text GLabel 5850 5000 2    50   Input ~ 0
OUT4
$Comp
L Device:R_Pack04_SIP RN4
U 1 1 5E06D177
P 2350 3850
F 0 "RN4" H 2938 3877 50  0000 L CNN
F 1 "120" H 2938 3786 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 3025 3850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2350 3850 50  0001 C CNN
F 4 "4608X-2-121LF-ND" H 2350 3850 50  0001 C CNN "Digi-Key_PN"
F 5 "4608X-102-121LF" H 2350 3850 50  0001 C CNN "MPN"
	1    2350 3850
	0    -1   1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5FF93F5C
P 6100 3000
F 0 "C4" H 6215 3046 50  0000 L CNN
F 1 "0.1uF" H 6215 2955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6138 2850 50  0001 C CNN
F 3 "~" H 6100 3000 50  0001 C CNN
F 4 "478-7336-1-ND" H 6100 3000 50  0001 C CNN "Digi-Key_PN"
F 5 "SR215C104KARTR1" H 6100 3000 50  0001 C CNN "MPN"
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF93F5D
P 6100 3150
AR Path="/5FF93F5D" Ref="#PWR?"  Part="1" 
AR Path="/5E06688B/5FF93F5D" Ref="#PWR024"  Part="1" 
AR Path="/5FF2F4B6/5FF93F5D" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6100 2900 50  0001 C CNN
F 1 "GND" H 6105 2977 50  0000 C CNN
F 2 "" H 6100 3150 50  0001 C CNN
F 3 "" H 6100 3150 50  0001 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
Text GLabel 2500 5000 2    50   Input ~ 0
Serial1_P
Text GLabel 2500 5100 2    50   Input ~ 0
Serial1_N
Text GLabel 2500 5200 2    50   Input ~ 0
Serial2_P
Text GLabel 2500 5500 2    50   Input ~ 0
Serial2_N
Text GLabel 2500 5600 2    50   Input ~ 0
Serial4_P
Text GLabel 2500 5700 2    50   Input ~ 0
Serial4_N
Text GLabel 2500 5300 2    50   Input ~ 0
Serial3_N
Text GLabel 2500 5400 2    50   Input ~ 0
Serial3_P
Text GLabel 2550 3350 2    50   Input ~ 0
Serial1_P
Text GLabel 2550 3450 2    50   Input ~ 0
Serial1_N
Text GLabel 2550 3650 2    50   Input ~ 0
Serial2_P
Text GLabel 2550 3750 2    50   Input ~ 0
Serial2_N
Text GLabel 2550 4250 2    50   Input ~ 0
Serial4_P
Text GLabel 2550 4350 2    50   Input ~ 0
Serial4_N
Text GLabel 2550 4050 2    50   Input ~ 0
Serial3_N
Text GLabel 2550 3950 2    50   Input ~ 0
Serial3_P
$Comp
L power:+3.3V #PWR047
U 1 1 5FF74D65
P 6100 2850
F 0 "#PWR047" H 6100 2700 50  0001 C CNN
F 1 "+3.3V" H 6115 3023 50  0000 C CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR046
U 1 1 5FF755D5
P 5350 3300
F 0 "#PWR046" H 5350 3150 50  0001 C CNN
F 1 "+3.3V" H 5550 3350 50  0000 C CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
Text GLabel 4850 3500 0    50   Input ~ 0
Serial1_P
Text GLabel 4850 3700 0    50   Input ~ 0
Serial1_N
Text GLabel 4850 3800 0    50   Input ~ 0
Serial2_P
Text GLabel 4850 4000 0    50   Input ~ 0
Serial2_N
Text GLabel 4850 4900 0    50   Input ~ 0
Serial4_P
Text GLabel 4850 5100 0    50   Input ~ 0
Serial4_N
Text GLabel 4850 4800 0    50   Input ~ 0
Serial3_N
Text GLabel 4850 4600 0    50   Input ~ 0
Serial3_P
$Comp
L power:GND #PWR?
U 1 1 5FF8E10A
P 4850 4400
AR Path="/5FF8E10A" Ref="#PWR?"  Part="1" 
AR Path="/5E06688B/5FF8E10A" Ref="#PWR?"  Part="1" 
AR Path="/5FF2F4B6/5FF8E10A" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 4850 4150 50  0001 C CNN
F 1 "GND" V 4850 4150 50  0000 C CNN
F 2 "" H 4850 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0001 C CNN
	1    4850 4400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR044
U 1 1 5FF8E7F2
P 4850 4200
F 0 "#PWR044" H 4850 4050 50  0001 C CNN
F 1 "+3.3V" V 4850 4450 50  0000 C CNN
F 2 "" H 4850 4200 50  0001 C CNN
F 3 "" H 4850 4200 50  0001 C CNN
	1    4850 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6054377E
P 5350 5300
AR Path="/6054377E" Ref="#PWR?"  Part="1" 
AR Path="/5E06688B/6054377E" Ref="#PWR?"  Part="1" 
AR Path="/5FF2F4B6/6054377E" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 5350 5050 50  0001 C CNN
F 1 "GND" H 5355 5127 50  0000 C CNN
F 2 "" H 5350 5300 50  0001 C CNN
F 3 "" H 5350 5300 50  0001 C CNN
	1    5350 5300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
