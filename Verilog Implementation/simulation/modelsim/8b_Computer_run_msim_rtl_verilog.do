transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/mux_write.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/mux_addr.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/register.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/register_array.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/ALU_Register.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/InstructionReg.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/address_reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/flag_register.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/Computer.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/seven_seg.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/output_reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/output_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/micro_instr.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/control_logic.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/out_mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/clk_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/mux_val.v}
vlog -vlog01compat -work work +incdir+C:/Users/david/Desktop/8b-Computer/Verilog\ Implementation {C:/Users/david/Desktop/8b-Computer/Verilog Implementation/control_mem.v}

