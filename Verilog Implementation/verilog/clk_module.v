module clk_module (
	input AUTO,
	input MANUAL,
	input SELECTOR,
	input PROGRAM,
	input manual_WE,
	output reg CLK
	);
	
	always @(*)
		begin
			if (PROGRAM)
				CLK <= manual_WE;
			else
				if (SELECTOR)
					CLK <= MANUAL;
				else
					CLK <= AUTO;
		end

endmodule
