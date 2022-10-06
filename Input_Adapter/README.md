# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware License Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicly released as defined in subsection 3.3**

# Input2Expansion

The Input2Expansion board is an adapter to use the Experience Lights Input Extender Kit with Expansion Port on a Kulp or PB16 Pixel Controller.  All the design files are open source and available on github.

# Configuration

Experience Lights Input Extender Pin to Controller GPIO Map

|Controller  |Button 1 |Button 2 |Button 3 |Button 4 |Button 5 |Button 6 |
|------------|---------|---------|---------|---------|---------|---------|
|Pi GPIO     |GPIO 17  |GPIO 18  |GPIO 27  |GPIO 22  |GPIO 23  |GPIO 24  |
|Expansion   |Output 15|Output 14|Output 13|Output 12|Output 11|Output 10|
|PB16v1 GPIO |P2-03    |P2-05    |P2-07    |P1-17    |P2-20    |P2-19    |
|PB16v2 GPIO |P2-25    |P2-03    |P2-17    |P2-11    |P2-10    |P1-12    |
|K16A-B GPIO |P8-33    |P8-31    |P8-32    |P9-19    |P8-14    |P8-17    |
|K8-B GPIO   |P8-12    |P8-11    |P9-23    |P9-15    |P9-16    |P9-14    |
|K8-PB GPIO  |P2-05    |P2-07    |P2-09    |P2-17    |P1-04    |P1-06    |
|BBB16v2 GPIO|P8-35    |P8-33    |P8-31    |P8-30    |P2-29    |P8-28    |
|F8-PBv2 GPIO|P2-05    |P2-07    |P2-09    |P2-11    |P2-17    |P2-20    |

![Image of Input Adapter](https://github.com/computergeek1507/PB_16/raw/master/Input_Adapter/Input_Adapter.png)

![Real Image of Input Adapter](https://github.com/computergeek1507/PB_16/raw/master/Input_Adapter/PXL_20220919_122310893.jpg)

