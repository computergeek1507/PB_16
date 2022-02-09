# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN OHL v. 1.2.

You may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. (http://ohwr.org/cernohl). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v.1.2 for applicable conditions

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
* Expansion Header for additional 16 pixel outputs, Supports Falcon Expansion Boards

## [Manual](https://github.com/computergeek1507/PB_16/raw/master/PB_16v1/FPP%20PB16%20Pixel%20Controller%20Manual%20and%20Assembly%20Guide.pdf)

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/PB_16v1/PB16_Bom.ods)

## [Ordering Instructions](https://github.com/computergeek1507/PB_16/blob/master/JLC_PCB.md)
