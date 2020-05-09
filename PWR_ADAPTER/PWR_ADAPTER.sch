EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Screw Terminal Adapter"
Date "2020-05-09"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS TB1
U 1 1 5EA78A19
P 3855 1935
F 0 "TB1" H 3983 1988 60  0000 L CNN
F 1 "Power In" H 3983 1882 60  0000 L CNN
F 2 "Barrier_Blocks:BARRIER_BLOCK_1ROW_2POS_P9.5MM" H 3855 1935 60  0001 C CNN
F 3 "" H 3855 1935 60  0000 C CNN
	1    3855 1935
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5EA78F8F
P 3065 1835
F 0 "J1" H 2983 2052 50  0000 C CNN
F 1 "Power Out" H 2983 1961 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type701_RT11L02HGLU_1x02_P6.35mm_Horizontal" H 3065 1835 50  0001 C CNN
F 3 "~" H 3065 1835 50  0001 C CNN
	1    3065 1835
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3505 1835 3265 1835
Wire Wire Line
	3265 1935 3265 2035
Wire Wire Line
	3265 2035 3505 2035
Text Label 3300 1835 0    50   ~ 0
Pin1
Text Label 3305 2035 0    50   ~ 0
Pin2
$EndSCHEMATC
