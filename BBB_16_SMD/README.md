# Copyright and Disclaimer
Copyright: Scott Hanson

This documentation describes Open Hardware and is licensed under the CERN Open Hardware Licence Version 2 - Strongly Reciprocal. (CERN-OHL-S)

You may redistribute and modify this documentation under the terms of the CERN OHL-S-v2 (https://ohwr.org/cern_ohl_s_v2.txt). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v2-S for applicable conditions

**Under CERN OHL-S-v2, derivative work must be publicy released as defined in subsection 3.3**

# BBB 16 SMD

**WIP** Proceed at your own risk.

The BBB 16 SMD is a Surface Mount(SMD) BeagleBone Version with 16 pixel ports, 1 remote differential port, 2 serial ports, and an expansion header for additional 16 pixel outputs. Uses Falcon v4 (24 pin) Expansion Pinout.

**Warning** Due to part shortages, I have switched this design(v3) to use 3.81mm Phoenix Connectors for the string ports. Most other controllers (Falcon, Kulps) use 3.50mm Phoenix Connectors and the plugs are not compatible. The PCB footprints can accept both 3.81mm and 3.50mm headers, but the parts in the BOM are 3.81mm at the moment. 

To order PCBs upload the ["GERBER-BBB_16.zip"](https://github.com/computergeek1507/PB_16/raw/master/BBB_16_SMD/jlcpcb/gerber/GERBER-BBB_16.zip) file in the "jlcpcb\gerber" folder to jlcpcb.com. Enable the SMD service, 'BOM-BBB_16.csv' is the SMD BOM and 'POS-BBB_16.csv' is the SMD CPL position file.

## [Interactive BOM](https://computergeek1507.github.io/PB_16/BBB_16_SMD/bom/ibom)

## [Part BOM](https://github.com/computergeek1507/PB_16/raw/master/BBB_16_SMD/BBB_16_BOM.ods)

![Image of BBB16 Out](https://github.com/computergeek1507/PB_16/raw/master/BBB_16_SMD/BBB_16.png)

---
## Changelog

v2.1
-
* Switched String Ports to 3.81mm Phoenix Connectors.
* Switched Serial Ports AM26C31 serial chip, same as differential port.
* Updated 5V regulator to "Universal" footprint to support different regulators.

v2
-
* first SMD version.


