onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/DUT/CLK
add wave -noupdate /testbench/DUT/MEMREAD
add wave -noupdate /testbench/DUT/MEMTOREG
add wave -noupdate /testbench/DUT/MEMWRITE
add wave -noupdate /testbench/DUT/BRANCH
add wave -noupdate /testbench/DUT/REG_DEST
add wave -noupdate /testbench/DUT/REG_WRITE
add wave -noupdate -radix hexadecimal /testbench/DUT/INSTRUCTION_OUT
add wave -noupdate -radix unsigned /testbench/DUT/ALU_OUTPUT
add wave -noupdate -radix unsigned /testbench/DUT/WRITE_DATA
add wave -noupdate -radix unsigned -childformat {{/testbench/DUT/U5/Registers(0) -radix unsigned} {/testbench/DUT/U5/Registers(1) -radix unsigned} {/testbench/DUT/U5/Registers(2) -radix unsigned} {/testbench/DUT/U5/Registers(3) -radix unsigned} {/testbench/DUT/U5/Registers(4) -radix unsigned} {/testbench/DUT/U5/Registers(5) -radix unsigned} {/testbench/DUT/U5/Registers(6) -radix unsigned} {/testbench/DUT/U5/Registers(7) -radix unsigned} {/testbench/DUT/U5/Registers(8) -radix unsigned} {/testbench/DUT/U5/Registers(9) -radix unsigned} {/testbench/DUT/U5/Registers(10) -radix unsigned} {/testbench/DUT/U5/Registers(11) -radix unsigned} {/testbench/DUT/U5/Registers(12) -radix unsigned} {/testbench/DUT/U5/Registers(13) -radix unsigned} {/testbench/DUT/U5/Registers(14) -radix unsigned} {/testbench/DUT/U5/Registers(15) -radix unsigned} {/testbench/DUT/U5/Registers(16) -radix unsigned} {/testbench/DUT/U5/Registers(17) -radix unsigned} {/testbench/DUT/U5/Registers(18) -radix unsigned} {/testbench/DUT/U5/Registers(19) -radix unsigned} {/testbench/DUT/U5/Registers(20) -radix unsigned} {/testbench/DUT/U5/Registers(21) -radix unsigned} {/testbench/DUT/U5/Registers(22) -radix unsigned} {/testbench/DUT/U5/Registers(23) -radix unsigned} {/testbench/DUT/U5/Registers(24) -radix unsigned} {/testbench/DUT/U5/Registers(25) -radix unsigned} {/testbench/DUT/U5/Registers(26) -radix unsigned} {/testbench/DUT/U5/Registers(27) -radix unsigned} {/testbench/DUT/U5/Registers(28) -radix unsigned} {/testbench/DUT/U5/Registers(29) -radix unsigned} {/testbench/DUT/U5/Registers(30) -radix unsigned} {/testbench/DUT/U5/Registers(31) -radix unsigned}} -expand -subitemconfig {/testbench/DUT/U5/Registers(0) {-radix unsigned} /testbench/DUT/U5/Registers(1) {-radix unsigned} /testbench/DUT/U5/Registers(2) {-radix unsigned} /testbench/DUT/U5/Registers(3) {-radix unsigned} /testbench/DUT/U5/Registers(4) {-radix unsigned} /testbench/DUT/U5/Registers(5) {-radix unsigned} /testbench/DUT/U5/Registers(6) {-radix unsigned} /testbench/DUT/U5/Registers(7) {-radix unsigned} /testbench/DUT/U5/Registers(8) {-radix unsigned} /testbench/DUT/U5/Registers(9) {-radix unsigned} /testbench/DUT/U5/Registers(10) {-radix unsigned} /testbench/DUT/U5/Registers(11) {-radix unsigned} /testbench/DUT/U5/Registers(12) {-radix unsigned} /testbench/DUT/U5/Registers(13) {-radix unsigned} /testbench/DUT/U5/Registers(14) {-radix unsigned} /testbench/DUT/U5/Registers(15) {-radix unsigned} /testbench/DUT/U5/Registers(16) {-radix unsigned} /testbench/DUT/U5/Registers(17) {-radix unsigned} /testbench/DUT/U5/Registers(18) {-radix unsigned} /testbench/DUT/U5/Registers(19) {-radix unsigned} /testbench/DUT/U5/Registers(20) {-radix unsigned} /testbench/DUT/U5/Registers(21) {-radix unsigned} /testbench/DUT/U5/Registers(22) {-radix unsigned} /testbench/DUT/U5/Registers(23) {-radix unsigned} /testbench/DUT/U5/Registers(24) {-radix unsigned} /testbench/DUT/U5/Registers(25) {-radix unsigned} /testbench/DUT/U5/Registers(26) {-radix unsigned} /testbench/DUT/U5/Registers(27) {-radix unsigned} /testbench/DUT/U5/Registers(28) {-radix unsigned} /testbench/DUT/U5/Registers(29) {-radix unsigned} /testbench/DUT/U5/Registers(30) {-radix unsigned} /testbench/DUT/U5/Registers(31) {-radix unsigned}} /testbench/DUT/U5/Registers
add wave -noupdate -radix unsigned /testbench/DUT/U18/address
add wave -noupdate -radix unsigned /testbench/DUT/U18/data
add wave -noupdate -radix unsigned /testbench/DUT/U18/q
add wave -noupdate /testbench/DUT/U18/rden
add wave -noupdate /testbench/DUT/U18/wren
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
