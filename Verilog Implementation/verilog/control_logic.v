module control_logic (
	// Flags
	input FZ,
	input FC,
	// Opcode
	input [3:0] opcode,
	// Microinstructions
	input [2:0] micro,
	// Output Control Signals
	output [16:0] signals
	);
	
	wire [8:0] addr = {FZ, FC, opcode, micro};
	
	control_mem control_mem (
		.addr(addr),
		.data_out(signals)
	);
	

endmodule	