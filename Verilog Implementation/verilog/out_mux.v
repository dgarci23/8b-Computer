module out_mux (
	input [5:0] out_signals,
	// Output values
	input [7:0] A_out,
	input [7:0] B_out,
	input [7:0] E_out,
	input [7:0] mem_out,
	input [7:0] PC,
	input [7:0] instr_out,
	// Selected signal
	output reg [7:0] sel_signal
	);
	
	always @(*)
		case (out_signals)
			1: begin
				sel_signal <= mem_out;
				end
			2: begin
				sel_signal <= A_out;
				end
			4: begin
				sel_signal <= B_out;
				end
			8: begin
				sel_signal <= E_out;
				end
			16: begin
				sel_signal <= PC;
				end
			32: begin
				sel_signal <= instr_out;
				end
			default: begin
				sel_signal <= 0;
				end
		endcase
		
endmodule
