# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware Licence Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicy released as defined in subsection 3.3**

# PB 16v2

The PB 16v2 is a surface mount(SMD) version of the original PB16. The updated PB 16v2 has 16 local pixel ports, one remote receiver port(4 remote ports), a 16 port expansion, and 2 serial ports. A total of 36 pixel outputs. All the design files are open source and available on github.

### Features
* Powered by FPP Falcon Player
* Standalone/Master/Remote/Bridge Support
* 16 3-Wire Pixel Ports
* 1 RJ-45 Connector for a remote differential port.
* 700 pixel per output at 40 FPS or 1300 at 20 FPS
* 2 DMX Serial Outputs
* 1 RJ-45 Connectors with DMX/LOR Wiring Support
* Fused Powered DMX Output
* USB port for Ethernet,WIFI, or Audio
* OLED Display header
* Adafruit Real Time Clock Header Connector
* 2 pin GPIO Header for Push Button or Relay Support
* 5v - 24v Vin Support
* Expansion Header for additional 16 pixel outputs, Supports Falcon Expansion Boards

### Purchase
I (Scott) have a limited quantity of fully assembled PCB's available for purchase. PM me if interested.

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/PB_16v2_SMD/PB_16_BOM.ods)

## [Interactive BOM](https://computergeek1507.github.io/PB_16/PB_16v2_SMD/bom/ibom)

![Image of PB 16v2](https://github.com/computergeek1507/PB_16/raw/master/PB_16v2_SMD/Real_PB_16v2.jpg)

---
## Changelog

v2.2
-
* 2022-06-05
* Updated 5V regulator to "Universal" footprint to support different regulators.
* Switched to 603 Resistors and Capacitors
* Added Logo

v2.1
-
* 2022-05-26
* Switched to surface mount 33ohm resistors on pixel outputs.

v2
-
* 2020-08-11 (publicly released 2022-01-22)
* First SMD version.
* Based off PB16v1.
* Used 805 Resistors and Capacitors
* Changed one RJ45 port to new differential output.
* Added Power Controller to USB port.
* Added TVS Diodes to USB port.