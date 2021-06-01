module flag_register(
	// System Inputs
	input clk,
	input rst,
	// Control Signals
	input FI,
	// Carry signals
	input CARRY_Z,
	input CARRY_C,
	// Register Values
	output reg FZ,
	output reg FC
	);
	
	initial begin FZ = 0; FC = 0; end
	
	always @(posedge clk) 
		begin
			if (rst)
				FZ <= 0;
			else
				FZ <= CARRY_Z;
			if (rst)
				FC <= 0;
			else
				FC <= CARRY_C;
		end

endmodule