transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/REGISTERS.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/REGISTER_AND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/MUX_32_1.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/Decoder_5_32.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/D_FF.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/PROGRAM_COUNTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/ADDER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/IP_MEMORY.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/ALU.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/MUX.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/SIGN_EXTEND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/MIPS_PROCESSOR.vhd}

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_SIMULATION/TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all