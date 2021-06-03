module mux_write (
	// Input signals
	input WE,
	input manual_WE,
	// Selector
	input SEL,
	// Output signals
	output reg sel_WE
	);
	
	always @(*)
		begin
			if (SEL)
				sel_WE <= manual_WE;
			else
				sel_WE <= WE;
		end
		
endmodule
