#ifndef program_h
#define program_h

#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4
#define EEPROM_D0 5
#define EEPROM_D7 12
#define WRITE_EN A2
#define CHIP_EN A0
#define OUTPUT_EN A1

void setDataPinMode(int mode) {
   for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin++) {
    pinMode(pin, mode);
  }
}

// SHIFT LATCH SHOULD BE HIGH BEFORE CALLING
void setAddress(int address) {
  setDataPinMode(OUTPUT);
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, (address >> 8));
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  delayMicroseconds(1);
  digitalWrite(SHIFT_LATCH, HIGH);
}

byte readEEPROM(int address) {
  setDataPinMode(INPUT);
  digitalWrite(CHIP_EN, LOW);
  digitalWrite(OUTPUT_EN, LOW);

  setAddress(address);
  delayMicroseconds(1);
  byte data = 0;
  while(true){
     byte data = 0;
     for (int pin = EEPROM_D7; pin >= EEPROM_D0; pin--){
      data = (data << 1) + digitalRead(pin);
    }
  }
  digitalWrite(OUTPUT_EN, HIGH);
  digitalWrite(CHIP_EN, HIGH);
  return data;
}


void writeEEPROM(byte data) {
 
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin++) {
    digitalWrite(pin, data & 1);
    data = data >> 1;
  }
  digitalWrite(WRITE_EN, LOW);
  delayMicroseconds(1);
  digitalWrite(WRITE_EN, HIGH);
  delayMicroseconds(1);
  // delay(100);
}

void writeEEPROM_DSP(int address, byte data) {
  setDataPinMode(OUTPUT);

  digitalWrite(CHIP_EN, LOW);
  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555);
  writeEEPROM(0xa0);

  setAddress(address);
  writeEEPROM(data);

  digitalWrite(CHIP_EN, HIGH);
  
}


void printContent() {
  for (int base = 0; base <= 500/*255*/; base += 16) {
    byte data[16];
    for (int offset = 0; offset <= 15; offset++) {
      data[offset] = readEEPROM(base + offset);
    }
  
    char buf[80];
    sprintf(buf, "%03x: %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x",
            base, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8],
            data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

    Serial.println(buf);
  }
}

void disableDSP() {
  Serial.println("Disabling SDP");

  setDataPinMode(OUTPUT);

  digitalWrite(CHIP_EN, LOW);

  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555);
  writeEEPROM(0x80);
  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555);
  writeEEPROM(0x20);

  digitalWrite(CHIP_EN, HIGH);
}

void eraseSector(int address) {

  setDataPinMode(OUTPUT);

  digitalWrite(CHIP_EN, LOW);

  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555); 
  writeEEPROM(0x80);
  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(address);
  writeEEPROM(0x30);

  digitalWrite(CHIP_EN, HIGH);

}

void chipErase() {
  digitalWrite(CHIP_EN, LOW);

  setAddress(0x5555);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555);
  writeEEPROM(0x80);
  writeEEPROM(0xaa);
  setAddress(0x2aaa);
  writeEEPROM(0x55);
  setAddress(0x5555);
  writeEEPROM(0x10);


  digitalWrite(CHIP_EN, HIGH);
}

#endif
