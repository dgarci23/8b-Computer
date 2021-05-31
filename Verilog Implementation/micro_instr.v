module micro_instr (
	input clk,
	input rst,
	output reg [2:0] micro
	);

	

	initial begin micro = 0; end
	
	always @(negedge clk)
		begin
			if (rst)
				micro = 0;
			else begin
				micro = micro + 1;
				end
		end
endmodule