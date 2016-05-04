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
LIBS:analog-test-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Analog test board"
Date "2016-05-04"
Rev "1.0"
Comp "aleks@slobodensoftver.org.mk"
Comment1 "Aleks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  2000 0    60   ~ 12
Requirement:\nThe input to the HX1 module needs a swing from 0 to 5V\nin order to achive the ±5kHz deviation (typical specs\nfrom the datasheet).\n\nProblem:\nThe output of the DS8500 is 500mVpp (typ) with a 1.5V\nof DC offset. The maximum load at the ouput is 30kOHM\n(by specs in the datasheet). This needs to be analogly\nprocessed in order to fit the signal level required by the\nHX1 module\n\nSolution:\nDo some analog processing!
$EndSCHEMATC
