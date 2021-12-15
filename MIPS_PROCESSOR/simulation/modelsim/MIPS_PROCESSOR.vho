-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/14/2021 18:14:49"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_PROCESSOR IS
    PORT (
	CLK : IN std_logic;
	INSTRUCTION_OUT : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END MIPS_PROCESSOR;

-- Design Ports Information
-- INSTRUCTION_OUT[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[8]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[10]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[12]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[15]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[16]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[17]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[18]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[19]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[20]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[21]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[22]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[23]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[25]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[26]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[27]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[28]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[29]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[30]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[31]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_PROCESSOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INSTRUCTION_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \INSTRUCTION_OUT[0]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[1]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[2]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[3]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[4]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[5]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[6]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[7]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[8]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[9]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[10]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[11]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[12]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[13]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[14]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[15]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[16]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[17]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[18]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[19]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[20]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[21]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[22]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[23]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[24]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[25]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[26]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[27]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[28]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[29]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[30]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT[31]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[0]~0_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[1]~7_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[1]~8\ : std_logic;
SIGNAL \U1|ADDR_OUT[2]~9_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[2]~10\ : std_logic;
SIGNAL \U1|ADDR_OUT[3]~11_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[3]~12\ : std_logic;
SIGNAL \U1|ADDR_OUT[4]~13_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[4]~14\ : std_logic;
SIGNAL \U1|ADDR_OUT[5]~15_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[5]~16\ : std_logic;
SIGNAL \U1|ADDR_OUT[6]~17_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \U1|ADDR_OUT[6]~18\ : std_logic;
SIGNAL \U1|ADDR_OUT[7]~19_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|ADDR_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|ADDR_OUT\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
INSTRUCTION_OUT <= ww_INSTRUCTION_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U3|ADDR_OUT\(7) & \U3|ADDR_OUT\(6) & \U3|ADDR_OUT\(5) & \U3|ADDR_OUT\(4) & \U3|ADDR_OUT\(3) & \U3|ADDR_OUT\(2) & \U3|ADDR_OUT\(1) & \U3|ADDR_OUT\(0));

\U3|INST_OUT\(0) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U3|INST_OUT\(1) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U3|INST_OUT\(2) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U3|INST_OUT\(3) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U3|INST_OUT\(4) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U3|INST_OUT\(5) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U3|INST_OUT\(6) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U3|INST_OUT\(7) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U3|INST_OUT\(8) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U3|INST_OUT\(9) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U3|INST_OUT\(10) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U3|INST_OUT\(11) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U3|INST_OUT\(12) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U3|INST_OUT\(13) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U3|ADDR_OUT\(7) & \U3|ADDR_OUT\(6) & \U3|ADDR_OUT\(5) & \U3|ADDR_OUT\(4) & \U3|ADDR_OUT\(3) & \U3|ADDR_OUT\(2) & \U3|ADDR_OUT\(1) & \U3|ADDR_OUT\(0));

\U3|INST_OUT\(14) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\U3|INST_OUT\(15) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\U3|INST_OUT\(16) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\U3|INST_OUT\(17) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\U3|INST_OUT\(18) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\U3|INST_OUT\(19) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\U3|INST_OUT\(20) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\U3|INST_OUT\(21) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\U3|INST_OUT\(22) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\U3|INST_OUT\(23) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\U3|INST_OUT\(24) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\U3|INST_OUT\(25) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\U3|INST_OUT\(26) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\U3|INST_OUT\(27) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\U3|INST_OUT\(28) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\U3|INST_OUT\(29) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\U3|INST_OUT\(30) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\U3|INST_OUT\(31) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y26_N9
\INSTRUCTION_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(0),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\INSTRUCTION_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(1),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\INSTRUCTION_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(2),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\INSTRUCTION_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(3),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\INSTRUCTION_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(4),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\INSTRUCTION_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(5),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\INSTRUCTION_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(6),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\INSTRUCTION_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(7),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\INSTRUCTION_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(8),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\INSTRUCTION_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(9),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\INSTRUCTION_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(10),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\INSTRUCTION_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(11),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\INSTRUCTION_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(12),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\INSTRUCTION_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(13),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\INSTRUCTION_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(14),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\INSTRUCTION_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(15),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\INSTRUCTION_OUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(16),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[16]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\INSTRUCTION_OUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(17),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[17]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\INSTRUCTION_OUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(18),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[18]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\INSTRUCTION_OUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(19),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[19]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\INSTRUCTION_OUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(20),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[20]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\INSTRUCTION_OUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(21),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\INSTRUCTION_OUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(22),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[22]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\INSTRUCTION_OUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(23),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[23]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\INSTRUCTION_OUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(24),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[24]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\INSTRUCTION_OUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(25),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[25]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\INSTRUCTION_OUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(26),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[26]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\INSTRUCTION_OUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(27),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[27]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\INSTRUCTION_OUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(28),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[28]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\INSTRUCTION_OUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(29),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[29]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\INSTRUCTION_OUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(30),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[30]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\INSTRUCTION_OUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y31_N28
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X4_Y28_N12
\U3|ADDR_OUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[0]~0_combout\ = !\U3|ADDR_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|ADDR_OUT\(0),
	combout => \U3|ADDR_OUT[0]~0_combout\);

-- Location: FF_X4_Y28_N13
\U3|ADDR_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(0));

-- Location: LCCOMB_X4_Y28_N16
\U1|ADDR_OUT[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[1]~7_combout\ = (\U3|ADDR_OUT\(0) & (\U1|ADDR_OUT\(1) & VCC)) # (!\U3|ADDR_OUT\(0) & (\U1|ADDR_OUT\(1) $ (VCC)))
-- \U1|ADDR_OUT[1]~8\ = CARRY((!\U3|ADDR_OUT\(0) & \U1|ADDR_OUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_OUT\(0),
	datab => \U1|ADDR_OUT\(1),
	datad => VCC,
	combout => \U1|ADDR_OUT[1]~7_combout\,
	cout => \U1|ADDR_OUT[1]~8\);

-- Location: FF_X4_Y28_N17
\U1|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(1));

-- Location: LCCOMB_X4_Y28_N10
\U3|ADDR_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[1]~feeder_combout\ = \U1|ADDR_OUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(1),
	combout => \U3|ADDR_OUT[1]~feeder_combout\);

-- Location: FF_X4_Y28_N11
\U3|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(1));

-- Location: LCCOMB_X4_Y28_N18
\U1|ADDR_OUT[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[2]~9_combout\ = (\U1|ADDR_OUT\(2) & (!\U1|ADDR_OUT[1]~8\)) # (!\U1|ADDR_OUT\(2) & ((\U1|ADDR_OUT[1]~8\) # (GND)))
-- \U1|ADDR_OUT[2]~10\ = CARRY((!\U1|ADDR_OUT[1]~8\) # (!\U1|ADDR_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(2),
	datad => VCC,
	cin => \U1|ADDR_OUT[1]~8\,
	combout => \U1|ADDR_OUT[2]~9_combout\,
	cout => \U1|ADDR_OUT[2]~10\);

-- Location: FF_X4_Y28_N19
\U1|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(2));

-- Location: LCCOMB_X4_Y28_N8
\U3|ADDR_OUT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[2]~feeder_combout\ = \U1|ADDR_OUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(2),
	combout => \U3|ADDR_OUT[2]~feeder_combout\);

-- Location: FF_X4_Y28_N9
\U3|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(2));

-- Location: LCCOMB_X4_Y28_N20
\U1|ADDR_OUT[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[3]~11_combout\ = (\U1|ADDR_OUT\(3) & (\U1|ADDR_OUT[2]~10\ $ (GND))) # (!\U1|ADDR_OUT\(3) & (!\U1|ADDR_OUT[2]~10\ & VCC))
-- \U1|ADDR_OUT[3]~12\ = CARRY((\U1|ADDR_OUT\(3) & !\U1|ADDR_OUT[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(3),
	datad => VCC,
	cin => \U1|ADDR_OUT[2]~10\,
	combout => \U1|ADDR_OUT[3]~11_combout\,
	cout => \U1|ADDR_OUT[3]~12\);

-- Location: FF_X4_Y28_N21
\U1|ADDR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(3));

-- Location: LCCOMB_X4_Y28_N2
\U3|ADDR_OUT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[3]~feeder_combout\ = \U1|ADDR_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(3),
	combout => \U3|ADDR_OUT[3]~feeder_combout\);

-- Location: FF_X4_Y28_N3
\U3|ADDR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(3));

-- Location: LCCOMB_X4_Y28_N22
\U1|ADDR_OUT[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[4]~13_combout\ = (\U1|ADDR_OUT\(4) & (!\U1|ADDR_OUT[3]~12\)) # (!\U1|ADDR_OUT\(4) & ((\U1|ADDR_OUT[3]~12\) # (GND)))
-- \U1|ADDR_OUT[4]~14\ = CARRY((!\U1|ADDR_OUT[3]~12\) # (!\U1|ADDR_OUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(4),
	datad => VCC,
	cin => \U1|ADDR_OUT[3]~12\,
	combout => \U1|ADDR_OUT[4]~13_combout\,
	cout => \U1|ADDR_OUT[4]~14\);

-- Location: FF_X4_Y28_N23
\U1|ADDR_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(4));

-- Location: LCCOMB_X4_Y28_N0
\U3|ADDR_OUT[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[4]~feeder_combout\ = \U1|ADDR_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ADDR_OUT\(4),
	combout => \U3|ADDR_OUT[4]~feeder_combout\);

-- Location: FF_X4_Y28_N1
\U3|ADDR_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(4));

-- Location: LCCOMB_X4_Y28_N24
\U1|ADDR_OUT[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[5]~15_combout\ = (\U1|ADDR_OUT\(5) & (\U1|ADDR_OUT[4]~14\ $ (GND))) # (!\U1|ADDR_OUT\(5) & (!\U1|ADDR_OUT[4]~14\ & VCC))
-- \U1|ADDR_OUT[5]~16\ = CARRY((\U1|ADDR_OUT\(5) & !\U1|ADDR_OUT[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(5),
	datad => VCC,
	cin => \U1|ADDR_OUT[4]~14\,
	combout => \U1|ADDR_OUT[5]~15_combout\,
	cout => \U1|ADDR_OUT[5]~16\);

-- Location: FF_X4_Y28_N25
\U1|ADDR_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(5));

-- Location: LCCOMB_X4_Y28_N6
\U3|ADDR_OUT[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[5]~feeder_combout\ = \U1|ADDR_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(5),
	combout => \U3|ADDR_OUT[5]~feeder_combout\);

-- Location: FF_X4_Y28_N7
\U3|ADDR_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(5));

-- Location: LCCOMB_X4_Y28_N26
\U1|ADDR_OUT[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[6]~17_combout\ = (\U1|ADDR_OUT\(6) & (!\U1|ADDR_OUT[5]~16\)) # (!\U1|ADDR_OUT\(6) & ((\U1|ADDR_OUT[5]~16\) # (GND)))
-- \U1|ADDR_OUT[6]~18\ = CARRY((!\U1|ADDR_OUT[5]~16\) # (!\U1|ADDR_OUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(6),
	datad => VCC,
	cin => \U1|ADDR_OUT[5]~16\,
	combout => \U1|ADDR_OUT[6]~17_combout\,
	cout => \U1|ADDR_OUT[6]~18\);

-- Location: FF_X4_Y28_N27
\U1|ADDR_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(6));

-- Location: LCCOMB_X4_Y28_N4
\U3|ADDR_OUT[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[6]~feeder_combout\ = \U1|ADDR_OUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ADDR_OUT\(6),
	combout => \U3|ADDR_OUT[6]~feeder_combout\);

-- Location: FF_X4_Y28_N5
\U3|ADDR_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(6));

-- Location: LCCOMB_X4_Y28_N28
\U1|ADDR_OUT[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDR_OUT[7]~19_combout\ = \U1|ADDR_OUT[6]~18\ $ (!\U1|ADDR_OUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(7),
	cin => \U1|ADDR_OUT[6]~18\,
	combout => \U1|ADDR_OUT[7]~19_combout\);

-- Location: FF_X4_Y28_N29
\U1|ADDR_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ADDR_OUT[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(7));

-- Location: LCCOMB_X4_Y28_N30
\U3|ADDR_OUT[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[7]~feeder_combout\ = \U1|ADDR_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(7),
	combout => \U3|ADDR_OUT[7]~feeder_combout\);

-- Location: FF_X4_Y28_N31
\U3|ADDR_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|ADDR_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(7));

-- Location: M9K_X5_Y28_N0
\U4|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040540064020400001000002814080481810",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Assembly.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_a8s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y28_N0
\U4|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016A5B524012A444A86C0D005B1021140425",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Assembly.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_a8s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_INSTRUCTION_OUT(0) <= \INSTRUCTION_OUT[0]~output_o\;

ww_INSTRUCTION_OUT(1) <= \INSTRUCTION_OUT[1]~output_o\;

ww_INSTRUCTION_OUT(2) <= \INSTRUCTION_OUT[2]~output_o\;

ww_INSTRUCTION_OUT(3) <= \INSTRUCTION_OUT[3]~output_o\;

ww_INSTRUCTION_OUT(4) <= \INSTRUCTION_OUT[4]~output_o\;

ww_INSTRUCTION_OUT(5) <= \INSTRUCTION_OUT[5]~output_o\;

ww_INSTRUCTION_OUT(6) <= \INSTRUCTION_OUT[6]~output_o\;

ww_INSTRUCTION_OUT(7) <= \INSTRUCTION_OUT[7]~output_o\;

ww_INSTRUCTION_OUT(8) <= \INSTRUCTION_OUT[8]~output_o\;

ww_INSTRUCTION_OUT(9) <= \INSTRUCTION_OUT[9]~output_o\;

ww_INSTRUCTION_OUT(10) <= \INSTRUCTION_OUT[10]~output_o\;

ww_INSTRUCTION_OUT(11) <= \INSTRUCTION_OUT[11]~output_o\;

ww_INSTRUCTION_OUT(12) <= \INSTRUCTION_OUT[12]~output_o\;

ww_INSTRUCTION_OUT(13) <= \INSTRUCTION_OUT[13]~output_o\;

ww_INSTRUCTION_OUT(14) <= \INSTRUCTION_OUT[14]~output_o\;

ww_INSTRUCTION_OUT(15) <= \INSTRUCTION_OUT[15]~output_o\;

ww_INSTRUCTION_OUT(16) <= \INSTRUCTION_OUT[16]~output_o\;

ww_INSTRUCTION_OUT(17) <= \INSTRUCTION_OUT[17]~output_o\;

ww_INSTRUCTION_OUT(18) <= \INSTRUCTION_OUT[18]~output_o\;

ww_INSTRUCTION_OUT(19) <= \INSTRUCTION_OUT[19]~output_o\;

ww_INSTRUCTION_OUT(20) <= \INSTRUCTION_OUT[20]~output_o\;

ww_INSTRUCTION_OUT(21) <= \INSTRUCTION_OUT[21]~output_o\;

ww_INSTRUCTION_OUT(22) <= \INSTRUCTION_OUT[22]~output_o\;

ww_INSTRUCTION_OUT(23) <= \INSTRUCTION_OUT[23]~output_o\;

ww_INSTRUCTION_OUT(24) <= \INSTRUCTION_OUT[24]~output_o\;

ww_INSTRUCTION_OUT(25) <= \INSTRUCTION_OUT[25]~output_o\;

ww_INSTRUCTION_OUT(26) <= \INSTRUCTION_OUT[26]~output_o\;

ww_INSTRUCTION_OUT(27) <= \INSTRUCTION_OUT[27]~output_o\;

ww_INSTRUCTION_OUT(28) <= \INSTRUCTION_OUT[28]~output_o\;

ww_INSTRUCTION_OUT(29) <= \INSTRUCTION_OUT[29]~output_o\;

ww_INSTRUCTION_OUT(30) <= \INSTRUCTION_OUT[30]~output_o\;

ww_INSTRUCTION_OUT(31) <= \INSTRUCTION_OUT[31]~output_o\;
END structure;


