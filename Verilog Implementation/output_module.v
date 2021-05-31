module output_module (
	inout [7:0] bus,
	// Control Signals
	input OI,
	// System Signals
	input clk,
	input rst,
	// Output
	output [6:0] u,
	output [6:0] t,
	output [6:0] h
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
		.in(num/10),
		.out(t)
	);
	
	seven_seg hundreds (
		.in(num / 100),
		.out(h)
	);
	
endmodule