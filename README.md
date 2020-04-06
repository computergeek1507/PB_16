# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN OHL v. 1.2.

You may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. (http://ohwr.org/cernohl). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v.1.2 for applicable conditions

# PB 16

![Image of Rev C Controller](https://github.com/computergeek1507/PB_16/raw/master/PB_16_rev_C.jpg)

The PB16 Pixel Controller is designed as an open source DIY hobbyist controller. A Pocketbeagle running FPP drives the 16 pixel ports and 2 serial ports. The design was made with all through hole components for easy assembly by most users. It is designed to be modular and support many use cases. It runs a full Linux operating system with ethernet, WIFI and audio supported over the USB port. It can run in standalone, or be used with other controllers/devices. It is 140mm (5’) wide by 103mm(4’) tall. The controllers small form factor and simplistic design are intended to limit overall cost. All the design files are open source and available on github. Open source applications were used to create this controller. [KiCad](http://kicad-pcb.org/) was used for the PCB design, and [LibreOffice](https://www.libreoffice.org/) for the documentation.

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

## [Manual](https://github.com/computergeek1507/PB_16/raw/master/FPP%20PB16%20Pixel%20Controller%20Manual%20and%20Assembly%20Guide.pdf)

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/PB16_Bom.ods)

## Addon Boards

The PB16 Controller contains an expansion header. The expansion header can drive 16 additional pixel ports. I have also created addition addon boards to work with the expansion port. These Expansions will work with Kulp Controllers, but **not** Falcon Controllers.

* [**16 Expansion**](16_Expansion/README.md) - 16 Port Local Expansion.
* [**Diff Expansion**](Diff_Expansion/README.md) - 4 Port Remote Differential Expansion.
* [**Multi Expansion**](Multi_Expansion/README.md) - 8 Port Local & 2 Port Remote Differential Expansion.
* [**Quad Diff Out**](Quad_Diff_Out/README.md) - 1 Port Remote Differential Expansion.
* [**Four Out**](Four_Out/README.md) - 4 Port Local Expansion.
* [**Receiver Out**](Receiver_Out/README.md) - 4 Port Remote Receiver Board for use with Remote Differential Expansions.

## Variants

I created some addition variants of the PB 16, to use with other controller systems and fit some specific needs.

* [**PB 16 Expansion**](PB_16_Expansion/README.md) - Small Form Factor PB 16 with Two Expansion Board Ports for 32 outputs.
* [**PB 16 Mini**](PB_16_Mini/README.md) - Small Form Factor PB 16 with one Expansion Board Port for 16 ouputs and two Serial Outputs.
* [**PB 16 Flex**](PB_16_Flex/README.md) - PB 16 PCB to use with the HolidayCoro Flex System.
* [**PB 16 E682**](PB_16_E682/README.md) - Adapter PCB to use a Pocketbeagle with a Sandevice E682. (This is a proof of concept, not designed for extended use)
* [**PB 16 E682 Serial**](PB_16_E682_Serial/README.md) - Serial Output PCB to for PB 16 E682 or PB 16 Expansion.
