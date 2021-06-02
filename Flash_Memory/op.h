#ifndef op_h
#define op_h

#include "program.h"

#define HLT 0x800000
#define WE  0x400000
#define OE  0x200000
#define MI  0x100000

#define AI  0x080000
#define BI  0x040000
#define AO  0x020000
#define BO  0x010000

#define EO  0x008000
#define SUB 0x004000
#define OI  0x002000
#define CE  0x001000

#define J   0x000800
#define CO  0x000400
#define II  0x000200
#define IO  0x000100

#define FI  0x000080

#define FLAG_C 0x100
#define FLAG_Z 0x080

void opcode(long int code, int pos, int address) {
  long int opcode;
  if (pos == 0) {
    opcode =  (code & 0xFF0000)>>16;
  } else if (pos == 1) {
    opcode = (code & 0x00FF00)>>8;
  } else if (pos == 2) {
    opcode = (code & 0x0000FF);
  }

  writeEEPROM_DSP(address<<1, opcode);

}

void writeInstructions(int pos) {


  for (int flag = 0; flag < 4; flag++) {
    // Fetch
    for (int mask = 0; mask < 16; mask++) {
      opcode(CO|MI, pos, (flag<<7)|(mask << 3));
      opcode(OE|CE|II, pos, (flag<<7)|(mask << 3)|1);
    }

    // NP 0000
    opcode(0, pos, (flag<<7)|0b0000010);
    opcode(0, pos, (flag<<7)|0b0000011);
    opcode(0, pos, (flag<<7)|0b0000100);

    // LDA 0001
    opcode(MI|IO, pos, (flag<<7)|0b0001010);
    opcode(OE|AI, pos, (flag<<7)|0b0001011);
    opcode(0, pos, (flag<<7)|0b0001100);

    // ADD 0010
    opcode(MI|IO, pos, (flag<<7)|0b0010010);
    opcode(OE|BI, pos, (flag<<7)|0b0010011);
    opcode(AI|EO|FI, pos, (flag<<7)|0b0010100);

    // SUB 0011
    opcode(MI|IO, pos, (flag<<7)|0b0011010);
    opcode(OE|BI, pos, (flag<<7)|0b0011011);
    opcode(AI|EO|FI, pos, (flag<<7)|0b0011100);

    // STA 0100
    opcode(MI|IO, pos, (flag<<7)|0b0100010);
    opcode(AO|WE, pos, (flag<<7)|0b0100011);
    opcode(0, pos, (flag<<7)|0b0100100);

    // LDI 0101
    opcode(IO|AI, pos, (flag<<7)|0b0101010);
    opcode(0, pos, (flag<<7)|0b0101011);
    opcode(0, pos, (flag<<7)|0b0101100);

    // JMP 0110
    opcode(IO|J, pos, (flag<<7)|0b0110010);
    opcode(0, pos, (flag<<7)|0b0110011);
    opcode(0, pos, (flag<<7)|0b0110100);

    // JC 0111
    if (flag|0b01 == 0b01) {
      opcode(0,    pos, (flag<<7)|0b0111010);
    } else if (flag&0b10 == 0b10) {
      opcode(IO|J, pos, (flag<<7)|0b0111010);
    }
    opcode(0, pos, (flag<<7)|0b0111011);
    opcode(0, pos, (flag<<7)|0b0111100);

    // JZ
    if (flag|0b10 == 0b10) {
      opcode(0, pos, (flag<<7)|0b1000010);
    } else if (flag&0b01 == 0b01) {
      opcode(IO|J, pos, (flag<<7)|0b1000010);
    }
    opcode(0, pos, (flag<<7)|0b1000011);
    opcode(0, pos, (flag<<7)|0b1000100);

    // OUT
    opcode(AO|OI, pos, (flag<<7)|0b1110010);
    opcode(0, pos, (flag<<7)|0b1110011);
    opcode(0, pos, (flag<<7)|0b1110100);

    // HLT
    opcode(HLT, pos, (flag<<7)|0b1111010);
    opcode(0, pos, (flag<<7)|0b1111011);
    opcode(0, pos, (flag<<7)|0b1111100);

  }

}

#endif
