import serial
import time

opcodes = {
        'NP':  0x0,
        'LDA': 0x1,
        'ADD': 0x2,
        'SUB': 0x3,
        'STA': 0x4,
        'LDI': 0x5,
        'JMP': 0x6,
        'JC':  0x7,
        'JZ':  0x8,
        'OUT': 0xe,
        'HLT': 0xf
        }


def decode_line(line):
    # Gets the instruction code
    opcode = line.strip().split(" ")[0]
    # Gets the codification of the instruction
    instr = opcodes[opcode.upper()]
    # Gets the argument of the instruction - if it exists
    try:
        arg = int(line.strip().split(" ")[1])
    except IndexError:
        arg = 0
    # Combines the instruction code and the argument
    instr = (instr<<4)|arg
    # Packet assignment
    packet = bytearray()
    packet.append(instr)

    return packet

def serial_send(packet, ser):
    # Writes the package
    ser.write(packet)


def send(code, ser):
    serial_send(decode_line('NP'), ser)
    for line in code:
        if (line != ""):
            serial_send(decode_line(line.strip()), ser)
    
        
def receive(ser, output):
    if ser.in_waiting > 0:
        while ser.in_waiting > 0:
            x = ser.read()
            x = int.from_bytes(x, "big")
            output = str(x)
            print(x)
    return output
