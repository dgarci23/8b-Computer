#include "digits.h"
#include "program.h"
#include "op.h"

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("Initializing...");
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  digitalWrite(SHIFT_LATCH, HIGH);
  pinMode(SHIFT_LATCH, OUTPUT);

  pinMode(WRITE_EN, OUTPUT);
  digitalWrite(WRITE_EN, HIGH);
  pinMode(CHIP_EN, OUTPUT);
  digitalWrite(CHIP_EN, HIGH);
  pinMode(OUTPUT_EN, OUTPUT);
  digitalWrite(OUTPUT_EN, HIGH);

  chipErase();
  delay(5000);
  // Do 0 for MSB and 1 for LSB
  // [0] - [1] - [2]
  writeInstructions(0);
  Serial.println("Done");
}

void loop() {
  // put your main code here, to run repeatedly:
}
