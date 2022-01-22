transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/MIPS_PROCESSOR.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/PROGRAM_COUNTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/ADDER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/INSTRUCTION_REGISTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/IP_MEMORY.vhd}

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_1/MIPS_PROCESSOR/TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all
