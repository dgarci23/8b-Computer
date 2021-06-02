module memory (
	// System Inputs
	input clk,
	input rst,
	// Control Signals
	input WE,
	input MI,
	// Bus
	input [7:0] bus,
	// Output value
	output [7:0] mem_out
	);
	
	wire [3:0] addr;
	
	address_reg address_reg(
		.bus(bus),
		.MI(MI),
		.rst(rst),
		.clk(clk),
		.addr(addr)
	);
	
	reg [7:0] mem_array [0:15];
	
	initial begin
		// Instructions
		mem_array[0] = 8'b00011000; // LDA [8]
		mem_array[1] = 8'b00101000; // ADD [8]
		mem_array[2] = 8'b11100000; // OUT
		mem_array[3] = 8'b01110101; // JC 5 
		mem_array[4] = 8'b01100001; // JMP 1  
		mem_array[5] = 8'b11110000; // HLT
		// Values
		mem_array[8] = 8'b00000010;
	end
	
	always @(posedge clk)
		begin
			if (WE)
				mem_array[addr] <= bus;
		end
		
		assign mem_out = mem_array[addr];
	
endmodule