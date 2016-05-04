Requirement:
The input to the HX1 module needs a swing from 0 to 5V in order to achive the ±5kHz deviation (typical specs from the datasheet).

Problem:
The output of the DS8500 is 500mVpp (typ) with a 1.5V of DC offset. The maximum load at the ouput is 30kOHM (by specs in the datasheet). This needs to be analogly processed in order to fit the signal level required by the HX1 module

Solution:
Do some analog processing!
