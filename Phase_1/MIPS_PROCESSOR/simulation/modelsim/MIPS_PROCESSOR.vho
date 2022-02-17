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

-- DATE "02/17/2022 13:08:20"

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
	INSTRUCTION_OUT : OUT std_logic_vector(31 DOWNTO 0);
	PC_INPUT : OUT std_logic_vector(5 DOWNTO 0);
	PC_OUTPUT : OUT std_logic_vector(5 DOWNTO 0);
	READ_ADDRESS : OUT std_logic_vector(7 DOWNTO 0)
	);
END MIPS_PROCESSOR;

-- Design Ports Information
-- INSTRUCTION_OUT[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[11]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[16]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[18]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[20]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[23]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[24]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[26]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[27]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[28]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[29]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[30]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_ADDRESS[7]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PC_INPUT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC_OUTPUT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_READ_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \PC_INPUT[0]~output_o\ : std_logic;
SIGNAL \PC_INPUT[1]~output_o\ : std_logic;
SIGNAL \PC_INPUT[2]~output_o\ : std_logic;
SIGNAL \PC_INPUT[3]~output_o\ : std_logic;
SIGNAL \PC_INPUT[4]~output_o\ : std_logic;
SIGNAL \PC_INPUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[0]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[1]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[2]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[3]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[4]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[5]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[6]~output_o\ : std_logic;
SIGNAL \READ_ADDRESS[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[2]~0_combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[2]~1\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[3]~2_combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[3]~3\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[4]~4_combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[4]~5\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[5]~6_combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[5]~7\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[6]~8_combout\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[6]~9\ : std_logic;
SIGNAL \U2|ADDRESS_OUT[7]~10_combout\ : std_logic;
SIGNAL \U3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|ADDRESS_OUT\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
INSTRUCTION_OUT <= ww_INSTRUCTION_OUT;
PC_INPUT <= ww_PC_INPUT;
PC_OUTPUT <= ww_PC_OUTPUT;
READ_ADDRESS <= ww_READ_ADDRESS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|ADDRESS_OUT\(7) & \U1|ADDRESS_OUT\(6) & \U1|ADDRESS_OUT\(5) & \U1|ADDRESS_OUT\(4) & \U1|ADDRESS_OUT\(3) & \U1|ADDRESS_OUT\(2) & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|q_a\(0) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U3|altsyncram_component|auto_generated|q_a\(1) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U3|altsyncram_component|auto_generated|q_a\(2) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U3|altsyncram_component|auto_generated|q_a\(3) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U3|altsyncram_component|auto_generated|q_a\(4) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U3|altsyncram_component|auto_generated|q_a\(5) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U3|altsyncram_component|auto_generated|q_a\(6) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U3|altsyncram_component|auto_generated|q_a\(7) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U3|altsyncram_component|auto_generated|q_a\(8) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U3|altsyncram_component|auto_generated|q_a\(9) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U3|altsyncram_component|auto_generated|q_a\(10) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U3|altsyncram_component|auto_generated|q_a\(11) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U3|altsyncram_component|auto_generated|q_a\(12) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U3|altsyncram_component|auto_generated|q_a\(13) <= \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U1|ADDRESS_OUT\(7) & \U1|ADDRESS_OUT\(6) & \U1|ADDRESS_OUT\(5) & \U1|ADDRESS_OUT\(4) & \U1|ADDRESS_OUT\(3) & \U1|ADDRESS_OUT\(2) & \~GND~combout\ & \~GND~combout\);

\U3|altsyncram_component|auto_generated|q_a\(14) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\U3|altsyncram_component|auto_generated|q_a\(15) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\U3|altsyncram_component|auto_generated|q_a\(16) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\U3|altsyncram_component|auto_generated|q_a\(17) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\U3|altsyncram_component|auto_generated|q_a\(18) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\U3|altsyncram_component|auto_generated|q_a\(19) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\U3|altsyncram_component|auto_generated|q_a\(20) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\U3|altsyncram_component|auto_generated|q_a\(21) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\U3|altsyncram_component|auto_generated|q_a\(22) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\U3|altsyncram_component|auto_generated|q_a\(23) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\U3|altsyncram_component|auto_generated|q_a\(24) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\U3|altsyncram_component|auto_generated|q_a\(25) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\U3|altsyncram_component|auto_generated|q_a\(26) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\U3|altsyncram_component|auto_generated|q_a\(27) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\U3|altsyncram_component|auto_generated|q_a\(28) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\U3|altsyncram_component|auto_generated|q_a\(29) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\U3|altsyncram_component|auto_generated|q_a\(30) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\U3|altsyncram_component|auto_generated|q_a\(31) <= \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y54_N16
\INSTRUCTION_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\INSTRUCTION_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\INSTRUCTION_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\INSTRUCTION_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\INSTRUCTION_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\INSTRUCTION_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[5]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\INSTRUCTION_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\INSTRUCTION_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\INSTRUCTION_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[8]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\INSTRUCTION_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\INSTRUCTION_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[10]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\INSTRUCTION_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[11]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\INSTRUCTION_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[12]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\INSTRUCTION_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\INSTRUCTION_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[14]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\INSTRUCTION_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[15]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\INSTRUCTION_OUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[16]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\INSTRUCTION_OUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[17]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\INSTRUCTION_OUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[18]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\INSTRUCTION_OUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[19]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\INSTRUCTION_OUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[20]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\INSTRUCTION_OUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[21]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\INSTRUCTION_OUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[22]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\INSTRUCTION_OUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[23]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\INSTRUCTION_OUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[24]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\INSTRUCTION_OUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[25]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\INSTRUCTION_OUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[26]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\INSTRUCTION_OUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[27]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\INSTRUCTION_OUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[28]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\INSTRUCTION_OUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[29]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\INSTRUCTION_OUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[30]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\INSTRUCTION_OUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT[31]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\PC_INPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_INPUT[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\PC_INPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_INPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\PC_INPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ADDRESS_OUT[2]~0_combout\,
	devoe => ww_devoe,
	o => \PC_INPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\PC_INPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ADDRESS_OUT[3]~2_combout\,
	devoe => ww_devoe,
	o => \PC_INPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\PC_INPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ADDRESS_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \PC_INPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\PC_INPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ADDRESS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \PC_INPUT[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\PC_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\PC_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\PC_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(2),
	devoe => ww_devoe,
	o => \PC_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\PC_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(3),
	devoe => ww_devoe,
	o => \PC_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\PC_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(4),
	devoe => ww_devoe,
	o => \PC_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\PC_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(5),
	devoe => ww_devoe,
	o => \PC_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\READ_ADDRESS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \READ_ADDRESS[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\READ_ADDRESS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \READ_ADDRESS[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\READ_ADDRESS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(2),
	devoe => ww_devoe,
	o => \READ_ADDRESS[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\READ_ADDRESS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(3),
	devoe => ww_devoe,
	o => \READ_ADDRESS[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\READ_ADDRESS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(4),
	devoe => ww_devoe,
	o => \READ_ADDRESS[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\READ_ADDRESS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(5),
	devoe => ww_devoe,
	o => \READ_ADDRESS[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\READ_ADDRESS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(6),
	devoe => ww_devoe,
	o => \READ_ADDRESS[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\READ_ADDRESS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(7),
	devoe => ww_devoe,
	o => \READ_ADDRESS[7]~output_o\);

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

-- Location: LCCOMB_X49_Y41_N16
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

-- Location: LCCOMB_X77_Y41_N18
\U2|ADDRESS_OUT[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[2]~0_combout\ = \U1|ADDRESS_OUT\(2) $ (VCC)
-- \U2|ADDRESS_OUT[2]~1\ = CARRY(\U1|ADDRESS_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(2),
	datad => VCC,
	combout => \U2|ADDRESS_OUT[2]~0_combout\,
	cout => \U2|ADDRESS_OUT[2]~1\);

-- Location: FF_X77_Y41_N19
\U1|ADDRESS_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(2));

-- Location: LCCOMB_X77_Y41_N20
\U2|ADDRESS_OUT[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[3]~2_combout\ = (\U1|ADDRESS_OUT\(3) & (!\U2|ADDRESS_OUT[2]~1\)) # (!\U1|ADDRESS_OUT\(3) & ((\U2|ADDRESS_OUT[2]~1\) # (GND)))
-- \U2|ADDRESS_OUT[3]~3\ = CARRY((!\U2|ADDRESS_OUT[2]~1\) # (!\U1|ADDRESS_OUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(3),
	datad => VCC,
	cin => \U2|ADDRESS_OUT[2]~1\,
	combout => \U2|ADDRESS_OUT[3]~2_combout\,
	cout => \U2|ADDRESS_OUT[3]~3\);

-- Location: FF_X77_Y41_N21
\U1|ADDRESS_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(3));

-- Location: LCCOMB_X77_Y41_N22
\U2|ADDRESS_OUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[4]~4_combout\ = (\U1|ADDRESS_OUT\(4) & (\U2|ADDRESS_OUT[3]~3\ $ (GND))) # (!\U1|ADDRESS_OUT\(4) & (!\U2|ADDRESS_OUT[3]~3\ & VCC))
-- \U2|ADDRESS_OUT[4]~5\ = CARRY((\U1|ADDRESS_OUT\(4) & !\U2|ADDRESS_OUT[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDRESS_OUT\(4),
	datad => VCC,
	cin => \U2|ADDRESS_OUT[3]~3\,
	combout => \U2|ADDRESS_OUT[4]~4_combout\,
	cout => \U2|ADDRESS_OUT[4]~5\);

-- Location: FF_X77_Y41_N23
\U1|ADDRESS_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(4));

-- Location: LCCOMB_X77_Y41_N24
\U2|ADDRESS_OUT[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[5]~6_combout\ = (\U1|ADDRESS_OUT\(5) & (!\U2|ADDRESS_OUT[4]~5\)) # (!\U1|ADDRESS_OUT\(5) & ((\U2|ADDRESS_OUT[4]~5\) # (GND)))
-- \U2|ADDRESS_OUT[5]~7\ = CARRY((!\U2|ADDRESS_OUT[4]~5\) # (!\U1|ADDRESS_OUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(5),
	datad => VCC,
	cin => \U2|ADDRESS_OUT[4]~5\,
	combout => \U2|ADDRESS_OUT[5]~6_combout\,
	cout => \U2|ADDRESS_OUT[5]~7\);

-- Location: FF_X77_Y41_N25
\U1|ADDRESS_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(5));

-- Location: LCCOMB_X77_Y41_N26
\U2|ADDRESS_OUT[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[6]~8_combout\ = (\U1|ADDRESS_OUT\(6) & (\U2|ADDRESS_OUT[5]~7\ $ (GND))) # (!\U1|ADDRESS_OUT\(6) & (!\U2|ADDRESS_OUT[5]~7\ & VCC))
-- \U2|ADDRESS_OUT[6]~9\ = CARRY((\U1|ADDRESS_OUT\(6) & !\U2|ADDRESS_OUT[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDRESS_OUT\(6),
	datad => VCC,
	cin => \U2|ADDRESS_OUT[5]~7\,
	combout => \U2|ADDRESS_OUT[6]~8_combout\,
	cout => \U2|ADDRESS_OUT[6]~9\);

-- Location: FF_X77_Y41_N27
\U1|ADDRESS_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(6));

-- Location: LCCOMB_X77_Y41_N28
\U2|ADDRESS_OUT[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_OUT[7]~10_combout\ = \U2|ADDRESS_OUT[6]~9\ $ (\U1|ADDRESS_OUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDRESS_OUT\(7),
	cin => \U2|ADDRESS_OUT[6]~9\,
	combout => \U2|ADDRESS_OUT[7]~10_combout\);

-- Location: FF_X77_Y41_N29
\U1|ADDRESS_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|ADDRESS_OUT[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(7));

-- Location: M9K_X53_Y39_N0
\U3|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000002000000000000000882000000000000000822000000000000000820",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "INSTRUCTIONS.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U3|altsyncram:altsyncram_component|altsyncram_1cr3:auto_generated|ALTSYNCRAM",
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
	portadatain => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y39_N0
\U3|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002B4B00000000000000234B00000000000000004810000000000000005290000000000000004A9",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "INSTRUCTIONS.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U3|altsyncram:altsyncram_component|altsyncram_1cr3:auto_generated|ALTSYNCRAM",
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
	portadatain => \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \U3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

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

ww_PC_INPUT(0) <= \PC_INPUT[0]~output_o\;

ww_PC_INPUT(1) <= \PC_INPUT[1]~output_o\;

ww_PC_INPUT(2) <= \PC_INPUT[2]~output_o\;

ww_PC_INPUT(3) <= \PC_INPUT[3]~output_o\;

ww_PC_INPUT(4) <= \PC_INPUT[4]~output_o\;

ww_PC_INPUT(5) <= \PC_INPUT[5]~output_o\;

ww_PC_OUTPUT(0) <= \PC_OUTPUT[0]~output_o\;

ww_PC_OUTPUT(1) <= \PC_OUTPUT[1]~output_o\;

ww_PC_OUTPUT(2) <= \PC_OUTPUT[2]~output_o\;

ww_PC_OUTPUT(3) <= \PC_OUTPUT[3]~output_o\;

ww_PC_OUTPUT(4) <= \PC_OUTPUT[4]~output_o\;

ww_PC_OUTPUT(5) <= \PC_OUTPUT[5]~output_o\;

ww_READ_ADDRESS(0) <= \READ_ADDRESS[0]~output_o\;

ww_READ_ADDRESS(1) <= \READ_ADDRESS[1]~output_o\;

ww_READ_ADDRESS(2) <= \READ_ADDRESS[2]~output_o\;

ww_READ_ADDRESS(3) <= \READ_ADDRESS[3]~output_o\;

ww_READ_ADDRESS(4) <= \READ_ADDRESS[4]~output_o\;

ww_READ_ADDRESS(5) <= \READ_ADDRESS[5]~output_o\;

ww_READ_ADDRESS(6) <= \READ_ADDRESS[6]~output_o\;

ww_READ_ADDRESS(7) <= \READ_ADDRESS[7]~output_o\;
END structure;


