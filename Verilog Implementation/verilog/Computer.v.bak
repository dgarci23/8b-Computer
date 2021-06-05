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
	input [17:0] SW,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [17:0] LEDR
	);

	// Inner Variables
	wire [7:0] bus;
	wire clk, AUTO, MANUAL, SELECTOR;
	wire rst;
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
	assign AUTO = CLOCK_50 && (~HLT);
	assign MANUAL = ~KEY[1] && (~HLT); 
	assign LEDR[1] = MANUAL;
	assign SELECTOR = SW[0];
	assign LEDR[2] = SELECTOR;
	assign rst = ~KEY[0];
	assign LEDR[0] = rst;
	assign LEDR[3] = ~HLT;
	
	// Manual address and value for the memory
	wire [3:0] manual_addr = SW[17:14];
	wire [7:0] manual_value = SW[13:6];
	
	wire manual_WE = ~KEY[2];
	wire PROG = SW[5];
	
	assign LEDR[17:14] = SW[17:14];
	assign LEDR[13:6] = SW[13:6];
	
	assign LEDR[4] = manual_WE;
	assign LEDR[5] = PROG;
	
	// Clock Module
	clk_module clk_module (
		.AUTO(AUTO),
		.MANUAL(MANUAL),
		.PROGRAM(PROG),
		.manual_WE(manual_WE),
		.SELECTOR(SELECTOR),
		.CLK(clk)
	);
	
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
		// Manual control signals
		.manual_WE(manual_WE),
		// Control Signals
		.WE(WE),
		.MI(MI),
		// Inputs
		.bus(bus),
		// Manual values
		.manual_addr(manual_addr),
		.manual_value(manual_value),
		// Selector
		.SEL(PROG),
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