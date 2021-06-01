module memory (
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
	
	wire [7:0] addr;
	
	address_reg address_reg(
		.bus(bus),
		.MI(MI),
		.rst(rst),
		.clk(clk),
		.addr(addr)
	);
	
	reg [7:0] mem_array [0:255];
	
	always @(posedge clk)
		begin
			if (WE)
				mem_array[addr] <= bus;
		end
		
		assign mem_out = mem_array[addr];
	
endmodule