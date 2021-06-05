module micro_instr (
	// System Inputs
	input clk,
	input rst,
	// Output
	output reg [2:0] micro
	);

	
	initial begin micro = 4; end
	
	always @(negedge clk or posedge rst)
		begin
			if (rst)
				micro = 0;
			else begin
				if (micro == 4)
					micro = 0;
				else
					micro = micro + 1;
				end
		end
endmodule