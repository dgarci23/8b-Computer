module memory (
	// System Inputs
	input clk,
	input rst,
	// Manual Control Signal
	input manual_WE,
	// Control Signals
	input WE,
	input MI,
	// Bus
	input [7:0] bus,
	// Manual values
	input [3:0] manual_addr,
	input [7:0] manual_value,
	// Selector,
	input SEL,
	// Output value
	output [7:0] mem_out
	);
	
	wire [3:0] bus_addr;
	wire [3:0] addr_out;
	wire [7:0] value;
	wire sel_WE;
	
	// Address selector
	mux_addr mux_addr (
		.in0(bus_addr),
		.in1(manual_addr),
		.SEL(SEL),
		.out(addr_out)
	);
	
	// Value selector
	mux_val mux_val (
		.in0(bus),
		.in1(manual_value),
		.SEL(SEL),
		.out(value)
	);
	
	// Control signal selector
	mux_write mux_write (
		.WE(WE),
		.manual_WE(manual_WE),
		.SEL(SEL),
		.sel_WE(sel_WE)
	);
	
	// Address Register
	address_reg address_reg(
		.bus(bus[3:0]),
		.MI(MI),
		.rst(rst),
		.clk(clk),
		.addr(bus_addr)
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
			if (sel_WE)
				mem_array[addr_out] <= value;
		end
		
		assign mem_out = mem_array[addr_out];
	
endmodule