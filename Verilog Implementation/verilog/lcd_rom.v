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
		.label(add)
	);
	
	lda_rom lda_rom (
		.addr(addr),
		.label(lda)
	);
	
	np_rom np_rom (
		.addr(addr),
		.label(np)
	);
	
	sub_rom sub_rom (
		.addr(addr),
		.label(sub)
	);
	
	sta_rom sta_rom (
		.addr(addr),
		.label(sta)
	);
	
	ldi_rom ldi_rom (
		.addr(addr),
		.label(ldi)
	);
	
	jmp_rom jmp_rom (
		.addr(addr),
		.label(jmp)
	);
	
	jc_rom jc_rom (
		.addr(addr),
		.label(jc)
	);
	
	jz_rom jz_rom (
		.addr(addr),
		.label(jz)
	);
	
	out_rom out_rom (
		.addr(addr),
		.label(out)
	);
	
	hlt_rom hlt_rom (
		.addr(addr),
		.label(hlt)
	);
	
	always @(*)
		case (opcode)
			0001: begin
				lcd_val = {lda, imm4};
				end
			0010: begin
				lcd_val = {add, imm4};
				end
			0011: begin
				lcd_val = {sub, imm4};
				end
			0100: begin
				lcd_val = {sta, imm4};
				end
			0101: begin
				lcd_val = {ldi, imm4};
				end
			0110: begin
				lcd_val = {jmp, imm4};
				end
			0111: begin
				lcd_val = {jc, imm4};
				end
			1000: begin
				lcd_val = {jz, imm4};
				end
			1110: begin
				lcd_val = {out, imm4};
				end
			1111: begin
				lcd_val = {hlt, imm4};
				end
			default: begin
				lcd_val = {np, imm4};
				end
		endcase
	
endmodule
	