/********************************************************** 

This is the main Computer module, it combines all the other 
modules.

Important Things:
	* Program is stored in memory.v
	* Logic stored in control_mem.v and signals.txt


**********************************************************/

module Computer(
	input CLOCK_50,
	input [3:0] KEY,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2
	);

	// Inner Variables
	wire [7:0] bus;
	wire clk;
	wire [2:0] micro;
	wire [3:0] opcode;
	
	// Output Values
	wire [7:0] A_out;
	wire [7:0] B_out;
	wire [7:0] E_out;
	wire [7:0] mem_out;
	wire [7:0] instr_out;
	wire [7:0] PC;
	
	// Control Signals
	wire HLT;
	wire WE, OE, MI;
	wire AI, BI, AO, BO;
	wire EO, SUB;
	wire OI;
	wire CE, CO, J;
	wire II, IO;
	wire FI;
	
	// Flags
	wire ZERO, CARRY, FZ, FC;
	
	// Relations
	assign clk = CLOCK_50 && (~HLT);
	assign rst = KEY[0];
	
	// Registers and ALU
	ALU_Register ALU_Register (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Inputs
		.bus(bus),
		// Control Signals
		.AI(AI),
		.BI(BI),
		.SUB(SUB),
		// Flags
		.CARRY(CARRY),
		.ZERO(ZERO),
		// Output
		.A_out(A_out),
		.B_out(B_out),
		.E_out(E_out)
	);
	
	// Memory
	memory memory (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Control Signals
		.WE(WE),
		.MI(MI),
		// Inputs
		.bus(bus),
		// Outputs
		.mem_out(mem_out)
	);
	
	// Program Counter
	ProgramCounter ProgramCounter (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Control Signals
		.CE(CE),
		.J(J),
		// Input
		.bus(bus[3:0]),
		// Output
		.PC(PC)
	);
	
	// Instruction Register
	InstructionReg InstructionReg (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Control Signals
		.II(II),
		// Inputs
		.bus(bus),
		// Outputs
		.opcode(opcode),
		.instr_out(instr_out)
	);
	
	// Microinstructions
	micro_instr micro_instr (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Output
		.micro(micro)
	);
	
	// Flag Register
	flag_register flag_reg (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Control Signals
		.FI(FI),
		// Inputs
		.CARRY_Z(ZERO),
		.CARRY_C(CARRY),
		// Outputs - Flags
		.FZ(FZ),
		.FC(FC)
	);
	
	// Control Signal Control
	control_logic control_logic(
		// Flags
		.FZ(FZ),
		.FC(FC),
		// Instruction
		.opcode(opcode),
		.micro(micro),
		// Signals - Output
		.signals({HLT, WE, OE, MI, AI, BI, AO, BO, EO, SUB, OI, CE, J, CO, II, IO, FI})
	);
	
	// Output Control
	out_mux out_mux (
		// Output Control Signals
		.out_signals({IO, CO, EO, BO, AO, OE}),
		// Output Signals
		.A_out(A_out),
		.B_out(B_out),
		.E_out(E_out),
		.mem_out(mem_out),
		.PC(PC),
		.instr_out(instr_out),
		// Selected signal in the bus
		.sel_signal(bus)
	);
		
	
	// Output Module
	output_module output_module (
		// System Inputs
		.clk(clk),
		.rst(rst),
		// Inputs
		.bus(bus),
		// Control Signals
		.OI(OI),
		// Seven segment display
		.u(HEX0),
		.t(HEX1),
		.h(HEX2)
	);
	
endmodule