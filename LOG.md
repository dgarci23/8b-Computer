# 8-Bit Computer

## Flash Memory
### Setting the address using Shift Registers
- Checked the address for 1 (Successful)
- Checked the address for 257 (Successful)
- Some errors with the LATCH HIGH/LOW on the code
### Reading from the Flash Memory
- Reading works
### Writing to the Flash Memory
- Writing works for the most part
- There are some issues writing in the 0x00 address
- Solution for the 7 segment display
    - Used A11 as a mask (A11 always HIGH)
    - Used A9 and A10 to toggle between the different values
    - Used A0 as an always HIGH address
    - "Real" address from A1 to A8
    - A12 as a toggle between unsigned and signed int

## Memory Address Register
### Design Overview
- Same design as the other registers
- Output of the buffer for the 4 MSB is LOW

## CPU Control Signal
- HLT signal to the CLK
- Designing the Memory IN and Memory OUT signals
- Use 2 HEX Inverters
- Order of Signals:
    - HLT - WE - OE - MI - AI - BI - AO - BO - E0 - SUB - OI - CE - J - CO - II - IO
- First two micro-instructions:
	- CO - MI
	- OE - II - CE
