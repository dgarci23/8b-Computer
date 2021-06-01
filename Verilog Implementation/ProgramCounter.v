module ProgramCounter (
	// System Inputs
	input clk,
	input rst,
	// Control Signals
	input CE,
	input J,
	// Bus connection
	input [3:0] bus,
	// Output values
	output reg [7:0] PC
	);
	
	initial begin PC = 0; end
	
	always @(posedge clk)
		begin
			if (rst)
				PC <= 0;
			else if (CE)
				begin
					if (PC >= 15)
						PC <= 0;
					else 
						PC <= PC + 1;
				end
			if (J)
				PC <= bus;
		end
		
	
endmodule