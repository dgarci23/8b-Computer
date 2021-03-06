module control_mem (
	input [8:0] addr,
	output reg [16:0] data_out
	);
	
	reg [16:0] content [0:511];
	
	initial $readmemb("C:/Users/david/Desktop/Logic Design Projetcs/8b-Computer/Verilog Implementation/signals.txt", content);
	
	always @(*)
		begin
			data_out <= content[addr];
		end

endmodule