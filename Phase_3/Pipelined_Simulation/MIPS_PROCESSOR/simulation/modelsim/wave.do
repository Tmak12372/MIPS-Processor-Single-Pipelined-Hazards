onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /testbench/CLK_TB
add wave -noupdate /testbench/REG_WRITE_TB
add wave -noupdate /testbench/ALU_SRC_TB
add wave -noupdate /testbench/MEMTOREG_TB
add wave -noupdate /testbench/MEMREAD_TB
add wave -noupdate /testbench/MEMWRITE_TB
add wave -noupdate /testbench/BRANCH_TB
add wave -noupdate /testbench/BRANCH_TAKEN_TB
add wave -noupdate /testbench/REG_DEST_TB
add wave -noupdate /testbench/STOP_BIT
add wave -noupdate /testbench/ALU_OP_TB
add wave -noupdate -radix unsigned /testbench/READ_DATA_DM_TB
add wave -noupdate -radix unsigned /testbench/WRITE_DATA_TB
add wave -noupdate -radix unsigned /testbench/ALU_RESULT_TB
add wave -noupdate -radix hexadecimal /testbench/INSTRUCTION_TB
add wave -noupdate -radix unsigned /testbench/UUT/U8/A
add wave -noupdate -radix unsigned /testbench/UUT/U8/B
add wave -noupdate -radix unsigned -childformat {{/testbench/UUT/U5/Registers(0) -radix unsigned} {/testbench/UUT/U5/Registers(1) -radix unsigned} {/testbench/UUT/U5/Registers(2) -radix unsigned} {/testbench/UUT/U5/Registers(3) -radix unsigned} {/testbench/UUT/U5/Registers(4) -radix unsigned} {/testbench/UUT/U5/Registers(5) -radix unsigned} {/testbench/UUT/U5/Registers(6) -radix unsigned} {/testbench/UUT/U5/Registers(7) -radix unsigned} {/testbench/UUT/U5/Registers(8) -radix unsigned} {/testbench/UUT/U5/Registers(9) -radix unsigned} {/testbench/UUT/U5/Registers(10) -radix unsigned} {/testbench/UUT/U5/Registers(11) -radix unsigned} {/testbench/UUT/U5/Registers(12) -radix unsigned} {/testbench/UUT/U5/Registers(13) -radix unsigned} {/testbench/UUT/U5/Registers(14) -radix unsigned} {/testbench/UUT/U5/Registers(15) -radix unsigned} {/testbench/UUT/U5/Registers(16) -radix unsigned} {/testbench/UUT/U5/Registers(17) -radix unsigned} {/testbench/UUT/U5/Registers(18) -radix unsigned} {/testbench/UUT/U5/Registers(19) -radix unsigned} {/testbench/UUT/U5/Registers(20) -radix unsigned} {/testbench/UUT/U5/Registers(21) -radix unsigned} {/testbench/UUT/U5/Registers(22) -radix unsigned} {/testbench/UUT/U5/Registers(23) -radix unsigned} {/testbench/UUT/U5/Registers(24) -radix unsigned} {/testbench/UUT/U5/Registers(25) -radix unsigned} {/testbench/UUT/U5/Registers(26) -radix unsigned} {/testbench/UUT/U5/Registers(27) -radix unsigned} {/testbench/UUT/U5/Registers(28) -radix unsigned} {/testbench/UUT/U5/Registers(29) -radix unsigned} {/testbench/UUT/U5/Registers(30) -radix unsigned} {/testbench/UUT/U5/Registers(31) -radix unsigned}} -expand -subitemconfig {/testbench/UUT/U5/Registers(0) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(1) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(2) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(3) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(4) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(5) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(6) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(7) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(8) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(9) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(10) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(11) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(12) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(13) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(14) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(15) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(16) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(17) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(18) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(19) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(20) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(21) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(22) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(23) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(24) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(25) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(26) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(27) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(28) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(29) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(30) {-height 15 -radix unsigned} /testbench/UUT/U5/Registers(31) {-height 15 -radix unsigned}} /testbench/UUT/U5/Registers
add wave -noupdate /testbench/UUT/U22/wren
add wave -noupdate -radix unsigned /testbench/UUT/U22/data
add wave -noupdate /testbench/UUT/U22/rden
add wave -noupdate -radix unsigned /testbench/UUT/U22/address
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 216
configure wave -valuecolwidth 91
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1575 ps}
