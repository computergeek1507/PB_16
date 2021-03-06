EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Smart Reciver Max"
Date "2021-02-01"
Rev "v1"
Comp "Scott Hanson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5350 5615 635  395 
U 5FF2E2A0
F0 "STM32" 50
F1 "STM32.sch" 50
$EndSheet
$Sheet
S 5485 4780 605  395 
U 5FF2F4B6
F0 "Serial" 50
F1 "Serial.sch" 50
$EndSheet
$Sheet
S 6660 4955 785  535 
U 5FF30D74
F0 "Outputs" 50
F1 "Outputs.sch" 50
$EndSheet
$Comp
L Device:LED D1
U 1 1 5D5B28FD
P 5705 3210
F 0 "D1" H 5698 2955 50  0000 C CNN
F 1 "VIN1 LED" H 5698 3046 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 5705 3210 50  0001 C CNN
F 3 "~" H 5705 3210 50  0001 C CNN
F 4 "754-1217-ND" H 5705 3210 50  0001 C CNN "Digi-Key_PN"
F 5 "WP3A8GD" H 5705 3210 50  0001 C CNN "MPN"
	1    5705 3210
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D5B5731
P 6005 3210
F 0 "R1" V 5798 3210 50  0000 C CNN
F 1 "1K" V 5889 3210 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5935 3210 50  0001 C CNN
F 3 "~" H 6005 3210 50  0001 C CNN
F 4 "CF14JT1K00CT-ND" H 6005 3210 50  0001 C CNN "Digi-Key_PN"
F 5 "CF14JT1K00" H 6005 3210 50  0001 C CNN "MPN"
	1    6005 3210
	0    1    1    0   
$EndComp
Text GLabel 5555 3210 0    50   Input ~ 0
VIN1
$Comp
L power:GND #PWR03
U 1 1 5D5B8087
P 6155 3210
F 0 "#PWR03" H 6155 2960 50  0001 C CNN
F 1 "GND" H 6160 3037 50  0000 C CNN
F 2 "" H 6155 3210 50  0001 C CNN
F 3 "" H 6155 3210 50  0001 C CNN
	1    6155 3210
	1    0    0    -1  
$EndComp
$Comp
L Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS J13
U 1 1 5DF59725
P 4975 2305
F 0 "J13" H 4842 1918 60  0000 C CNN
F 1 "Power In" H 4842 2024 60  0000 C CNN
F 2 "Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS_P9.5MM" H 4975 2305 60  0001 C CNN
F 3 "" H 4975 2305 60  0000 C CNN
F 4 "A98472-ND" H 4975 2305 50  0001 C CNN "Digi-Key_PN"
F 5 "4DB-P108-02" H 4975 2305 50  0001 C CNN "MPN"
	1    4975 2305
	1    0    0    -1  
$EndComp
Text GLabel 4625 2205 0    50   Input ~ 0
VIN1
$Comp
L power:GND #PWR0107
U 1 1 5DF5A904
P 4625 2405
F 0 "#PWR0107" H 4625 2155 50  0001 C CNN
F 1 "GND" H 4630 2232 50  0000 C CNN
F 2 "" H 4625 2405 50  0001 C CNN
F 3 "" H 4625 2405 50  0001 C CNN
	1    4625 2405
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5E06E861
P 6730 1720
F 0 "U1" H 6730 1962 50  0000 C CNN
F 1 "L7805" H 6730 1871 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6755 1570 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6730 1670 50  0001 C CNN
F 4 "MC7805CTGOS-ND" H 6730 1720 50  0001 C CNN "Digi-Key_PN"
F 5 "MC7805CTG" H 6730 1720 50  0001 C CNN "MPN"
	1    6730 1720
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E0AD280
P 6245 1870
F 0 "C1" H 6363 1916 50  0000 L CNN
F 1 "100uF" H 6363 1825 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6283 1720 50  0001 C CNN
F 3 "~" H 6245 1870 50  0001 C CNN
F 4 "493-1103-ND" H 6245 1870 50  0001 C CNN "Digi-Key_PN"
F 5 "UVR1H100MDD" H 6245 1870 50  0001 C CNN "MPN"
	1    6245 1870
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E0ADC88
P 7115 1870
F 0 "C2" H 7233 1916 50  0000 L CNN
F 1 "10uF" H 7233 1825 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7153 1720 50  0001 C CNN
F 3 "~" H 7115 1870 50  0001 C CNN
F 4 "493-1103-ND" H 7115 1870 50  0001 C CNN "Digi-Key_PN"
F 5 "UVR1H100MDD" H 7115 1870 50  0001 C CNN "MPN"
	1    7115 1870
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5E0AE17C
P 6730 2020
F 0 "#PWR020" H 6730 1770 50  0001 C CNN
F 1 "GND" H 6735 1847 50  0000 C CNN
F 2 "" H 6730 2020 50  0001 C CNN
F 3 "" H 6730 2020 50  0001 C CNN
	1    6730 2020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E0AEB98
P 7115 2020
F 0 "#PWR021" H 7115 1770 50  0001 C CNN
F 1 "GND" H 7120 1847 50  0000 C CNN
F 2 "" H 7115 2020 50  0001 C CNN
F 3 "" H 7115 2020 50  0001 C CNN
	1    7115 2020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E0AEEC1
P 6245 2020
F 0 "#PWR019" H 6245 1770 50  0001 C CNN
F 1 "GND" H 6250 1847 50  0000 C CNN
F 2 "" H 6245 2020 50  0001 C CNN
F 3 "" H 6245 2020 50  0001 C CNN
	1    6245 2020
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5E0AFD42
P 7530 1720
F 0 "#PWR022" H 7530 1570 50  0001 C CNN
F 1 "+5V" H 7545 1893 50  0000 C CNN
F 2 "" H 7530 1720 50  0001 C CNN
F 3 "" H 7530 1720 50  0001 C CNN
	1    7530 1720
	1    0    0    -1  
$EndComp
Wire Wire Line
	7030 1720 7115 1720
Connection ~ 7115 1720
Wire Wire Line
	7115 1720 7330 1720
Wire Wire Line
	6430 1720 6245 1720
Connection ~ 6245 1720
Wire Wire Line
	6245 1720 6155 1720
Wire Wire Line
	6155 1720 6155 1640
Text GLabel 5745 1760 0    50   Input ~ 0
VIN2
Wire Wire Line
	5745 1760 6055 1760
Wire Wire Line
	6055 1760 6055 1640
Wire Wire Line
	5955 1640 5790 1640
$Comp
L Connector:Conn_01x03_Male J15
U 1 1 5E0B395F
P 6055 1440
F 0 "J15" V 6117 1584 50  0000 L CNN
F 1 "VIN_Voltage" V 5955 1125 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6055 1440 50  0001 C CNN
F 3 "~" H 6055 1440 50  0001 C CNN
F 4 "732-5316-ND" H 6055 1440 50  0001 C CNN "Digi-Key_PN"
F 5 "61300311121" H 6055 1440 50  0001 C CNN "MPN"
	1    6055 1440
	0    1    1    0   
$EndComp
Text Label 6185 1720 0    50   ~ 0
PWR
$Comp
L Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS J14
U 1 1 5FF98409
P 4895 1405
F 0 "J14" H 4762 1018 60  0000 C CNN
F 1 "Power In" H 4762 1124 60  0000 C CNN
F 2 "Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS_P9.5MM" H 4895 1405 60  0001 C CNN
F 3 "" H 4895 1405 60  0000 C CNN
F 4 "A98472-ND" H 4895 1405 50  0001 C CNN "Digi-Key_PN"
F 5 "4DB-P108-02" H 4895 1405 50  0001 C CNN "MPN"
	1    4895 1405
	1    0    0    1   
$EndComp
Text GLabel 4545 1305 0    50   Input ~ 0
VIN2
$Comp
L power:GND #PWR01
U 1 1 5FF98410
P 4545 1505
F 0 "#PWR01" H 4545 1255 50  0001 C CNN
F 1 "GND" H 4550 1332 50  0000 C CNN
F 2 "" H 4545 1505 50  0001 C CNN
F 3 "" H 4545 1505 50  0001 C CNN
	1    4545 1505
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FF9BB32
P 5640 3775
F 0 "D2" H 5633 3520 50  0000 C CNN
F 1 "VIN2 LED" H 5633 3611 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 5640 3775 50  0001 C CNN
F 3 "~" H 5640 3775 50  0001 C CNN
F 4 "754-1217-ND" H 5640 3775 50  0001 C CNN "Digi-Key_PN"
F 5 "WP3A8GD" H 5640 3775 50  0001 C CNN "MPN"
	1    5640 3775
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF9BB3A
P 5940 3775
F 0 "R2" V 5733 3775 50  0000 C CNN
F 1 "1K" V 5824 3775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5870 3775 50  0001 C CNN
F 3 "~" H 5940 3775 50  0001 C CNN
F 4 "CF14JT1K00CT-ND" H 5940 3775 50  0001 C CNN "Digi-Key_PN"
F 5 "CF14JT1K00" H 5940 3775 50  0001 C CNN "MPN"
	1    5940 3775
	0    1    1    0   
$EndComp
Text GLabel 5490 3775 0    50   Input ~ 0
VIN2
$Comp
L power:GND #PWR07
U 1 1 5FF9BB41
P 6090 3775
F 0 "#PWR07" H 6090 3525 50  0001 C CNN
F 1 "GND" H 6095 3602 50  0000 C CNN
F 2 "" H 6090 3775 50  0001 C CNN
F 3 "" H 6090 3775 50  0001 C CNN
	1    6090 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F13
U 1 1 5FFAF840
P 7430 1720
F 0 "F13" V 7225 1720 50  0000 C CNN
F 1 "500mA" V 7316 1720 50  0000 C CNN
F 2 "Fuse:Fuse_BelFuse_0ZRE0005FF_L8.3mm_W3.8mm" H 7480 1520 50  0001 L CNN
F 3 "~" H 7430 1720 50  0001 C CNN
F 4 "RXEF050-2HFCT-ND" H 7430 1720 50  0001 C CNN "Digi-Key_PN"
F 5 "RXEF050-2" H 7430 1720 50  0001 C CNN "MPN"
	1    7430 1720
	0    1    1    0   
$EndComp
Text GLabel 7210 1720 1    50   Input ~ 0
5IN
Text GLabel 5790 1640 0    50   Input ~ 0
5IN
$Comp
L Mechanical:MountingHole H4
U 1 1 60231C48
P 8500 2750
F 0 "H4" H 8600 2796 50  0000 L CNN
F 1 "MountingHole" H 8600 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8500 2750 50  0001 C CNN
F 3 "~" H 8500 2750 50  0001 C CNN
	1    8500 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 602323BE
P 8500 2500
F 0 "H3" H 8600 2546 50  0000 L CNN
F 1 "MountingHole" H 8600 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8500 2500 50  0001 C CNN
F 3 "~" H 8500 2500 50  0001 C CNN
	1    8500 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 602326D6
P 8500 2000
F 0 "H1" H 8600 2046 50  0000 L CNN
F 1 "MountingHole" H 8600 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8500 2000 50  0001 C CNN
F 3 "~" H 8500 2000 50  0001 C CNN
	1    8500 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60232A6E
P 8500 2250
F 0 "H2" H 8600 2296 50  0000 L CNN
F 1 "MountingHole" H 8600 2205 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8500 2250 50  0001 C CNN
F 3 "~" H 8500 2250 50  0001 C CNN
	1    8500 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
