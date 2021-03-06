`timescale 1ns/1ns
module Computer_tb ();

	reg clk;
	reg [3:0] key;
	reg [17:0] SW;
	
	wire [6:0] HEX0;
	wire [6:0] HEX1;
	wire [6:0] HEX2;
	wire [17:0] LEDR;
	
	Computer uut (
		.CLOCK_50(clk),
		.KEY(key),
		.SW(SW),
		.HEX0(HEX0),
		.HEX1(HEX1),
		.HEX2(HEX2),
		.LEDR(LEDR)
	);
	
	always #4 clk = ~clk;

	initial
	begin
		// key[2] = 1; 
		key[0] = 1; clk = 0; SW[17:6] = 8'h00; 
		// SW[5] = 0;
		// #10;
		key[2] = 0; SW[5] = 1; 
		#100;

		$stop;
	end

endmodule
	