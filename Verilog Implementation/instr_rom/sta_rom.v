module sta_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "S";
			1: label = "T";
			2: label = "A";
			default: label = " ";
		endcase
	
endmodule