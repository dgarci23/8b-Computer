module address_reg (
	// System Inputs
	input rst,
	input clk,
	// Values In
	input [3:0] bus,
	// Control Signals
	input MI,
	// Outputs
	output reg [3:0] addr
	);
	
	initial begin addr = 0; end
	
	always @(posedge clk or posedge rst)
		begin
			if (rst)
				addr <= 0;
			else
				if (MI)
					addr <= bus;
		end

endmodule			