# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware License Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicly released as defined in subsection 3.3**

# BBB 16

The BBB16 is a Beaglebone version of the PB16. All the design files are open source and available on github.

To order PCBs upload the ["GERBER-BBB_16.zip"](https://github.com/computergeek1507/PB_16/raw/master/BBB_16/jlcpcb/production_files/GERBER-BBB_16.zip) file in the "jlcpcb\production_files" folder to jlcpcb.com.

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/BBB_16/BBB_16_BOM.ods)

## [Interactive BOM](https://computergeek1507.github.io/PB_16/BBB_16/bom/ibom)

![Image of BBB16 Out](https://github.com/computergeek1507/PB_16/raw/master/BBB_16/BBB_16.png)

---
## Changelog

v2.3
-
* Added cutable traces to OLED power pins that defaults to the common pinout.

v2.2
-
* Updated 5V regulator to "Universal" footprint to support different regulators.

v2.1
-
* Added power input ADC circuits.

v2
-
* Moved Beaglebone to bottom of PCB.
* Changed one RJ45 port to differential output.
* Added Aux Power port.
* Changed to 24pin Expansion port.
* Changed power terminals to screw terminals.
* Removed Audio Breakout Header.

v1.4
-
* Fix EEPROM I2C.

v1.3
-
* Fix Buttons and GPIO.

v1.2
-
* Added Audio Breakout Header.
* Switch to 33ohm resistors for pixel outputs.

v1
-
* First version.
* BBB on top
* OLED.
* Buttons.
* GPIO port.
* Side Entry power ports.

