EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5E1FACCD
P 5750 2500
F 0 "A?" H 5750 3681 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5750 3590 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5750 2500 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L Sensor:DHT11 U?
U 1 1 5E1FF560
P 2200 4350
F 0 "U?" H 1956 4396 50  0000 R CNN
F 1 "DHT11" H 1956 4305 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 2200 3950 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 2350 4600 50  0001 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:LCD-016N002L U?
U 1 1 5E20D9A9
P 5700 5650
F 0 "U?" H 5700 6631 50  0000 C CNN
F 1 "LCD-016N002L" H 5700 6540 50  0000 C CNN
F 2 "Display:LCD-016N002L" H 5720 4730 50  0001 C CNN
F 3 "http://www.vishay.com/docs/37299/37299.pdf" H 6200 5350 50  0001 C CNN
	1    5700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4050 2200 700 
Wire Wire Line
	2200 700  5950 700 
Wire Wire Line
	5950 700  5950 1500
Wire Wire Line
	5700 4850 1900 4850
Wire Wire Line
	1900 4850 1900 700 
Wire Wire Line
	1900 700  2200 700 
Connection ~ 2200 700 
$Comp
L Device:R R15
U 1 1 5E2217DD
P 1500 2550
F 0 "R15" H 1570 2596 50  0000 L CNN
F 1 "R" H 1570 2505 50  0000 L CNN
F 2 "" V 1430 2550 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5350 6300 5350
Wire Wire Line
	6300 5350 6300 7250
Wire Wire Line
	6300 7250 1500 7250
Wire Wire Line
	1500 7250 1500 2700
Wire Wire Line
	1500 2400 1500 700 
Wire Wire Line
	1500 700  1900 700 
Connection ~ 1900 700 
Wire Wire Line
	6100 5450 6550 5450
Wire Wire Line
	6550 5450 6550 3600
Wire Wire Line
	6550 3600 5850 3600
Wire Wire Line
	5850 4650 5850 3600
Wire Wire Line
	2200 4650 5200 4650
Connection ~ 5850 3600
Wire Wire Line
	5300 5150 5250 5150
Wire Wire Line
	5250 5150 5250 4650
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 5850 4650
Wire Wire Line
	5700 6450 5200 6450
Wire Wire Line
	5200 6450 5200 4650
Connection ~ 5200 4650
Wire Wire Line
	5200 4650 5250 4650
Wire Wire Line
	6100 5050 6450 5050
Wire Wire Line
	6450 5050 6450 2600
Wire Wire Line
	6450 2600 6250 2600
Wire Wire Line
	6250 2500 6500 2500
Wire Wire Line
	6500 2500 6500 4350
Wire Wire Line
	6500 4350 2500 4350
Wire Wire Line
	5250 3100 5100 3100
Wire Wire Line
	5100 3100 5100 5250
Wire Wire Line
	5100 5250 5300 5250
Wire Wire Line
	5300 5050 5050 5050
Wire Wire Line
	5050 5050 5050 3000
Wire Wire Line
	5050 3000 5250 3000
Wire Wire Line
	5300 6250 4350 6250
Wire Wire Line
	4350 6250 4350 2100
Wire Wire Line
	4350 2100 5250 2100
Wire Wire Line
	5300 6150 4450 6150
Wire Wire Line
	4450 6150 4450 2200
Wire Wire Line
	4450 2200 5250 2200
Wire Wire Line
	5300 6050 4550 6050
Wire Wire Line
	4550 6050 4550 2300
Wire Wire Line
	4550 2300 5250 2300
Wire Wire Line
	5300 5950 4650 5950
Wire Wire Line
	4650 5950 4650 2400
Wire Wire Line
	4650 2400 5250 2400
$EndSCHEMATC
