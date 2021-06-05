module jz_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "J";
			1: label = "Z";
			default: label = " ";
		endcase
	
endmodule