module address_reg (
	input [7:0] bus,
	// Control Signals
	input MI,
	// Clock and Reset
	input rst,
	input clk,
	// Outputs
	output reg [7:0] addr
	);
	
	always @(posedge clk)
		begin
			if (rst)
				addr <= 0;
			else
				if (MI)
					addr <= bus;
		end

endmodule			