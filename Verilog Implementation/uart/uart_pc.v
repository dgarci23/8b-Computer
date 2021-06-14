module uart_pc (
	input clk,
	input [7:0] uart_signal,
	output [7:0] value,
	output reg [3:0] addr
	);
	
	assign value[7:0] = uart_signal[7:0];
	
	always @(posedge clk)
		begin
			if (uart_signal == 0)
				addr <= -1;
			else
				addr <= addr + 1;
		end
	
endmodule