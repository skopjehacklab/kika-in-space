EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ab2_7segment
LIBS:ab2_audio
LIBS:ab2_buffer
LIBS:ab2_capacitor
LIBS:ab2_connectivity
LIBS:ab2_dac
LIBS:ab2_diode
LIBS:ab2_gpio_expansion
LIBS:ab2_header
LIBS:ab2_idc
LIBS:ab2_inductor
LIBS:ab2_input_devices
LIBS:ab2_jumper
LIBS:ab2_lcd
LIBS:ab2_led
LIBS:ab2_memory
LIBS:ab2_opamp
LIBS:ab2_pot
LIBS:ab2_power
LIBS:ab2_regulator
LIBS:ab2_relay
LIBS:ab2_resistor
LIBS:ab2_sensor
LIBS:ab2_stepper
LIBS:ab2_supply
LIBS:ab2_terminal_block
LIBS:ab2_test
LIBS:ab2_transistor
LIBS:ab2_uC
LIBS:ab2_usb
LIBS:ab2_xtal
LIBS:video
LIBS:ttl_ieee
LIBS:transf
LIBS:switches
LIBS:supertex
LIBS:stm8
LIBS:stm32
LIBS:silabs
LIBS:sensors
LIBS:rfcom
LIBS:relays
LIBS:references
LIBS:pspice
LIBS:powerint
LIBS:onsemi
LIBS:nxp_armmcu
LIBS:nordicsemi
LIBS:msp430
LIBS:motor_drivers
LIBS:microchip_pic32mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic10mcu
LIBS:microchip_dspic33dsc
LIBS:maxim
LIBS:logo
LIBS:ir
LIBS:hc11
LIBS:graphic
LIBS:gennum
LIBS:ftdi
LIBS:elec-unifil
LIBS:diode
LIBS:dc-dc
LIBS:cmos_ieee
LIBS:brooktre
LIBS:analog_devices
LIBS:actel
LIBS:ac-dc
LIBS:Zilog
LIBS:Xicor
LIBS:Power_Management
LIBS:Oscillators
LIBS:Lattice
LIBS:ESD_Protection
LIBS:Altera
LIBS:74xgxx
LIBS:max
LIBS:relays-a
LIBS:random-mics
LIBS:transistors-mics
LIBS:analog-devices
LIBS:lt
LIBS:altera
LIBS:txs2sa-relay
LIBS:ti
LIBS:opamps
LIBS:conn_mics
LIBS:conn_16_mirror
LIBS:conn_16
LIBS:DS8500-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DS8500 Test PCB"
Date "2016-04-26"
Rev "1.0"
Comp "aleks@slobodensoftver.org.mk"
Comment1 "Aleks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DS8500 U2
U 1 1 571F7B08
P 5950 3300
F 0 "U2" H 6350 2300 60  0000 C CNN
F 1 "DS8500" H 6300 4200 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-20-1EP_5x5mm_Pitch0.65mm" H 5950 3650 60  0001 C CNN
F 3 "" H 5950 3650 60  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 571F7D34
P 5950 4600
F 0 "#PWR01" H 5950 4350 50  0001 C CNN
F 1 "GND" H 5950 4450 50  0000 C CNN
F 2 "" H 5950 4600 50  0000 C CNN
F 3 "" H 5950 4600 50  0000 C CNN
	1    5950 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 571F7ECB
P 5950 2100
F 0 "#PWR02" H 5950 1950 50  0001 C CNN
F 1 "VCC" H 5950 2250 50  0000 C CNN
F 2 "" H 5950 2100 50  0000 C CNN
F 3 "" H 5950 2100 50  0000 C CNN
	1    5950 2100
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 571F7F93
P 4850 2800
F 0 "Y1" H 4850 2900 50  0000 C CNN
F 1 "3.6864MHz" V 5100 2600 50  0000 C CNN
F 2 "w_crystal:crystal_hc-49u" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0000 C CNN
	1    4850 2800
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C3
U 1 1 571F826F
P 4500 2650
F 0 "C3" H 4510 2720 50  0000 L CNN
F 1 "22p" H 4510 2570 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 4500 2650 50  0001 C CNN
F 3 "" H 4500 2650 50  0000 C CNN
	1    4500 2650
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C4
U 1 1 571F835D
P 4500 2950
F 0 "C4" H 4510 3020 50  0000 L CNN
F 1 "22p" H 4510 2870 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0000 C CNN
	1    4500 2950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 571F83A1
P 4250 2800
F 0 "#PWR03" H 4250 2550 50  0001 C CNN
F 1 "GND" H 4250 2650 50  0000 C CNN
F 2 "" H 4250 2800 50  0000 C CNN
F 3 "" H 4250 2800 50  0000 C CNN
	1    4250 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 571F862F
P 5150 3000
F 0 "#PWR04" H 5150 2750 50  0001 C CNN
F 1 "GND" H 5150 2850 50  0000 C CNN
F 2 "" H 5150 3000 50  0000 C CNN
F 3 "" H 5150 3000 50  0000 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3050
$Comp
L C_Small C5
U 1 1 571F86D9
P 6650 3000
F 0 "C5" V 6600 3050 50  0000 L CNN
F 1 "100n" V 6750 2800 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 6650 3000 50  0001 C CNN
F 3 "" H 6650 3000 50  0000 C CNN
	1    6650 3000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 571F877B
P 6850 3000
F 0 "#PWR05" H 6850 2750 50  0001 C CNN
F 1 "GND" H 6850 2850 50  0000 C CNN
F 2 "" H 6850 3000 50  0000 C CNN
F 3 "" H 6850 3000 50  0000 C CNN
	1    6850 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 6500 3750
NoConn ~ 5400 3750
NoConn ~ 5400 3850
$Comp
L VCC #PWR06
U 1 1 571F88B0
P 5100 3600
F 0 "#PWR06" H 5100 3450 50  0001 C CNN
F 1 "VCC" H 5100 3750 50  0000 C CNN
F 2 "" H 5100 3600 50  0000 C CNN
F 3 "" H 5100 3600 50  0000 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 571F8ADE
P 7500 3200
F 0 "JP3" H 7500 3280 50  0000 C CNN
F 1 "Jumper_NO_Small" H 7510 3140 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0000 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 571F8B1B
P 7500 3350
F 0 "C8" V 7450 3400 50  0000 L CNN
F 1 "100n" V 7600 3150 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0000 C CNN
	1    7500 3350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W1
U 1 1 571F8BF5
P 7800 3350
F 0 "W1" V 7900 3500 50  0000 C CNN
F 1 "FSK_OUT" V 7800 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8000 3350 50  0001 C CNN
F 3 "" H 8000 3350 50  0000 C CNN
	1    7800 3350
	0    1    1    0   
$EndComp
$Comp
L C_Small C9
U 1 1 571F8F4A
P 7500 3650
F 0 "C9" V 7450 3700 50  0000 L CNN
F 1 "100n" V 7600 3450 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 7500 3650 50  0001 C CNN
F 3 "" H 7500 3650 50  0000 C CNN
	1    7500 3650
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W2
U 1 1 571F9407
P 7800 4000
F 0 "W2" V 7900 4150 50  0000 C CNN
F 1 "GND" V 7800 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8000 4000 50  0001 C CNN
F 3 "" H 8000 4000 50  0000 C CNN
	1    7800 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 571F946D
P 7650 4100
F 0 "#PWR07" H 7650 3850 50  0001 C CNN
F 1 "GND" H 7650 3950 50  0000 C CNN
F 2 "" H 7650 4100 50  0000 C CNN
F 3 "" H 7650 4100 50  0000 C CNN
	1    7650 4100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 571FA3B5
P 4200 3600
F 0 "R4" H 4230 3620 50  0000 L CNN
F 1 "20k" H 4230 3560 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 4200 3600 50  0001 C CNN
F 3 "" H 4200 3600 50  0000 C CNN
	1    4200 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 571FA3BB
P 4000 3400
F 0 "R3" V 4050 3500 50  0000 L CNN
F 1 "10k" V 3900 3300 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 4000 3400 50  0001 C CNN
F 3 "" H 4000 3400 50  0000 C CNN
	1    4000 3400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 571FA3C1
P 4200 3750
F 0 "#PWR08" H 4200 3500 50  0001 C CNN
F 1 "GND" H 4200 3600 50  0000 C CNN
F 2 "" H 4200 3750 50  0000 C CNN
F 3 "" H 4200 3750 50  0000 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 571FB69A
P 3200 3550
F 0 "#PWR09" H 3200 3300 50  0001 C CNN
F 1 "GND" H 3200 3400 50  0000 C CNN
F 2 "" H 3200 3550 50  0000 C CNN
F 3 "" H 3200 3550 50  0000 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 571FB831
P 2900 2800
F 0 "P1" H 2900 2950 50  0000 C CNN
F 1 "POWER" V 3000 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2900 2800 50  0001 C CNN
F 3 "" H 2900 2800 50  0000 C CNN
	1    2900 2800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 571FB87A
P 3200 2950
F 0 "#PWR010" H 3200 2700 50  0001 C CNN
F 1 "GND" H 3200 2800 50  0000 C CNN
F 2 "" H 3200 2950 50  0000 C CNN
F 3 "" H 3200 2950 50  0000 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 571FB9EE
P 3200 2650
F 0 "#PWR011" H 3200 2500 50  0001 C CNN
F 1 "+5V" H 3200 2790 50  0000 C CNN
F 2 "" H 3200 2650 50  0000 C CNN
F 3 "" H 3200 2650 50  0000 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L AP1117 U1
U 1 1 571FBC3E
P 3800 1800
F 0 "U1" H 3900 1550 50  0000 C CNN
F 1 "AP1117V5" H 3800 2050 50  0000 C CNN
F 2 "w_smd_trans:sot223" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0000 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 571FBE79
P 4200 1700
F 0 "#PWR012" H 4200 1550 50  0001 C CNN
F 1 "VCC" H 4200 1850 50  0000 C CNN
F 2 "" H 4200 1700 50  0000 C CNN
F 3 "" H 4200 1700 50  0000 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 571FBF1F
P 3400 1700
F 0 "#PWR013" H 3400 1550 50  0001 C CNN
F 1 "+5V" H 3400 1840 50  0000 C CNN
F 2 "" H 3400 1700 50  0000 C CNN
F 3 "" H 3400 1700 50  0000 C CNN
	1    3400 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 571FBFAF
P 3800 2200
F 0 "#PWR014" H 3800 1950 50  0001 C CNN
F 1 "GND" H 3800 2050 50  0000 C CNN
F 2 "" H 3800 2200 50  0000 C CNN
F 3 "" H 3800 2200 50  0000 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 571FC257
P 3400 2000
F 0 "C1" H 3410 2070 50  0000 L CNN
F 1 "1u" H 3410 1920 50  0000 L CNN
F 2 "w_smd_cap:c_1206" H 3400 2000 50  0001 C CNN
F 3 "" H 3400 2000 50  0000 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 571FC2BE
P 4200 2000
F 0 "C2" H 4210 2070 50  0000 L CNN
F 1 "1u" H 4210 1920 50  0000 L CNN
F 2 "w_smd_cap:c_1206" H 4200 2000 50  0001 C CNN
F 3 "" H 4200 2000 50  0000 C CNN
	1    4200 2000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 571FD15D
P 7050 4200
F 0 "C7" H 7060 4270 50  0000 L CNN
F 1 "100n" H 7060 4120 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 7050 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0000 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 571FD231
P 6800 4200
F 0 "C6" H 6810 4270 50  0000 L CNN
F 1 "100n" H 6810 4120 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0000 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 571FD283
P 6800 4500
F 0 "#PWR015" H 6800 4250 50  0001 C CNN
F 1 "GND" H 6800 4350 50  0000 C CNN
F 2 "" H 6800 4500 50  0000 C CNN
F 3 "" H 6800 4500 50  0000 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 571FD437
P 6800 4000
F 0 "#PWR016" H 6800 3850 50  0001 C CNN
F 1 "VCC" H 6800 4150 50  0000 C CNN
F 2 "" H 6800 4000 50  0000 C CNN
F 3 "" H 6800 4000 50  0000 C CNN
	1    6800 4000
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 572345F3
P 4200 3350
F 0 "W3" H 4200 3620 50  0000 C CNN
F 1 "FSK_IN" H 4200 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0000 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 57234BE3
P 3650 4350
F 0 "W4" H 3650 4620 50  0000 C CNN
F 1 "GND" H 3650 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 3850 4350 50  0001 C CNN
F 3 "" H 3850 4350 50  0000 C CNN
	1    3650 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57234C50
P 3650 4450
F 0 "#PWR017" H 3650 4200 50  0001 C CNN
F 1 "GND" H 3650 4300 50  0000 C CNN
F 2 "" H 3650 4450 50  0000 C CNN
F 3 "" H 3650 4450 50  0000 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5723CD7B
P 2900 3450
F 0 "P2" H 2900 3600 50  0000 C CNN
F 1 "INTERFACE" V 3000 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2900 3450 50  0001 C CNN
F 3 "" H 2900 3450 50  0000 C CNN
	1    2900 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 4400 5950 4600
Wire Wire Line
	5750 4500 6150 4500
Wire Wire Line
	5750 4500 5750 4400
Wire Wire Line
	6150 4500 6150 4400
Connection ~ 5950 4500
Wire Wire Line
	6050 4400 6050 4500
Connection ~ 6050 4500
Wire Wire Line
	5850 4500 5850 4400
Connection ~ 5850 4500
Wire Wire Line
	5950 2100 5950 2300
Wire Wire Line
	5850 2200 6050 2200
Wire Wire Line
	5850 2200 5850 2300
Wire Wire Line
	6050 2200 6050 2300
Connection ~ 5950 2200
Wire Wire Line
	4850 2700 4850 2650
Wire Wire Line
	4600 2650 5050 2650
Wire Wire Line
	5050 2650 5050 2750
Wire Wire Line
	5050 2750 5400 2750
Wire Wire Line
	5400 2850 5050 2850
Wire Wire Line
	5050 2850 5050 2950
Wire Wire Line
	5050 2950 4600 2950
Wire Wire Line
	4850 2950 4850 2900
Connection ~ 4850 2650
Connection ~ 4850 2950
Wire Wire Line
	4250 2800 4300 2800
Wire Wire Line
	4300 2650 4300 2950
Wire Wire Line
	4300 2650 4400 2650
Wire Wire Line
	4300 2950 4400 2950
Connection ~ 4300 2800
Wire Wire Line
	5400 2950 5150 2950
Wire Wire Line
	5150 2950 5150 3000
Wire Wire Line
	6550 3000 6500 3000
Wire Wire Line
	6850 3000 6750 3000
Wire Wire Line
	6500 3350 7400 3350
Wire Wire Line
	7400 3200 7300 3200
Wire Wire Line
	7300 3200 7300 3650
Connection ~ 7300 3350
Wire Wire Line
	7600 3200 7700 3200
Wire Wire Line
	7700 3200 7700 3650
Wire Wire Line
	7600 3350 7800 3350
Connection ~ 7700 3350
Wire Wire Line
	7300 3650 7400 3650
Wire Wire Line
	7700 3650 7600 3650
Wire Wire Line
	7650 4100 7650 4000
Wire Wire Line
	7650 4000 7800 4000
Connection ~ 5250 3650
Wire Wire Line
	4200 3750 4200 3700
Wire Wire Line
	4200 3350 4200 3500
Connection ~ 4200 3400
Wire Wire Line
	3100 3400 3900 3400
Wire Wire Line
	3200 3550 3200 3500
Wire Wire Line
	3200 3500 3100 3500
Wire Wire Line
	3200 2950 3200 2850
Wire Wire Line
	3200 2850 3100 2850
Wire Wire Line
	3200 2650 3200 2750
Wire Wire Line
	3200 2750 3100 2750
Wire Wire Line
	4200 1700 4200 1900
Wire Wire Line
	4200 1800 4100 1800
Wire Wire Line
	3400 1700 3400 1900
Wire Wire Line
	3400 1800 3500 1800
Wire Wire Line
	3800 2200 3800 2100
Connection ~ 3400 1800
Wire Wire Line
	3400 2100 3400 2150
Wire Wire Line
	3400 2150 4200 2150
Connection ~ 3800 2150
Wire Wire Line
	4200 2150 4200 2100
Connection ~ 4200 1800
Wire Wire Line
	6800 4500 6800 4300
Wire Wire Line
	7050 4300 7050 4400
Wire Wire Line
	7050 4400 6800 4400
Connection ~ 6800 4400
Wire Wire Line
	6800 4000 6800 4100
Wire Wire Line
	6800 4050 7050 4050
Wire Wire Line
	7050 4050 7050 4100
Connection ~ 6800 4050
Wire Wire Line
	3650 4450 3650 4350
Wire Wire Line
	5100 3650 5400 3650
Wire Wire Line
	5100 3600 5100 3650
Wire Wire Line
	5400 3300 5300 3300
Wire Wire Line
	5300 3300 5300 2950
Connection ~ 5300 2950
Wire Wire Line
	4100 3400 5400 3400
$EndSCHEMATC
