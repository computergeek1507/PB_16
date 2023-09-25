# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware License Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicly released as defined in subsection 3.3**

# PB 8 DMX

The PB 8 DMX Controller is designed as an open source DIY hobbyist controller. A Pocketbeagle running FPP drives the 8 serial ports. The design was made with all through hole components for easy assembly by most users. It is designed to be modular and support many use cases. It runs a full Linux operating system with ethernet, WIFI and audio supported over the USB port. It can run in standalone, or be used with other controllers/devices. It is 140mm (5’) wide by 103mm(4’) tall. The controllers small form factor and simplistic design are intended to limit overall cost. All the design files are open source and available on github. Open source applications were used to create this controller. [KiCad](http://kicad.org/) was used for the PCB design, and [LibreOffice](https://www.libreoffice.org/) for the documentation.

To order your own PCB upload the gerber.zip file to your favorite PCB manufacture of choice, I personally use [jlcpcb.com](https://jlcpcb.com/).

Assembly Instructions are included in the manual below.

### Features
* Powered by FPP Falcon Player
* Standalone/Master/Remote/Bridge Support
* 8 DMX Serial Outputs
* USB port for Ethernet,WIFI, or Audio
* OLED Display header
* Adafruit Real Time Clock Header Connector
* 2 pin GPIO Header for Push Button or Relay Support
* 5v - 24v Vin Support

## [Gerbers](https://github.com/computergeek1507/PB_16/raw/master/jlcpcb/production_files/GERBER-PB_8_DMX.zip)

## [Interactive BOM](https://computergeek1507.github.io/PB_16/PB_8_DMX/bom/ibom)

---
## Changelog

v1
-
* 2023-09-24
* Initial Version.
