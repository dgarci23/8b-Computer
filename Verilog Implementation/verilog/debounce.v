module debounce (
	input CLOCK_50,
	input in,
	output reg out
	);
	
	reg [19:0] count;
	
	always @(posedge CLOCK_50)
		count <= count + 1'b1;
		
	always @(posedge count[19])
		out <= in;

endmodule
		