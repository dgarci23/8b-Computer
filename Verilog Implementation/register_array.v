module register_array(
	// System Inputs
	input clk,
	input rst,
	// Values in
	input [7:0] bus,
	// Control signals registers
	input AI,
	input BI,
	// ALU register connection
	output [7:0] A,
	output [7:0] B
	);
	
	register registerA(
		.clk(clk),
		.input_en(AI),
		.rst(rst),
		.bus(bus),
		.data_reg(A)
	);

	register registerB(
		.clk(clk),
		.input_en(BI),
		.rst(rst),
		.bus(bus),
		.data_reg(B)
	);	
	
endmodule
	
	