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

-- DATE "01/03/2022 16:28:46"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_PROCESSOR IS
    PORT (
	CLK : IN std_logic;
	INSTRUCTION_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	IP_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	PC_INPUT : BUFFER std_logic_vector(3 DOWNTO 0);
	PC_OUTPUT : BUFFER std_logic_vector(3 DOWNTO 0);
	IR_ADDR_OUTPUT : BUFFER std_logic_vector(7 DOWNTO 0);
	NUM_TO_ADD : BUFFER std_logic
	);
END MIPS_PROCESSOR;

-- Design Ports Information
-- INSTRUCTION_OUT[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[6]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[12]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[13]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[16]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[18]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[19]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[21]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[22]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[23]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[25]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[26]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[27]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[28]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[29]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[30]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[9]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[12]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[13]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[15]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[16]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[17]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[22]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[23]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[25]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[26]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[27]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[28]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[29]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[30]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[31]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INPUT[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TO_ADD	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_IP_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IR_ADDR_OUTPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NUM_TO_ADD : std_logic;
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \U5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[0]~0_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[0]~_wirecell_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U1|ADDRESS_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U1|ADDRESS_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U1|ADDRESS_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~7\ : std_logic;
SIGNAL \U2|Add0~8_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~9\ : std_logic;
SIGNAL \U2|Add0~10_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~11\ : std_logic;
SIGNAL \U2|Add0~12_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[9]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[11]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[12]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[13]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[14]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[16]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[17]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[18]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[19]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[20]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[21]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[22]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[23]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[24]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[25]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[26]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[27]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[28]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[29]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[30]~feeder_combout\ : std_logic;
SIGNAL \U3|INST_OUT[31]~feeder_combout\ : std_logic;
SIGNAL \U4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|INST_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U3|ADDR_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|ADDRESS_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|ALT_INV_ADDR_OUT\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
INSTRUCTION_OUT <= ww_INSTRUCTION_OUT;
IP_OUTPUT <= ww_IP_OUTPUT;
PC_INPUT <= ww_PC_INPUT;
PC_OUTPUT <= ww_PC_OUTPUT;
IR_ADDR_OUTPUT <= ww_IR_ADDR_OUTPUT;
NUM_TO_ADD <= ww_NUM_TO_ADD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U3|ADDR_OUT\(7) & \U3|ADDR_OUT\(6) & \U3|ADDR_OUT\(5) & \U3|ADDR_OUT\(4) & \U3|ADDR_OUT\(3) & \U3|ADDR_OUT\(2) & \U3|ADDR_OUT\(1) & \U3|ADDR_OUT[0]~_wirecell_combout\);

\U4|altsyncram_component|auto_generated|q_a\(0) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(1) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U4|altsyncram_component|auto_generated|q_a\(2) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U4|altsyncram_component|auto_generated|q_a\(3) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U4|altsyncram_component|auto_generated|q_a\(4) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U4|altsyncram_component|auto_generated|q_a\(5) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U4|altsyncram_component|auto_generated|q_a\(6) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U4|altsyncram_component|auto_generated|q_a\(7) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U4|altsyncram_component|auto_generated|q_a\(8) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U4|altsyncram_component|auto_generated|q_a\(9) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U4|altsyncram_component|auto_generated|q_a\(10) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U4|altsyncram_component|auto_generated|q_a\(11) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U4|altsyncram_component|auto_generated|q_a\(12) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U4|altsyncram_component|auto_generated|q_a\(13) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U3|ADDR_OUT\(7) & \U3|ADDR_OUT\(6) & \U3|ADDR_OUT\(5) & \U3|ADDR_OUT\(4) & \U3|ADDR_OUT\(3) & \U3|ADDR_OUT\(2) & \U3|ADDR_OUT\(1) & \U3|ADDR_OUT[0]~_wirecell_combout\
);

\U4|altsyncram_component|auto_generated|q_a\(14) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(15) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\U4|altsyncram_component|auto_generated|q_a\(16) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\U4|altsyncram_component|auto_generated|q_a\(17) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\U4|altsyncram_component|auto_generated|q_a\(18) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\U4|altsyncram_component|auto_generated|q_a\(19) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\U4|altsyncram_component|auto_generated|q_a\(20) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\U4|altsyncram_component|auto_generated|q_a\(21) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\U4|altsyncram_component|auto_generated|q_a\(22) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\U4|altsyncram_component|auto_generated|q_a\(23) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\U4|altsyncram_component|auto_generated|q_a\(24) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\U4|altsyncram_component|auto_generated|q_a\(25) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\U4|altsyncram_component|auto_generated|q_a\(26) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\U4|altsyncram_component|auto_generated|q_a\(27) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\U4|altsyncram_component|auto_generated|q_a\(28) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\U4|altsyncram_component|auto_generated|q_a\(29) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\U4|altsyncram_component|auto_generated|q_a\(30) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\U4|altsyncram_component|auto_generated|q_a\(31) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\U5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\U5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U5|altpll_component|auto_generated|wire_pll1_clk\(0));
\U3|ALT_INV_ADDR_OUT\(0) <= NOT \U3|ADDR_OUT\(0);

-- Location: IOOBUF_X78_Y15_N2
\INSTRUCTION_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(0),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(0));

-- Location: IOOBUF_X29_Y0_N2
\INSTRUCTION_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(1),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(1));

-- Location: IOOBUF_X34_Y0_N30
\INSTRUCTION_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(2),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(2));

-- Location: IOOBUF_X36_Y39_N16
\INSTRUCTION_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(3),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(3));

-- Location: IOOBUF_X62_Y0_N30
\INSTRUCTION_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(4),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(4));

-- Location: IOOBUF_X58_Y0_N2
\INSTRUCTION_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(5),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(5));

-- Location: IOOBUF_X78_Y15_N16
\INSTRUCTION_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(6),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(6));

-- Location: IOOBUF_X58_Y0_N23
\INSTRUCTION_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(7),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(7));

-- Location: IOOBUF_X58_Y0_N30
\INSTRUCTION_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(8),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(8));

-- Location: IOOBUF_X78_Y16_N2
\INSTRUCTION_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(9),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(9));

-- Location: IOOBUF_X78_Y17_N9
\INSTRUCTION_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(10),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(10));

-- Location: IOOBUF_X69_Y0_N16
\INSTRUCTION_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(11),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(11));

-- Location: IOOBUF_X69_Y0_N2
\INSTRUCTION_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(12),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(12));

-- Location: IOOBUF_X78_Y16_N16
\INSTRUCTION_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(13),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(13));

-- Location: IOOBUF_X62_Y0_N16
\INSTRUCTION_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(14),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(14));

-- Location: IOOBUF_X58_Y0_N16
\INSTRUCTION_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(15),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(15));

-- Location: IOOBUF_X78_Y15_N9
\INSTRUCTION_OUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(16),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(16));

-- Location: IOOBUF_X36_Y0_N2
\INSTRUCTION_OUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(17),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(17));

-- Location: IOOBUF_X34_Y0_N23
\INSTRUCTION_OUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(18),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(18));

-- Location: IOOBUF_X40_Y0_N30
\INSTRUCTION_OUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(19),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(19));

-- Location: IOOBUF_X29_Y0_N16
\INSTRUCTION_OUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(20),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(20));

-- Location: IOOBUF_X40_Y0_N9
\INSTRUCTION_OUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(21),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(21));

-- Location: IOOBUF_X78_Y3_N23
\INSTRUCTION_OUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(22),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(22));

-- Location: IOOBUF_X54_Y0_N2
\INSTRUCTION_OUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(23),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(23));

-- Location: IOOBUF_X51_Y54_N2
\INSTRUCTION_OUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(24),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(24));

-- Location: IOOBUF_X62_Y0_N9
\INSTRUCTION_OUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(25),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(25));

-- Location: IOOBUF_X78_Y20_N24
\INSTRUCTION_OUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(26),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(26));

-- Location: IOOBUF_X60_Y0_N30
\INSTRUCTION_OUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(27),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(27));

-- Location: IOOBUF_X78_Y17_N2
\INSTRUCTION_OUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(28),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(28));

-- Location: IOOBUF_X38_Y0_N16
\INSTRUCTION_OUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(29),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(29));

-- Location: IOOBUF_X29_Y0_N30
\INSTRUCTION_OUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(30),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(30));

-- Location: IOOBUF_X40_Y0_N16
\INSTRUCTION_OUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|INST_OUT\(31),
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT(31));

-- Location: IOOBUF_X78_Y16_N9
\IP_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(0));

-- Location: IOOBUF_X51_Y0_N30
\IP_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(1));

-- Location: IOOBUF_X56_Y0_N23
\IP_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(2));

-- Location: IOOBUF_X34_Y0_N16
\IP_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(3));

-- Location: IOOBUF_X38_Y0_N9
\IP_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(4));

-- Location: IOOBUF_X56_Y0_N30
\IP_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(5));

-- Location: IOOBUF_X69_Y0_N23
\IP_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(6));

-- Location: IOOBUF_X54_Y54_N30
\IP_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(7));

-- Location: IOOBUF_X31_Y0_N23
\IP_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(8));

-- Location: IOOBUF_X54_Y0_N23
\IP_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(9));

-- Location: IOOBUF_X54_Y0_N30
\IP_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(10));

-- Location: IOOBUF_X56_Y0_N2
\IP_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(11));

-- Location: IOOBUF_X54_Y0_N16
\IP_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(12));

-- Location: IOOBUF_X54_Y0_N9
\IP_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(13));

-- Location: IOOBUF_X62_Y0_N23
\IP_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(14));

-- Location: IOOBUF_X78_Y16_N24
\IP_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(15));

-- Location: IOOBUF_X46_Y0_N9
\IP_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(16));

-- Location: IOOBUF_X78_Y3_N9
\IP_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(17));

-- Location: IOOBUF_X51_Y0_N2
\IP_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(18));

-- Location: IOOBUF_X49_Y0_N16
\IP_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(19));

-- Location: IOOBUF_X51_Y0_N16
\IP_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(20));

-- Location: IOOBUF_X78_Y3_N2
\IP_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(21));

-- Location: IOOBUF_X56_Y0_N9
\IP_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(22));

-- Location: IOOBUF_X49_Y0_N2
\IP_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(23));

-- Location: IOOBUF_X51_Y0_N9
\IP_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(24));

-- Location: IOOBUF_X69_Y0_N9
\IP_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(25));

-- Location: IOOBUF_X58_Y0_N9
\IP_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(26));

-- Location: IOOBUF_X56_Y0_N16
\IP_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(27));

-- Location: IOOBUF_X51_Y0_N23
\IP_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(28));

-- Location: IOOBUF_X40_Y0_N2
\IP_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(29));

-- Location: IOOBUF_X31_Y0_N30
\IP_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(30));

-- Location: IOOBUF_X46_Y0_N2
\IP_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_IP_OUTPUT(31));

-- Location: IOOBUF_X36_Y0_N9
\PC_INPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_ADDR_OUT\(0),
	devoe => ww_devoe,
	o => ww_PC_INPUT(0));

-- Location: IOOBUF_X40_Y0_N23
\PC_INPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~0_combout\,
	devoe => ww_devoe,
	o => ww_PC_INPUT(1));

-- Location: IOOBUF_X34_Y0_N2
\PC_INPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~2_combout\,
	devoe => ww_devoe,
	o => ww_PC_INPUT(2));

-- Location: IOOBUF_X49_Y0_N9
\PC_INPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~4_combout\,
	devoe => ww_devoe,
	o => ww_PC_INPUT(3));

-- Location: IOOBUF_X38_Y0_N23
\PC_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUTPUT(0));

-- Location: IOOBUF_X34_Y0_N9
\PC_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUTPUT(1));

-- Location: IOOBUF_X78_Y17_N23
\PC_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUTPUT(2));

-- Location: IOOBUF_X78_Y17_N16
\PC_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDRESS_OUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUTPUT(3));

-- Location: IOOBUF_X38_Y0_N30
\IR_ADDR_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_ADDR_OUT\(0),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(0));

-- Location: IOOBUF_X49_Y0_N30
\IR_ADDR_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(1),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(1));

-- Location: IOOBUF_X78_Y3_N16
\IR_ADDR_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(2),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(2));

-- Location: IOOBUF_X78_Y15_N23
\IR_ADDR_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(3),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(3));

-- Location: IOOBUF_X49_Y0_N23
\IR_ADDR_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(4),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(4));

-- Location: IOOBUF_X38_Y0_N2
\IR_ADDR_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(5),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(5));

-- Location: IOOBUF_X31_Y0_N9
\IR_ADDR_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(6),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(6));

-- Location: IOOBUF_X51_Y54_N9
\IR_ADDR_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(7),
	devoe => ww_devoe,
	o => ww_IR_ADDR_OUTPUT(7));

-- Location: IOOBUF_X51_Y54_N16
\NUM_TO_ADD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_TO_ADD);

-- Location: IOIBUF_X31_Y0_N1
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

-- Location: PLL_1
\U5|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 5,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U5|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y23_N18
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

-- Location: LCCOMB_X50_Y1_N30
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

-- Location: FF_X50_Y1_N31
\U3|ADDR_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|ADDR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(0));

-- Location: LCCOMB_X50_Y1_N0
\U3|ADDR_OUT[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[0]~_wirecell_combout\ = !\U3|ADDR_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|ADDR_OUT\(0),
	combout => \U3|ADDR_OUT[0]~_wirecell_combout\);

-- Location: LCCOMB_X50_Y1_N8
\U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = (\U1|ADDRESS_OUT\(1) & (\U3|ADDR_OUT\(0) $ (VCC))) # (!\U1|ADDRESS_OUT\(1) & (\U3|ADDR_OUT\(0) & VCC))
-- \U2|Add0~1\ = CARRY((\U1|ADDRESS_OUT\(1) & \U3|ADDR_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDRESS_OUT\(1),
	datab => \U3|ADDR_OUT\(0),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: LCCOMB_X50_Y1_N26
\U1|ADDRESS_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDRESS_OUT[1]~feeder_combout\ = \U2|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~0_combout\,
	combout => \U1|ADDRESS_OUT[1]~feeder_combout\);

-- Location: FF_X50_Y1_N27
\U1|ADDRESS_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|ADDRESS_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(1));

-- Location: FF_X50_Y1_N9
\U3|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|ADDRESS_OUT\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(1));

-- Location: LCCOMB_X50_Y1_N10
\U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U1|ADDRESS_OUT\(2) & (!\U2|Add0~1\)) # (!\U1|ADDRESS_OUT\(2) & ((\U2|Add0~1\) # (GND)))
-- \U2|Add0~3\ = CARRY((!\U2|Add0~1\) # (!\U1|ADDRESS_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDRESS_OUT\(2),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: LCCOMB_X50_Y1_N6
\U1|ADDRESS_OUT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDRESS_OUT[2]~feeder_combout\ = \U2|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Add0~2_combout\,
	combout => \U1|ADDRESS_OUT[2]~feeder_combout\);

-- Location: FF_X50_Y1_N7
\U1|ADDRESS_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|ADDRESS_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(2));

-- Location: FF_X50_Y1_N11
\U3|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|ADDRESS_OUT\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(2));

-- Location: LCCOMB_X50_Y1_N12
\U2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = (\U1|ADDRESS_OUT\(3) & (\U2|Add0~3\ $ (GND))) # (!\U1|ADDRESS_OUT\(3) & (!\U2|Add0~3\ & VCC))
-- \U2|Add0~5\ = CARRY((\U1|ADDRESS_OUT\(3) & !\U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDRESS_OUT\(3),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: LCCOMB_X50_Y1_N22
\U1|ADDRESS_OUT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ADDRESS_OUT[3]~feeder_combout\ = \U2|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Add0~4_combout\,
	combout => \U1|ADDRESS_OUT[3]~feeder_combout\);

-- Location: FF_X50_Y1_N23
\U1|ADDRESS_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|ADDRESS_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(3));

-- Location: FF_X50_Y1_N13
\U3|ADDR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|ADDRESS_OUT\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(3));

-- Location: LCCOMB_X50_Y1_N14
\U2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\U1|ADDRESS_OUT\(4) & (!\U2|Add0~5\)) # (!\U1|ADDRESS_OUT\(4) & ((\U2|Add0~5\) # (GND)))
-- \U2|Add0~7\ = CARRY((!\U2|Add0~5\) # (!\U1|ADDRESS_OUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(4),
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\,
	cout => \U2|Add0~7\);

-- Location: FF_X50_Y1_N15
\U1|ADDRESS_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(4));

-- Location: LCCOMB_X50_Y1_N24
\U3|ADDR_OUT[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[4]~feeder_combout\ = \U1|ADDRESS_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ADDRESS_OUT\(4),
	combout => \U3|ADDR_OUT[4]~feeder_combout\);

-- Location: FF_X50_Y1_N25
\U3|ADDR_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|ADDR_OUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(4));

-- Location: LCCOMB_X50_Y1_N16
\U2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~8_combout\ = (\U1|ADDRESS_OUT\(5) & (\U2|Add0~7\ $ (GND))) # (!\U1|ADDRESS_OUT\(5) & (!\U2|Add0~7\ & VCC))
-- \U2|Add0~9\ = CARRY((\U1|ADDRESS_OUT\(5) & !\U2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(5),
	datad => VCC,
	cin => \U2|Add0~7\,
	combout => \U2|Add0~8_combout\,
	cout => \U2|Add0~9\);

-- Location: FF_X50_Y1_N17
\U1|ADDRESS_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(5));

-- Location: LCCOMB_X50_Y1_N2
\U3|ADDR_OUT[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[5]~feeder_combout\ = \U1|ADDRESS_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDRESS_OUT\(5),
	combout => \U3|ADDR_OUT[5]~feeder_combout\);

-- Location: FF_X50_Y1_N3
\U3|ADDR_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|ADDR_OUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(5));

-- Location: LCCOMB_X50_Y1_N18
\U2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~10_combout\ = (\U1|ADDRESS_OUT\(6) & (!\U2|Add0~9\)) # (!\U1|ADDRESS_OUT\(6) & ((\U2|Add0~9\) # (GND)))
-- \U2|Add0~11\ = CARRY((!\U2|Add0~9\) # (!\U1|ADDRESS_OUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDRESS_OUT\(6),
	datad => VCC,
	cin => \U2|Add0~9\,
	combout => \U2|Add0~10_combout\,
	cout => \U2|Add0~11\);

-- Location: FF_X50_Y1_N19
\U1|ADDRESS_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(6));

-- Location: LCCOMB_X50_Y1_N28
\U3|ADDR_OUT[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[6]~feeder_combout\ = \U1|ADDRESS_OUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDRESS_OUT\(6),
	combout => \U3|ADDR_OUT[6]~feeder_combout\);

-- Location: FF_X50_Y1_N29
\U3|ADDR_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|ADDR_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(6));

-- Location: LCCOMB_X50_Y1_N20
\U2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~12_combout\ = \U2|Add0~11\ $ (!\U1|ADDRESS_OUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDRESS_OUT\(7),
	cin => \U2|Add0~11\,
	combout => \U2|Add0~12_combout\);

-- Location: FF_X50_Y1_N21
\U1|ADDRESS_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDRESS_OUT\(7));

-- Location: LCCOMB_X52_Y1_N10
\U3|ADDR_OUT[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[7]~feeder_combout\ = \U1|ADDRESS_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ADDRESS_OUT\(7),
	combout => \U3|ADDR_OUT[7]~feeder_combout\);

-- Location: FF_X52_Y1_N11
\U3|ADDR_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|ADDR_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_OUT\(7));

-- Location: M9K_X53_Y1_N0
\U4|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000029940984818D0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "INSTRUCTIONS.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_1cr3:auto_generated|ALTSYNCRAM",
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
	clk0 => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y1_N20
\U3|INST_OUT[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[0]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(0),
	combout => \U3|INST_OUT[0]~feeder_combout\);

-- Location: FF_X54_Y1_N21
\U3|INST_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(0));

-- Location: LCCOMB_X54_Y1_N0
\U3|INST_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[1]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(1),
	combout => \U3|INST_OUT[1]~feeder_combout\);

-- Location: FF_X54_Y1_N1
\U3|INST_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(1));

-- Location: LCCOMB_X54_Y1_N8
\U3|INST_OUT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[2]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(2),
	combout => \U3|INST_OUT[2]~feeder_combout\);

-- Location: FF_X54_Y1_N9
\U3|INST_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(2));

-- Location: LCCOMB_X51_Y1_N0
\U3|INST_OUT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[3]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(3),
	combout => \U3|INST_OUT[3]~feeder_combout\);

-- Location: FF_X51_Y1_N1
\U3|INST_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(3));

-- Location: LCCOMB_X54_Y1_N30
\U3|INST_OUT[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[4]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(4),
	combout => \U3|INST_OUT[4]~feeder_combout\);

-- Location: FF_X54_Y1_N31
\U3|INST_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(4));

-- Location: LCCOMB_X55_Y1_N18
\U3|INST_OUT[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[5]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(5),
	combout => \U3|INST_OUT[5]~feeder_combout\);

-- Location: FF_X55_Y1_N19
\U3|INST_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(5));

-- Location: LCCOMB_X54_Y1_N24
\U3|INST_OUT[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[6]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(6),
	combout => \U3|INST_OUT[6]~feeder_combout\);

-- Location: FF_X54_Y1_N25
\U3|INST_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(6));

-- Location: LCCOMB_X54_Y1_N28
\U3|INST_OUT[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[7]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(7),
	combout => \U3|INST_OUT[7]~feeder_combout\);

-- Location: FF_X54_Y1_N29
\U3|INST_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(7));

-- Location: LCCOMB_X54_Y1_N6
\U3|INST_OUT[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[8]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(8),
	combout => \U3|INST_OUT[8]~feeder_combout\);

-- Location: FF_X54_Y1_N7
\U3|INST_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(8));

-- Location: LCCOMB_X54_Y1_N2
\U3|INST_OUT[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[9]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(9),
	combout => \U3|INST_OUT[9]~feeder_combout\);

-- Location: FF_X54_Y1_N3
\U3|INST_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(9));

-- Location: LCCOMB_X54_Y1_N12
\U3|INST_OUT[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[10]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(10),
	combout => \U3|INST_OUT[10]~feeder_combout\);

-- Location: FF_X54_Y1_N13
\U3|INST_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(10));

-- Location: LCCOMB_X57_Y1_N6
\U3|INST_OUT[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[11]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(11),
	combout => \U3|INST_OUT[11]~feeder_combout\);

-- Location: FF_X57_Y1_N7
\U3|INST_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(11));

-- Location: LCCOMB_X54_Y1_N16
\U3|INST_OUT[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[12]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(12),
	combout => \U3|INST_OUT[12]~feeder_combout\);

-- Location: FF_X54_Y1_N17
\U3|INST_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(12));

-- Location: LCCOMB_X54_Y1_N18
\U3|INST_OUT[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[13]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(13),
	combout => \U3|INST_OUT[13]~feeder_combout\);

-- Location: FF_X54_Y1_N19
\U3|INST_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(13));

-- Location: M9K_X53_Y1_N0
\U4|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005B1021140425",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "INSTRUCTIONS.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_1cr3:auto_generated|ALTSYNCRAM",
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
	clk0 => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y1_N0
\U3|INST_OUT[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[14]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(14),
	combout => \U3|INST_OUT[14]~feeder_combout\);

-- Location: FF_X59_Y1_N1
\U3|INST_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(14));

-- Location: LCCOMB_X52_Y1_N24
\U3|INST_OUT[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[15]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(15),
	combout => \U3|INST_OUT[15]~feeder_combout\);

-- Location: FF_X52_Y1_N25
\U3|INST_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(15));

-- Location: LCCOMB_X52_Y1_N18
\U3|INST_OUT[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[16]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(16),
	combout => \U3|INST_OUT[16]~feeder_combout\);

-- Location: FF_X52_Y1_N19
\U3|INST_OUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(16));

-- Location: LCCOMB_X52_Y1_N4
\U3|INST_OUT[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[17]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(17),
	combout => \U3|INST_OUT[17]~feeder_combout\);

-- Location: FF_X52_Y1_N5
\U3|INST_OUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(17));

-- Location: LCCOMB_X52_Y1_N14
\U3|INST_OUT[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[18]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(18),
	combout => \U3|INST_OUT[18]~feeder_combout\);

-- Location: FF_X52_Y1_N15
\U3|INST_OUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(18));

-- Location: LCCOMB_X52_Y1_N28
\U3|INST_OUT[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[19]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(19),
	combout => \U3|INST_OUT[19]~feeder_combout\);

-- Location: FF_X52_Y1_N29
\U3|INST_OUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(19));

-- Location: LCCOMB_X52_Y1_N12
\U3|INST_OUT[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[20]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(20),
	combout => \U3|INST_OUT[20]~feeder_combout\);

-- Location: FF_X52_Y1_N13
\U3|INST_OUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(20));

-- Location: LCCOMB_X52_Y1_N26
\U3|INST_OUT[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[21]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(21),
	combout => \U3|INST_OUT[21]~feeder_combout\);

-- Location: FF_X52_Y1_N27
\U3|INST_OUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(21));

-- Location: LCCOMB_X54_Y1_N26
\U3|INST_OUT[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[22]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(22),
	combout => \U3|INST_OUT[22]~feeder_combout\);

-- Location: FF_X54_Y1_N27
\U3|INST_OUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(22));

-- Location: LCCOMB_X54_Y1_N22
\U3|INST_OUT[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[23]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(23),
	combout => \U3|INST_OUT[23]~feeder_combout\);

-- Location: FF_X54_Y1_N23
\U3|INST_OUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(23));

-- Location: LCCOMB_X52_Y1_N2
\U3|INST_OUT[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[24]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(24),
	combout => \U3|INST_OUT[24]~feeder_combout\);

-- Location: FF_X52_Y1_N3
\U3|INST_OUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(24));

-- Location: LCCOMB_X58_Y1_N2
\U3|INST_OUT[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[25]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(25),
	combout => \U3|INST_OUT[25]~feeder_combout\);

-- Location: FF_X58_Y1_N3
\U3|INST_OUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(25));

-- Location: LCCOMB_X58_Y1_N8
\U3|INST_OUT[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[26]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(26),
	combout => \U3|INST_OUT[26]~feeder_combout\);

-- Location: FF_X58_Y1_N9
\U3|INST_OUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(26));

-- Location: LCCOMB_X57_Y1_N4
\U3|INST_OUT[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[27]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(27),
	combout => \U3|INST_OUT[27]~feeder_combout\);

-- Location: FF_X57_Y1_N5
\U3|INST_OUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(27));

-- Location: LCCOMB_X54_Y1_N10
\U3|INST_OUT[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[28]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(28),
	combout => \U3|INST_OUT[28]~feeder_combout\);

-- Location: FF_X54_Y1_N11
\U3|INST_OUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(28));

-- Location: LCCOMB_X44_Y1_N30
\U3|INST_OUT[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[29]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(29),
	combout => \U3|INST_OUT[29]~feeder_combout\);

-- Location: FF_X44_Y1_N31
\U3|INST_OUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(29));

-- Location: LCCOMB_X52_Y1_N22
\U3|INST_OUT[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[30]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(30),
	combout => \U3|INST_OUT[30]~feeder_combout\);

-- Location: FF_X52_Y1_N23
\U3|INST_OUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(30));

-- Location: LCCOMB_X45_Y1_N24
\U3|INST_OUT[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[31]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(31),
	combout => \U3|INST_OUT[31]~feeder_combout\);

-- Location: FF_X45_Y1_N25
\U3|INST_OUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|INST_OUT[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(31));

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
END structure;


