## Ordering from [jlcpcb.com](https://jlcpcb.com/)

### Printed Circuit Board

Go to https://cart.jlcpcb.com/quote to upload the PCB design files.

Upload the "gerber.zip" file by clicking the "Add Gerber File" button.

![Add Button](https://github.com/computergeek1507/PB_16/raw/master/img/add_button.png)

The default setting are correct, blue color PCB's are recommended, but it will add two days to the build time.

![PCB Settings](https://github.com/computergeek1507/PB_16/raw/master/img/pcb_settings.png)

### Surface Mount Assembly Service

****NOTE: Surface Mount Assembly Service**** is only required for designs ending in "SMD" or "SMT", all other designs can skip this step.

Scroll down and Enable the SMD service.

![SMD ON](https://github.com/computergeek1507/PB_16/raw/master/img/smd_on.png)

Select "Assemble top side" and "Added by JLCPCB" for tooling holes.

![SMD Settings](https://github.com/computergeek1507/PB_16/raw/master/img/smd_settings.png)

Then click "Next" on the right by the Calculated Price heading.

On the Next page, you will select the BOM and Part Position Files.

![Add BOM POS](https://github.com/computergeek1507/PB_16/raw/master/img/add_bom_pos.png)

'xxxxx_SMD.csv' is the SMD BOM and 'xxxxx-all-pos.csv' is the SMD CPL position file.

The next page will confirm all the BOM parts in the SMD CSV file. Select "Next" to proceed to placement review. If they are incorrect, let me know and I will update the LCSC part numbers.

![BOM Review](https://github.com/computergeek1507/PB_16/raw/master/img/bom_review.png)

The final page will confirm all the part placements in the POS CSV file. The "dots" should match the pin 1 locations on the IC's. If they are incorrect, let me know and I will update the rotation values.

![POS Review](https://github.com/computergeek1507/PB_16/raw/master/img/placement_review.png)

Then Save to Cart and proceed to Checkout and Shipping like normal.