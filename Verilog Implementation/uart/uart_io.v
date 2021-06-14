module uart_io (
   input          CLOCK_50,
   input          UART_RXD,
   output         UART_TXD,
	output [7:0]   value,
	output [3:0] 	addr,
	output         serial_WE
   );
 
	wire i_Clk      = CLOCK_50;
	wire i_UART_RX  = UART_RXD;
	wire o_UART_TX;
	assign UART_TXD = o_UART_TX;

	wire [7:0] w_RX_Byte;
	wire w_RX_DV;
	wire w_TX_Active, w_TX_Serial;

	// 25,000,000 / 115,200 = 217
	// 50,000,000 / 115,200 = 434
	// 50,000,000 / 9,600 = 5208
	UART_RX #(.CLKS_PER_BIT(5208)) UART_RX_Inst
	(.i_Clock(i_Clk),
	.i_RX_Serial(i_UART_RX),
	.o_RX_DV(w_RX_DV),
	.o_RX_Byte(w_RX_Byte));
	 
	/* UART_TX #(.CLKS_PER_BIT(5208)) UART_TX_Inst
	(.i_Clock(i_Clk),
	.i_TX_DV(w_RX_DV),      // Pass RX to TX module for loopback
	.i_TX_Byte(w_RX_Byte),  // Pass RX to TX module for loopback
	.o_TX_Active(w_TX_Active),
	.o_TX_Serial(w_TX_Serial),
	.o_TX_Done()); */
	
	uart_pc uart_pc (
		.clk(w_RX_DV),
		.uart_signal(w_RX_Byte),
		.addr(addr),
		.value(value)
	);

	// Drive UART line high when transmitter is not active
	assign o_UART_TX = w_TX_Active ? w_TX_Serial : 1'b1; 
	
	assign serial_WE = w_RX_DV;
	
   
endmodule