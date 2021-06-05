module mux_addr (
	// Input signals
	input [3:0] in0,
	input [3:0] in1,
	// Selector
	input SEL,
	// Output signals
	output reg [3:0] out
	);
	
	always @(*)
		begin
			if (SEL)
				out <= in1;
			else
				out <= in0;
		end

endmodule
				