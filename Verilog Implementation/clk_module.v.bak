module clk_module (
	input AUTO,
	input MANUAL,
	input SELECTOR,
	output reg CLK
	);
	
	always @(*)
		begin
			if (SELECTOR)
				CLK <= MANUAL;
			else
				CLK <= AUTO;
		end

endmodule
