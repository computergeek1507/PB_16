all: PB16-eeprom.bin PB16v2-eeprom.bin BBB16-eeprom.bin BBB16v2-eeprom.bin BBB16-Exp-eeprom.bin BBB16-Flex-eeprom.bin Pi_Expansion-eeprom.bin Pi_Zero_24_Diff-eeprom.bin Pi_Zero_Expansion-eeprom.bin Pi_Zero_W_16-eeprom.bin PB16_2_PI-eeprom.bin

PB16-eeprom.bin: PB16/*
	./create_cape_eeprom PB16 1.0 PB16

PB16v2-eeprom.bin: PB16v2/*
	./create_cape_eeprom PB16v2 2.0 PB16v2

BBB16-eeprom.bin: BBB16/*
	./create_cape_eeprom BBB16 1.0 BBB16

BBB16v2-eeprom.bin: BBB16v2/*
	./create_cape_eeprom BBB16v2 2.0 BBB16v2

BBB16-Exp-eeprom.bin: BBB16-Exp/*
	./create_cape_eeprom BBB16-Exp 1.0 BBB16-Exp

BBB16-Flex-eeprom.bin: BBB16-Flex/*
	./create_cape_eeprom BBB16-Flex 1.0 BBB16-Flex

Pi_Expansion-eeprom.bin: Pi_Expansion/*
	./create_cape_eeprom Pi_Expansion 1.0 Pi_Expansion

Pi_Zero_24_Diff-eeprom.bin: Pi_Zero_24_Diff/*
	./create_cape_eeprom Pi_Zero_24_Diff 1.0 Pi_Zero_24_Diff

Pi_Zero_Expansion-eeprom.bin: Pi_Zero_Expansion/*
	./create_cape_eeprom Pi_Zero_Expansion 1.0 Pi_Zero_Expansion

Pi_Zero_W_16-eeprom.bin: Pi_Zero_W_16/*
	./create_cape_eeprom Pi_Zero_W_16 1.0 Pi_Zero_W_16

PB16_2_PI-eeprom.bin: PB16_2_PI/*
	./create_cape_eeprom PB16_2_PI 1.0 PB16_2_PI

clean:
	rm *.bin