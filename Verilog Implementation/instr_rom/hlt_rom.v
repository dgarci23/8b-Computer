module hlt_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "H";
			1: label = "L";
			2: label = "T";
			default: label = " ";
		endcase
	
endmodule