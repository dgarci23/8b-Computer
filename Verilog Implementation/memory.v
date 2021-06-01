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
		mem_array[0] = 8'b00011000;
		mem_array[1] = 8'b00101000;
		mem_array[2] = 8'b11100000;
		mem_array[3] = 8'b11110000;
		mem_array[8] = 8'b00000001;
	end
	
	always @(posedge clk)
		begin
			if (WE)
				mem_array[addr] <= bus;
		end
		
		assign mem_out = mem_array[addr];
	
endmodule