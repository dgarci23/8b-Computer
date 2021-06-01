module register(
	input clk,
	
	input input_en,
	input rst,
	input [7:0] bus,
	output reg [7:0] data_reg
	);
	
	
	initial begin data_reg = 0; end
	
	always @(posedge clk) 
		begin	
			if (rst)
				data_reg <= 0;
			else if (input_en)
				data_reg <= bus;
		end
	
			
endmodule
			