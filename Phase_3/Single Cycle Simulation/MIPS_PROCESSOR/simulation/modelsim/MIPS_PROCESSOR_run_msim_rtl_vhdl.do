transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/REGISTERS.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/REGISTER_AND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/MUX_32_1.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/Decoder_5_32.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/D_FF.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/LEFT_SHIFTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/CONTROLLER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/AND_GATE.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/ADDER_ALU.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/ALU_CONTROLLER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/PROGRAM_COUNTER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/ADDER.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/IP_MEMORY.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/ALU.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/MUX.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/SIGN_EXTEND.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/DATA_MEM_IP.vhd}
vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/MIPS_PROCESSOR.vhd}

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Single Cycle Simulation/MIPS_PROCESSOR/TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all
