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
		.clk(clk),
		.rst(rst),
		
		.bus(bus),
		
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
		.clk(clk),
		.rst(rst),
		.WE(WE),
		.MI(MI),
		.bus(bus),
		.mem_out(mem_out)
	);
	
	// Program Counter
	ProgramCounter ProgramCounter (
		.clk(clk),
		.CE(CE),
		.J(J),
		.bus(bus[3:0]),
		.rst(rst),
		.PC(PC)
	);
	
	// Instruction Register
	InstructionReg InstructionReg (
		.clk(clk),
		.rst(rst),
		.II(II),
		.bus(bus),
		.opcode(opcode),
		.instr_out(instr_out)
	);
	
	// Microinstructions
	micro_instr micro_instr (
		.clk(clk),
		.rst(rst),
		.micro(micro)
	);
	
	// Flag Register
	flag_register flag_reg (
		.clk(clk),
		.rst(rst),
		.FI(FI),
		.CARRY_Z(ZERO),
		.CARRY_C(CARRY),
		.FZ(FZ),
		.FC(FC)
	);
	
	// Control Signal Control
	control_logic control_logic(
		.FZ(FZ),
		.FC(FC),
		.opcode(opcode),
		.micro(micro),
		.signals({HLT, WE, OE, MI, AI, BI, AO, BO, EO, SUB, OI, CE, J, CO, II, IO, FI})
	);
	
	// Output Control
	out_mux out_mux (
		.out_signals({IO, PC, EO, BO, AO, OE}),
		.A_out(A_out),
		.B_out(B_out),
		.E_out(E_out),
		.mem_out(mem_out),
		.PC(PC),
		.instr_out(instr_out),
		.sel_signal(bus)
	);
		
	
	// Output Module
	output_module output_module (
		.bus(bus),
		.OI(OI),
		.clk(clk),
		.rst(rst),
		.u(HEX0),
		.t(HEX1),
		.h(HEX2)
	);
	
endmodule