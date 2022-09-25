# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware License Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicly released as defined in subsection 3.3**

# Input2Expansion

The Input2Expansion board is an adapter to use the Experience Lights Input Extender Kit with Expansion Port on a Kulp or PB16 Pixel Controller.  All the design files are open source and available on github.

# Configuration

Experience Lights Input Extender Pin to Controller GPIO Map

|Controller |Button 1 |Button 2 |Button 3 |Button 4 |Button 5 |Button 6 |
|-----------|---------|---------|---------|---------|---------|---------|
|Pi GPIO    |GPIO 24  |GPIO 23  |GPIO 22  |GPIO 27  |GPIO 18  |GPIO 17  |
|Expansion  |Output 10|Output 11|Output 12|Output 7 |Output 14|Output 15|
|PB16v1 GPIO|P2.19    |P2.20    |P2.17    |P1.12    |P2.05    |P2.03    |
|PB16v2 GPIO|P1.12    |P2.19    |P2.11    |P1.32    |P2.19    |P2.25    |
|K16A-B GPIO|P8.17    |P8.15    |P8.19    |P9.17    |P8.31    |P8.33    |

![Image of Input Adapter](https://github.com/computergeek1507/PB_16/raw/master/Input_Adapter/Input_Adapter.png)

![Real Image of Input Adapter](https://github.com/computergeek1507/PB_16/raw/master/Input_Adapter/PXL_20220919_122310893.jpg)

