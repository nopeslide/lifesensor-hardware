EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "esp32_devkitc_main"
Date "2020-08-25"
Rev "0"
Comp "Cadus e.V."
Comment1 "n.p.: not placed"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L esp32_devkitc_main:+5VA #PWR01
U 1 1 580C1B61
P 15150 1500
F 0 "#PWR01" H 15150 1350 50  0001 C CNN
F 1 "+5VA" H 15150 1650 50  0000 C CNN
F 2 "" H 15150 1500 50  0000 C CNN
F 3 "" H 15150 1500 50  0000 C CNN
	1    15150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 1500 15150 1550
Wire Wire Line
	15150 1550 14100 1550
Wire Wire Line
	15500 1650 14100 1650
$Comp
L esp32_devkitc_main:GND #PWR02
U 1 1 580C1D11
P 14200 3600
F 0 "#PWR02" H 14200 3350 50  0001 C CNN
F 1 "GND" H 14200 3450 50  0000 C CNN
F 2 "" H 14200 3600 50  0000 C CNN
F 3 "" H 14200 3600 50  0000 C CNN
	1    14200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 1750 14200 2150
Wire Wire Line
	14200 3150 14100 3150
Wire Wire Line
	14200 2950 14100 2950
Connection ~ 14200 3150
Wire Wire Line
	14200 2450 14100 2450
Connection ~ 14200 2950
Wire Wire Line
	14200 2150 14100 2150
Connection ~ 14200 2450
$Comp
L esp32_devkitc_main:GND #PWR03
U 1 1 580C1E01
P 13500 3600
F 0 "#PWR03" H 13500 3350 50  0001 C CNN
F 1 "GND" H 13500 3450 50  0000 C CNN
F 2 "" H 13500 3600 50  0000 C CNN
F 3 "" H 13500 3600 50  0000 C CNN
	1    13500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 3450 13600 3450
Wire Wire Line
	13500 1950 13500 2750
Wire Wire Line
	13500 2750 13600 2750
Connection ~ 13500 3450
Wire Wire Line
	12100 2350 13600 2350
Wire Wire Line
	12450 1550 13600 1550
Wire Wire Line
	12450 1500 12450 1550
$Comp
L esp32_devkitc_main:+3.3VA #PWR04
U 1 1 580C1BC1
P 12450 1500
F 0 "#PWR04" H 12450 1350 50  0001 C CNN
F 1 "+3.3VA" H 12450 1650 50  0000 C CNN
F 2 "" H 12450 1500 50  0000 C CNN
F 3 "" H 12450 1500 50  0000 C CNN
	1    12450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 1950 13600 1950
Connection ~ 13500 2750
Wire Wire Line
	13600 1650 12450 1650
Wire Wire Line
	12450 1750 13600 1750
Wire Wire Line
	13600 2050 12450 2050
Wire Wire Line
	12450 2150 13600 2150
Wire Wire Line
	12450 2250 13600 2250
Wire Wire Line
	13600 2450 12450 2450
Wire Wire Line
	12450 2550 13600 2550
Wire Wire Line
	12450 2650 13600 2650
Wire Wire Line
	14100 3250 15150 3250
Wire Wire Line
	14100 3350 15150 3350
Wire Wire Line
	14100 2850 15150 2850
Wire Wire Line
	14100 2550 15300 2550
Wire Wire Line
	14100 2650 15300 2650
Wire Wire Line
	14100 2250 15150 2250
Wire Wire Line
	14100 2350 15150 2350
Wire Wire Line
	14100 1950 15150 1950
Wire Wire Line
	14100 2050 15150 2050
Wire Wire Line
	14100 1850 15150 1850
Wire Wire Line
	14100 3050 15150 3050
Text Label 12450 1650 0    50   ~ 0
SENS_SDA
Text Label 12450 1750 0    50   ~ 0
SENS_SCL
Text Label 12450 1850 0    50   ~ 0
SENS_INT_BPM
Text Label 12450 2050 0    50   ~ 0
SENS_INT_ECG
Text Label 12450 2150 0    50   ~ 0
SENS_START
Text Label 12450 2250 0    50   ~ 0
~SENS_RST_BPM
Text Label 12450 2450 0    50   ~ 0
SENS_MOSI
Text Label 12450 2550 0    50   ~ 0
SENS_MISO
Text Label 12450 2650 0    50   ~ 0
SENS_SCLK
Text Label 15150 3350 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 15150 3250 2    50   ~ 0
GPIO16
Text Label 15150 3050 2    50   ~ 0
GPIO12(PWM0)
Text Label 15150 2850 2    50   ~ 0
ID_SC
Text Label 15150 2750 2    50   ~ 0
~SENS_CS_SPO2
Text Label 15150 2650 2    50   ~ 0
~SENS_CS_ECG
Text Label 15150 2550 2    50   ~ 0
~SENS_CS_BPM
Text Label 15150 2350 2    50   ~ 0
~SENS_RST_SPO2
Text Label 15150 2250 2    50   ~ 0
~SENS_RST_ECG
Text Label 15150 2050 2    50   ~ 0
SENS_INT_SPO2
Text Label 15150 1950 2    50   ~ 0
SENS_GPIO1
Text Label 15150 1850 2    50   ~ 0
SENS_GPIO0
Wire Wire Line
	14200 1750 14100 1750
Connection ~ 14200 2150
Text Notes 12150 5000 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L esp32_devkitc_main:MountingHole MK1
U 1 1 5834FB2E
P 12450 5700
F 0 "MK1" H 12550 5746 50  0000 L CNN
F 1 "M2.5" H 12550 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 12450 5700 60  0001 C CNN
F 3 "" H 12450 5700 60  0001 C CNN
	1    12450 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK3
U 1 1 5834FBEF
P 13950 5700
F 0 "MK3" H 14050 5746 50  0000 L CNN
F 1 "M2.5" H 14050 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 5700 60  0001 C CNN
F 3 "" H 13950 5700 60  0001 C CNN
	1    13950 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK2
U 1 1 5834FC19
P 12450 5950
F 0 "MK2" H 12550 5996 50  0000 L CNN
F 1 "M2.5" H 12550 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 12450 5950 60  0001 C CNN
F 3 "" H 12450 5950 60  0001 C CNN
	1    12450 5950
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK4
U 1 1 5834FC4F
P 13950 5950
F 0 "MK4" H 14050 5996 50  0000 L CNN
F 1 "M2.5" H 14050 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 5950 60  0001 C CNN
F 3 "" H 13950 5950 60  0001 C CNN
	1    13950 5950
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 13800 2450
F 0 "P1" H 13850 3567 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 13850 3476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 8950 1500 50  0001 C CNN
F 3 "" H 8950 1500 50  0001 C CNN
	1    13800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 3450 15150 3450
Text Label 15150 3450 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	14200 3150 14200 3600
Wire Wire Line
	14200 2950 14200 3150
Wire Wire Line
	14200 2450 14200 2950
Wire Wire Line
	13500 3450 13500 3600
Wire Wire Line
	13500 2750 13500 3450
Wire Wire Line
	14200 2150 14200 2450
$Comp
L esp32_devkitc_main:+5VD #PWR0101
U 1 1 5EA6E5C1
P 15500 1500
F 0 "#PWR0101" H 15500 1350 50  0001 C CNN
F 1 "+5VD" H 15500 1650 50  0000 C CNN
F 2 "" H 15500 1500 50  0001 C CNN
F 3 "" H 15500 1500 50  0001 C CNN
	1    15500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 1500 15500 1650
$Comp
L esp32_devkitc_main:+3.3V #PWR0102
U 1 1 5EA72FFE
P 12100 1500
F 0 "#PWR0102" H 12100 1350 50  0001 C CNN
F 1 "+3.3V" H 12100 1650 50  0000 C CNN
F 2 "" H 12100 1500 50  0001 C CNN
F 3 "" H 12100 1500 50  0001 C CNN
	1    12100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 1500 12100 2350
Text Label 12450 1550 0    50   ~ 0
SENS_3V3_ANA
Text Label 15150 1550 2    50   ~ 0
SENS_5V_ANA
Text Label 15150 1650 2    50   ~ 0
SENS_5V_DIG
Text Notes 12450 1100 0    50   ~ 0
ATTENTION: max. 30mA for both 3.3V rails together allowed on RPi.
Text Notes 12450 1200 0    50   ~ 0
ATTENTION: max. 300mA for both 5V rails together allowed on RPi.
Text Label 12450 3350 0    50   ~ 0
GPIO26
Text Label 12450 3250 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 12450 3150 0    50   ~ 0
GPIO13(PWM1)
Text Label 12450 3050 0    50   ~ 0
GPIO6
Text Label 12450 2950 0    50   ~ 0
GPIO5
Text Label 12450 2850 0    50   ~ 0
ID_SD
Wire Wire Line
	12450 3350 13600 3350
Wire Wire Line
	12450 3250 13600 3250
Wire Wire Line
	13600 3150 12450 3150
Wire Wire Line
	12450 3050 13600 3050
Wire Wire Line
	12450 2950 13600 2950
Wire Wire Line
	13600 2850 12450 2850
Text Notes 12450 3950 0    50   ~ 0
Pins 1 to 26 belong to the sensor bus.\nPins 27 to 40 are named according to RPi header pin names.
Wire Wire Line
	12450 1850 13600 1850
Text Notes 14450 800  2    100  ~ 20
Interconnect
Text Notes 14550 5450 2    100  ~ 20
Mounting holes
$Comp
L esp32_devkitc_main:MountingHole MK5
U 1 1 5EABF7F1
P 15450 5700
F 0 "MK5" H 15550 5746 50  0000 L CNN
F 1 "M2.5" H 15550 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 15450 5700 60  0001 C CNN
F 3 "" H 15450 5700 60  0001 C CNN
	1    15450 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK6
U 1 1 5EABF7F7
P 15450 5950
F 0 "MK6" H 15550 5996 50  0000 L CNN
F 1 "M2.5" H 15550 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 15450 5950 60  0001 C CNN
F 3 "" H 15450 5950 60  0001 C CNN
	1    15450 5950
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:R_Small R1
U 1 1 5EA7E07E
P 15400 2550
F 0 "R1" V 15350 2400 50  0000 C CNN
F 1 "n.p." V 15350 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15400 2550 50  0001 C CNN
F 3 "~" H 15400 2550 50  0001 C CNN
	1    15400 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	14100 2750 15300 2750
Wire Wire Line
	15500 2750 15650 2750
Wire Wire Line
	15650 2750 15650 2650
Wire Wire Line
	15500 2550 15650 2550
Connection ~ 15650 2550
Wire Wire Line
	15650 2550 15850 2550
Wire Wire Line
	15500 2650 15650 2650
Connection ~ 15650 2650
Wire Wire Line
	15650 2650 15650 2550
Text Label 15850 2550 2    50   ~ 0
~CS
$Comp
L esp32_devkitc_main:R_Small R2
U 1 1 5EA881A8
P 15400 2650
F 0 "R2" V 15350 2500 50  0000 C CNN
F 1 "n.p." V 15350 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15400 2650 50  0001 C CNN
F 3 "~" H 15400 2650 50  0001 C CNN
	1    15400 2650
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R3
U 1 1 5EA8833D
P 15400 2750
F 0 "R3" V 15350 2600 50  0000 C CNN
F 1 "n.p." V 15350 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15400 2750 50  0001 C CNN
F 3 "~" H 15400 2750 50  0001 C CNN
	1    15400 2750
	0    1    1    0   
$EndComp
Wire Notes Line width 12
	11950 600  15950 600 
Wire Notes Line width 12
	15950 600  15950 5100
Wire Notes Line width 12
	15950 5100 11950 5100
Wire Notes Line width 12
	11950 5100 11950 600 
Wire Notes Line width 12
	15950 5200 15950 6200
Wire Notes Line width 12
	15950 6200 11950 6200
Wire Notes Line width 12
	11950 6200 11950 5200
Wire Notes Line width 12
	11950 5200 15950 5200
$Comp
L esp32_devkitc_main:ESP32-DEVKITC-32D U1
U 1 1 5F45B769
P 6100 6750
F 0 "U1" H 6100 7950 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 6100 7850 50  0000 C CNN
F 2 "lib_footprint:MODULE_ESP32-DEVKITC-32D" H 6100 6750 50  0001 L BNN
F 3 "4" H 6100 6750 50  0001 L BNN
F 4 "Espressif Systems" H 6100 6750 50  0001 L BNN "Field4"
	1    6100 6750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
