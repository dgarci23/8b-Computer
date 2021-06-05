module out_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "O";
			1: label = "U";
			2: label = "T";
			default: label = " ";
		endcase
	
endmodule