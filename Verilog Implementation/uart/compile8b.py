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
    instr = opcodes[opcode]
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

def serial_send(packet):
    # Starts serial comm
    ser = serial.Serial('COM11')
    # Writes the package
    ser.write(packet)
    # Finalizes the comm
    ser.close()


with open("program.txt", 'r') as f:

    serial_send(decode_line('NP'))
    for line in f.readlines(): 
        serial_send(decode_line(line))
        
        
