module mem_clk_mux (
	input system,
	input uart_clk,
	input SEL,
	output reg mem_clk
	);
	
	always @(*)
		begin
			if (SEL)
				mem_clk <= uart_clk;
			else
				mem_clk <= system;
		end

endmodule
