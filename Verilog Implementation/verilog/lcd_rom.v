module lcd_rom (
	input [4:0] addr,
	input [3:0] opcode,
	input [3:0] imm4,
	output reg [7:0] lcd_val
	);
	
	wire [7:0] lda;
	wire [7:0] add;
	wire [7:0] np;
	wire [7:0] sub;
	wire [7:0] sta;
	wire [7:0] ldi;
	wire [7:0] jmp;
	wire [7:0] jc;
	wire [7:0] jz;
	wire [7:0] out;
	wire [7:0] hlt;
	
	add_rom add_rom (
		.addr(addr),
		.label(add),
		.imm4(imm4)
	);
	
	lda_rom lda_rom (
		.addr(addr),
		.label(lda),
		.imm4(imm4)
	);
	
	np_rom np_rom (
		.addr(addr),
		.label(np),
		.imm4(imm4)
	);
	
	sub_rom sub_rom (
		.addr(addr),
		.label(sub),
		.imm4(imm4)
	);
	
	sta_rom sta_rom (
		.addr(addr),
		.label(sta),
		.imm4(imm4)
	);
	
	ldi_rom ldi_rom (
		.addr(addr),
		.label(ldi),
		.imm4(imm4)
	);
	
	jmp_rom jmp_rom (
		.addr(addr),
		.label(jmp),
		.imm4(imm4)
	);
	
	jc_rom jc_rom (
		.addr(addr),
		.label(jc),
		.imm4(imm4)
	);
	
	jz_rom jz_rom (
		.addr(addr),
		.label(jz),
		.imm4(imm4)
	);
	
	out_rom out_rom (
		.addr(addr),
		.label(out),
		.imm4(imm4)
	);
	
	hlt_rom hlt_rom (
		.addr(addr),
		.label(hlt),
		.imm4(imm4)
	);
	
	always @(*)
		case (opcode)
			4'b0001: lcd_val = lda;
			4'b0010: lcd_val = add;
			4'b0011: lcd_val = sub;
			4'b0100: lcd_val = sta;
			4'b0101: lcd_val = ldi;
			4'b0110: lcd_val = jmp;
			4'b0111: lcd_val = jc;
			4'b1000: lcd_val = jz;
			4'b1110: lcd_val = out;
			4'b1111: lcd_val = hlt;
			default: lcd_val = np;
				
		endcase
	
endmodule
	