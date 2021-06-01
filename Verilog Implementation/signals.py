HLT = 0x10000
WE  = 0x08000
OE  = 0x04000
MI  = 0x02000
AI  = 0x01000
BI  = 0x00800
AO  = 0x00400
BO  = 0x00200
EO  = 0x00100
SUB = 0x00080
OI  = 0x00040
CE  = 0x00020
J   = 0x00010
CO  = 0x00008
II  = 0x00004
IO  = 0x00002
FI  = 0x00001
FLAG_C = 0x100
FLAG_Z = 0x080

codes = {}

def opcode(code, address) :

  codes[address] = code
  

for flag in range(0,4):

  for mask in range(0,16):
    opcode(CO|MI, (flag<<7)|(mask << 3));
    opcode(OE|CE|II, (flag<<7)|(mask << 3)|1);

  opcode(0, (flag<<7)|0b0000010);
  opcode(0, (flag<<7)|0b0000011);
  opcode(0, (flag<<7)|0b0000100);
  
  opcode(MI|IO, (flag<<7)|0b0001010);
  opcode(OE|AI, (flag<<7)|0b0001011); 
  opcode(0, (flag<<7)|0b0001100);

  opcode(MI|IO, (flag<<7)|0b0010010);
  opcode(OE|BI, (flag<<7)|0b0010011);
  opcode(AI|EO|FI, (flag<<7)|0b0010100);

  opcode(MI|IO, (flag<<7)|0b0011010);
  opcode(OE|BI, (flag<<7)|0b0011011);
  opcode(AI|EO|FI, (flag<<7)|0b0011100);


  opcode(MI|IO, (flag<<7)|0b0100010);
  opcode(AO|WE, (flag<<7)|0b0100011);
  opcode(0, (flag<<7)|0b0100100);
  
  opcode(IO|AI, (flag<<7)|0b0101010);
  opcode(0, (flag<<7)|0b0101011);
  opcode(0, (flag<<7)|0b0101100);
  
  opcode(IO|J, (flag<<7)|0b0110010);
  opcode(0, (flag<<7)|0b0110011);
  opcode(0, (flag<<7)|0b0110100);

  if (flag|0b01 == 0b01):
    opcode(0, (flag<<7)|0b0111010);
  elif (flag&0b10 == 0b10):
    opcode(IO|J, (flag<<7)|0b0111010);
  
  opcode(0, (flag<<7)|0b0111011);
  opcode(0, (flag<<7)|0b0111100);

  if (flag|0b10 == 0b10):
    opcode(0, (flag<<7)|0b1000010);
  elif (flag&0b01 == 0b01):
    opcode(IO|J, (flag<<7)|0b1000010);
  
  opcode(0, (flag<<7)|0b1000011);
  opcode(0, (flag<<7)|0b1000100);

  opcode(AO|OI, (flag<<7)|0b1110010);
  opcode(0, (flag<<7)|0b1110011);
  opcode(0, (flag<<7)|0b1110100);
  
  opcode(HLT, (flag<<7)|0b1111010);
  opcode(0, (flag<<7)|0b1111011);
  opcode(0, (flag<<7)|0b1111100);



for i in range(0, 512):
  if (i in codes):
    with open("signals.txt", "a") as f:
      f.write(str(bin(codes[i]).replace("0b",""))+"\n")
      print("cool")
      f.close()
  else:
    with open("signals.txt", "a") as f:
      f.write(str(bin(0x1FFFF).replace("0b",""))+"\n")
      print("cool")
      f.close()