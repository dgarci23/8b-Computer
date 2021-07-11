#ifndef digits_h
#define digits_h

#include "program.h"

byte digits[] = { 0x7e, 0x30, 0x6d, 0x79, 0x33, 0x5b, 0x5f, 0x70, 0x7f, 0x7b};

int addrAdjust(int address) {
  address = address << 1;
  address = address | 0x801;
  return address;
}

void writeDigits(){
  for (int value = 0; value < 256; value++) {
    writeEEPROM_DSP(addrAdjust(value), digits[value%10]);
  }
  for (int value = 0; value < 256; value++) {
    writeEEPROM_DSP(addrAdjust(value)|0x200, digits[(value/10)%10]);
  }
  for (int value = 0; value < 256; value++) {
    writeEEPROM_DSP(addrAdjust(value)|0x400, digits[(value/100)%10]);
  }
  for (int value = 0; value < 256; value++) {
    writeEEPROM_DSP(addrAdjust(value)|0x600, 0);
  }

  for (int value = -128; value < 128; value++) {
    writeEEPROM_DSP(addrAdjust((byte)value)|0x1000, digits[abs(value)%10]);
  }
  for (int value = -128; value < 128; value++) {
    writeEEPROM_DSP(addrAdjust((byte)value)|0x1200, digits[abs(value / 10)%10]);
  }
  for (int value = -128; value < 128; value++) {
    writeEEPROM_DSP(addrAdjust((byte)value)|0x1400, digits[abs(value / 100)%10]);
  }
  for (int value = -128; value < 128; value++) {
    if (value < 0 ) {
      writeEEPROM_DSP(addrAdjust((byte)value)|0x1600, 0x01);
    } else {
      writeEEPROM_DSP(addrAdjust((byte)value)|0x1600, 0);
    }
  }
}

#endif
