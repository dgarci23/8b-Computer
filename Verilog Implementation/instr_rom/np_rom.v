module np_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "N";
			1: label = "P";
			default: label = " ";
		endcase
	
endmodule