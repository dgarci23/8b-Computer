module uart_pc (
	input clk,
	input [7:0] uart_signal,
	output [7:0] value,
	output reg [3:0] addr,
	output [3:0] led
	);
	
	assign value[7:0] = uart_signal[7:0];
	
	reg [1:0] rst;
	
	assign led = addr;
	
	always @(posedge clk)
		begin
			if (uart_signal == 0)
				addr <= -1;
			else
				addr <= addr + 1;
		end
	
endmodule