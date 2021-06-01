module InstructionReg(
	input clk,
	
	input II,
	input rst,
	input [7:0] bus,
	output [3:0] opcode,
	output [7:0] instr_out
	);
	
	reg [7:0] instr;
	
	
	always @(posedge clk) 
		begin	
			if (rst)
				instr <= 0;
			else if (II)
				instr <= bus;
		end
		
		assign instr_out = (instr & 8'h0F);
		
		assign opcode = instr[7:4];
	
			
endmodule