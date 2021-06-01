module ALU_Register (
	// System Signals
	input clk,
	input rst,
	// Values In
	input [7:0] bus,
	// Control signals registers
	input AI,
	input BI,
	input SUB,
	// Flags
	output CARRY,
	output ZERO,	
	// Output Values
	output [7:0] A_out,
	output [7:0] B_out,
	output [7:0] E_out
	);
	
	ALU ALU(
		.A(A_out),
		.B(B_out),
		
		.SUB(SUB),
		
		.data_out(E_out),
		
		.CARRY(CARRY),
		.ZERO(ZERO)
	);

	
	register_array register_array(
		.clk(clk),
		.rst(rst),

		.bus(bus),
		
		.AI(AI),
		.BI(BI),
		
		.A(A_out),
		.B(B_out)
	);
	

endmodule
	