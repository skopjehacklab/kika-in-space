# kika-in-space
A baloon project

## Electronics Description

AVR µC collects data from sensors and GPS module (uart rx) and sends it out to a modem and TX1 radio module (via uart
tx). Data is sent in the (NMEA)[http://www.catb.org/gpsd/NMEA.html] format.

Sensors:
* Temperature 3x DS18B20 (1-Wire)
* Pressure BMP085 (I²C)
* Humidity DHT22 (proprietary 1-Wire)
* Accelerometer + Gyroskop MPU-6050 (I²C)
* GPS module (uart)
