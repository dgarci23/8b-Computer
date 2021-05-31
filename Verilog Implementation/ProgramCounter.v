module ProgramCounter (
	input clk,
	// Control Signals
	input CE,
	input J,
	// Bus connection
	input [3:0] bus,
	// Reset
	input rst,
	// Output values
	output reg [7:0] PC
	);
	
	initial begin PC = 0; end
	
	always @(posedge clk)
		begin
			if (rst)
				PC <= 0;
			else if (CE)
				if (PC >= 15)
					PC <= 0;
				else 
					PC <= PC + 1;
			
			if (J)
				PC <= bus;
		end
		
	
endmodule