module InstructionReg(
	// System Inputs
	input clk,
	input rst,
	// Control Signals
	input II,
	// Values In/Out
	input [7:0] bus,
	output [3:0] opcode,
	output [7:0] instr_out
	);
	
	reg [7:0] instr;
	
	initial begin instr = 0; end
	
	
	always @(posedge clk or posedge rst) 
		begin	
			if (rst)
				instr <= 0;
			else if (II)
				instr <= bus;
		end
		
		assign instr_out = (instr & 8'h0F);
		
		assign opcode = instr[7:4];
	
			
endmodule