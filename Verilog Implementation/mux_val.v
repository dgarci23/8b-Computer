module mux_val (
	// Input signals
	input [7:0] in0,
	input [7:0] in1,
	// Selectors
	input SEL,
	// Output signals
	output reg [7:0] out
	);
	
	always @(*)
		begin
			if (SEL)
				out <= in1;
			else
				out <= in0;
		end

endmodule
		