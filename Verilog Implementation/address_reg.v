module address_reg (
	// System Inputs
	input rst,
	input clk,
	// Values In
	input [7:0] bus,
	// Control Signals
	input MI,
	// Outputs
	output reg [3:0] addr
	);
	
	initial begin addr = 0; end
	
	always @(posedge clk)
		begin
			if (rst)
				addr <= 0;
			else
				if (MI)
					addr <= bus[3:0];
		end

endmodule			