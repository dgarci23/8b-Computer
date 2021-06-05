module add_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "A";
			1: label = "D";
			2: label = "D";
			default: label = " ";
		endcase
	
endmodule