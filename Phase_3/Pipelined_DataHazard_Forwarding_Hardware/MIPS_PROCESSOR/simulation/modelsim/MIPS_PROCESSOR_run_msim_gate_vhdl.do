transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MIPS_PROCESSOR.vho}

vcom -93 -work work {C:/Users/Tyler McCormick/Desktop/ECE 4120/ECE-4210-MIPS-PROCESSOR/Phase_3/Pipelined_DataHazard_Forwarding/MIPS_PROCESSOR/TESTBENCH.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all
