module ALU (
	// Registers In
	input [7:0] A,
	input [7:0] B,
	// Control signals
	input SUB,
	// Values Out
	output [7:0] data_out,
	// Flags
	output ZERO,
	output reg CARRY
	);
	
	reg [7:0] E;
	
	always @(*) 
		begin
		
			if (SUB)
				{CARRY, E} = A - B;
			else
				{CARRY, E} = A + B;				
		end
		
		assign ZERO = (~(E[0]||E[1]))&&(~(E[2]||E[3]))&&(~(E[4]||E[5]))&&(~(E[6]||E[7]));
		
		assign data_out = (E & 8'hFF);

endmodule