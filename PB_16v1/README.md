# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware License Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicly released as defined in subsection 3.3**

# PB 16

![Image of Rev C Controller](https://github.com/computergeek1507/PB_16/raw/master/PB_16_rev_C.jpg)

The PB16 Pixel Controller is designed as an open source DIY hobbyist controller. A Pocketbeagle running FPP drives the 16 pixel ports and 2 serial ports. The design was made with all through hole components for easy assembly by most users. It is designed to be modular and support many use cases. It runs a full Linux operating system with ethernet, WIFI and audio supported over the USB port. It can run in standalone, or be used with other controllers/devices. It is 140mm (5’) wide by 103mm(4’) tall. The controllers small form factor and simplistic design are intended to limit overall cost. All the design files are open source and available on github. Open source applications were used to create this controller. [KiCad](http://kicad.org/) was used for the PCB design, and [LibreOffice](https://www.libreoffice.org/) for the documentation.

To order your own PCB upload the gerber.zip file to your favorite PCB manufacture of choice, I personally use [jlcpcb.com](https://jlcpcb.com/).

Assembly Instructions are included in the manual below.

### Features
* Powered by FPP Falcon Player
* Standalone/Master/Remote/Bridge Support
* 16 3-Wire Pixel Ports
* 700 pixel per output at 40 FPS or 1300 at 20 FPS
* 2 DMX Serial Outputs
* 2 RJ-45 Connectors with DMX/LOR/Renard Wiring Support
* Fused Powered DMX Output
* USB port for Ethernet,WIFI, or Audio
* OLED Display header
* Adafruit Real Time Clock Header Connector
* 2 pin GPIO Header for Push Button or Relay Support
* 5v - 24v Vin Support
* Expansion Header for additional 16 pixel outputs, Supports Falcon(v3) Expansion Boards

## [Manual](https://github.com/computergeek1507/PB_16/raw/master/PB_16v1/FPP%20PB16%20Pixel%20Controller%20Manual%20and%20Assembly%20Guide.pdf)

## [Gerbers](https://github.com/computergeek1507/PB_16/raw/master/PB_16v1/gerbers/gerbers.zip)

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/PB_16v1/PB16_Bom.ods)

## [Interactive BOM](https://computergeek1507.github.io/PB_16/PB_16v1/bom/ibom)

## [Ordering Instructions](https://github.com/computergeek1507/PB_16/blob/master/JLC_PCB.md)

---
## Changelog

v1 rev H 
- 
* 2022-05-29
* Updated 5V regulator to "Universal" footprint to support different regulators.
* Added Chewi Logo.

v1 rev G 
-
* 2020-05-09
* Moved to barrier block screws connectors for Power Inputs.
* Fix AUX power pin holes too small.

v1 rev F
-
* 2019-10-07
* Added Serial Selector for LOR/DMX, EEPROM, Push Buttons.

v1 rev E
-
* 2019-09-19
* Increased AUX power input terminal footprint to 3.81mm. (Pin Holes were too small)

v1 rev D
-
* 2019-08-24
* Added OLED wiring selector switch and AUX power input.

v1 rev C
-
* 2019-08-12
* Added LEDs and GPIO Header. (First functional PCBs)

v1 rev B(v1.1)
-
* 2019-07-31
* Added Expansion, DMX2 RJ45, and OLED Headers. (non-functioning due to wiring issues)

v1 rev A(v1.0)
-
* 2019-06-19(SEH B-Day)
* Initial Version. (First non-functioning Prototype PCBs)
