module ldi_rom (
	input [4:0] addr,
	output reg [3:0] label
	);
	
	always @(*)
		case (addr)
			0: label = "L";
			1: label = "D";
			2: label = "I";
			default: label = " ";
		endcase
	
endmodule