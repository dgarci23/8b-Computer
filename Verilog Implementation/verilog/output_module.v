module output_module (
	// System Signals
	input clk,
	input rst,
	input CLOCK_50,
	// Inputs
	inout [7:0] bus,
	// Control Signals
	input OI,
	// Output
	output [6:0] u,
	output [6:0] t,
	output [6:0] h,
	// LCD Display
	input [7:0] instr,
	output LCD_ON,
	output LCD_BLON,
	output LCD_RW,
	output LCD_EN,
	output LCD_RS,
	output [7:0] LCD_DATA
	);
	
	wire [7:0] num;
	
	output_reg output_reg (
		.clk(clk),
		.rst(rst),
		.bus(bus),
		.OI(OI),
		.data_out(num)
	);
	
	seven_seg units (
		.in(num % 10),
		.out(u)
	);
	
	seven_seg tens (
		.in((num/10)%10),
		.out(t)
	);
	
	seven_seg hundreds (
		.in(num / 100),
		.out(h)
	);
	
	wire [4:0] lcd_index;
	wire [7:0] lcd_char;
	
	lcd_rom lcd_rom (
		.addr(lcd_index),
		.opcode(instr[7:4]),
		.imm4(instr[3:0]),
		.lcd_val(lcd_char)
	);
	
	// LCD Implementation
	LCD_Controller (
		.lcd_char(lcd_char),
		.lcd_index(lcd_index),
		.CLOCK_50(CLOCK_50),
		.LCD_ON(LCD_ON),
		.LCD_BLON(LCD_BLON),
		.LCD_RW(LCD_RW),
		.LCD_EN(LCD_EN),
		.LCD_RS(LCD_RS),
		.LCD_DATA(LCD_DATA)
	);
		
	
endmodule