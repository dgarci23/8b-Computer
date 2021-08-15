# 8-b Computer
8 bit Computer design based on Ben Eater's 8 Bit Computer Youtube series. Hardware implementation of the design, KiCad schematics and Verilog implementation.

The project consists of three parts:
- Hardware implementation of an 8 bit computer using TTL chips and breadboards following Ben Eater's design.
- Schematics and documentation for the hardware design in KiCad.
- FPGA implementation in an Altera DE2-115 using Verilog and Quartus.

# Hardware Design
Below is the final design of the breadboard implementation of the 8 bit Computer. 

### Modules
The breadboard implementation consists of:
- **Clock Module**: allows the user to work with an automatic clock with changeable frequency or a manual clock for debugging.
- **Memory Module**: 16 memory addresses of 8 bits each form the memory of the 8 bit computer. Both instructions and data are stored in the same memory. Manual memory programing is implemented.
- **Registers**: there are three registers implemented in the breadboard. Register A and B that hold data and the Instruction Register that holds the value of the current instruction.
- **ALU**: the ALU is able to implement addition and substraction of register A and B.
- **Program Counter**: the program counter keeps the value of the current instruction address.
- **Output Module**: the output module allows the user to see the results of the execution using 8 segment displays.
- **Control Unit**: using Flash Memories as "look-up tables" to keep the relationship between instructions and control signals, the Control Unit consists of the control signals that are sent into the different modules of the computer and the Flags Registers that allow for branch operations to work.

![Final Computer Design](https://github.com/dgarci23/8b-Computer/blob/main/Breadboard%20Implementation/Multimedia%20Documentation/Full%20Computer%208b.jpeg)

### ISA
The instruction set architecture for the computer is a custom made ISA for this specific implementation. 
It includes:
- A load immediate for Register A.
- A load and store functions for memory.
- Arithmetic functions add and substract.
- Jump instructions including simple jump, jump if zero and jump if carry.
- Output instruction to display on the 8 segment display.
- Halt instruction to stop execution.

### Power distribution and issues
Power distribution was a big challenge to make the computer work. Extensive connection between multiple ground and power lines was necessary to avoid high voltage differences across the computer that was creating bugs in the registers and the bus. Breadboard connections quality was also a problem, since some connections were not smooth and some chips disconnected from its breadboard creating bugs.


# FPGA Implementation using Verilog
Using an Altera DE2-115 FPGA, I translated the breadboard implementation to a Verilog model and uploaded it to the FPGA using Quartus. Some minor changes were made from the Breadboard implementation, but the main functionality and ISA stayed the same. 

To improve program writing and loading into the FPGA, I developed a Serial terminal on PyGame to write and send programs to the FPGA via a USB-Serial cable and by implementing a program loader using Serial in the FPGA. 

