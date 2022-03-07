transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/CLK_DIVIDER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/bcd_7segment.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/REGISTERS.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/REGISTER_AND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/MUX_32_1.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/Decoder_5_32.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/D_FF.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/PROGRAM_COUNTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/ADDER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/IP_MEMORY.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/ALU.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/MUX.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/SIGN_EXTEND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/MIPS_PROCESSOR.vhd}

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_2/MIPS_PROCESSOR_HARDWARE/TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all
