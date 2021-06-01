module output_reg (
	inout [7:0] bus,
	input clk,
	input rst,
	// Control signals
	input OI,
	// Output
	output reg [7:0] data_out
	);
	
	initial data_out = 0;
		
	always @(posedge clk)
		begin
			if (rst)
				data_out <= 0;
			else begin
				if (OI)
					data_out <= bus;
				end
		end
endmodule