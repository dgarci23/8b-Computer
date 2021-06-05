module output_reg (
	// System Inputs
	input clk,
	input rst,
	// Inputs
	inout [7:0] bus,
	// Control signals
	input OI,
	// Output
	output reg [7:0] data_out
	);
	
	initial data_out = 0;
		
	always @(posedge clk or posedge rst)
		begin
			if (rst)
				data_out <= 0;
			else begin
				if (OI)
					data_out <= bus;
				end
		end
endmodule