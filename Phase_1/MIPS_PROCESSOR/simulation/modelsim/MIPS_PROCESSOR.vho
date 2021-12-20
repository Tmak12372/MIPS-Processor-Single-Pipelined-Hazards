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

-- DATE "12/20/2021 17:51:08"

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
	INSTRUCTION_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	IP_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	ADDER_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	PC_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	IR_ADDR_OUTPUT : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MIPS_PROCESSOR;

-- Design Ports Information
-- INSTRUCTION_OUT[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[4]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[8]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[9]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[11]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[13]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[16]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[18]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[19]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[20]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[21]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[24]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[25]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[26]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[27]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[28]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION_OUT[31]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[10]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[13]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[16]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[17]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[18]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[19]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[22]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[23]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[25]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[26]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[28]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[29]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[30]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_OUTPUT[31]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[7]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[10]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[12]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[15]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[16]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[17]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[18]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[20]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[21]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[23]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[24]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[25]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[26]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[27]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[28]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[30]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDER_OUTPUT[31]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[10]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[11]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[12]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[13]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[15]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[16]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[17]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[18]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[19]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[20]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[21]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[22]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[23]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[24]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[26]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[27]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[28]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[29]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[30]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[31]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[5]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_ADDR_OUTPUT[7]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_IP_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ADDER_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IR_ADDR_OUTPUT : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \IP_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \IP_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \ADDER_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \IR_ADDR_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[0]~0_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[0]~_wirecell_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U3|ADDR_OUT[3]~feeder_combout\ : std_logic;
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
SIGNAL \U2|Add0~13\ : std_logic;
SIGNAL \U2|Add0~14_combout\ : std_logic;
SIGNAL \U2|Add0~15\ : std_logic;
SIGNAL \U2|Add0~16_combout\ : std_logic;
SIGNAL \U2|Add0~17\ : std_logic;
SIGNAL \U2|Add0~18_combout\ : std_logic;
SIGNAL \U2|Add0~19\ : std_logic;
SIGNAL \U2|Add0~20_combout\ : std_logic;
SIGNAL \U2|Add0~21\ : std_logic;
SIGNAL \U2|Add0~22_combout\ : std_logic;
SIGNAL \U2|Add0~23\ : std_logic;
SIGNAL \U2|Add0~24_combout\ : std_logic;
SIGNAL \U2|Add0~25\ : std_logic;
SIGNAL \U2|Add0~26_combout\ : std_logic;
SIGNAL \U2|Add0~27\ : std_logic;
SIGNAL \U2|Add0~28_combout\ : std_logic;
SIGNAL \U2|Add0~29\ : std_logic;
SIGNAL \U2|Add0~30_combout\ : std_logic;
SIGNAL \U2|Add0~31\ : std_logic;
SIGNAL \U2|Add0~32_combout\ : std_logic;
SIGNAL \U2|Add0~33\ : std_logic;
SIGNAL \U2|Add0~34_combout\ : std_logic;
SIGNAL \U2|Add0~35\ : std_logic;
SIGNAL \U2|Add0~36_combout\ : std_logic;
SIGNAL \U2|Add0~37\ : std_logic;
SIGNAL \U2|Add0~38_combout\ : std_logic;
SIGNAL \U2|Add0~39\ : std_logic;
SIGNAL \U2|Add0~40_combout\ : std_logic;
SIGNAL \U2|Add0~41\ : std_logic;
SIGNAL \U2|Add0~42_combout\ : std_logic;
SIGNAL \U2|Add0~43\ : std_logic;
SIGNAL \U2|Add0~44_combout\ : std_logic;
SIGNAL \U2|Add0~45\ : std_logic;
SIGNAL \U2|Add0~46_combout\ : std_logic;
SIGNAL \U2|Add0~47\ : std_logic;
SIGNAL \U2|Add0~48_combout\ : std_logic;
SIGNAL \U2|Add0~49\ : std_logic;
SIGNAL \U2|Add0~50_combout\ : std_logic;
SIGNAL \U2|Add0~51\ : std_logic;
SIGNAL \U2|Add0~52_combout\ : std_logic;
SIGNAL \U2|Add0~53\ : std_logic;
SIGNAL \U2|Add0~54_combout\ : std_logic;
SIGNAL \U2|Add0~55\ : std_logic;
SIGNAL \U2|Add0~56_combout\ : std_logic;
SIGNAL \U2|Add0~57\ : std_logic;
SIGNAL \U2|Add0~58_combout\ : std_logic;
SIGNAL \U2|Add0~59\ : std_logic;
SIGNAL \U2|Add0~60_combout\ : std_logic;
SIGNAL \U4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|INST_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|ADDR_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|ADDR_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|ALT_INV_ADDR_OUT\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
INSTRUCTION_OUT <= ww_INSTRUCTION_OUT;
IP_OUTPUT <= ww_IP_OUTPUT;
ADDER_OUTPUT <= ww_ADDER_OUTPUT;
PC_OUTPUT <= ww_PC_OUTPUT;
IR_ADDR_OUTPUT <= ww_IR_ADDR_OUTPUT;
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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U3|ALT_INV_ADDR_OUT\(0) <= NOT \U3|ADDR_OUT\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X78_Y20_N9
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

-- Location: IOOBUF_X78_Y17_N9
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X78_Y15_N16
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

-- Location: IOOBUF_X78_Y16_N2
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

-- Location: IOOBUF_X78_Y20_N2
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

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X78_Y17_N16
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X78_Y20_N24
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X78_Y20_N16
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X58_Y0_N2
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
	o => \INSTRUCTION_OUT[25]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X78_Y23_N2
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

-- Location: IOOBUF_X69_Y0_N16
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

-- Location: IOOBUF_X51_Y0_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X78_Y17_N2
\IP_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \IP_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\IP_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \IP_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\IP_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \IP_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\IP_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \IP_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\IP_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \IP_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\IP_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \IP_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\IP_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \IP_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\IP_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \IP_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\IP_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \IP_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\IP_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \IP_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\IP_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \IP_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\IP_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \IP_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\IP_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \IP_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\IP_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \IP_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\IP_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \IP_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\IP_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \IP_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\IP_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \IP_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\IP_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \IP_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\IP_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \IP_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\IP_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \IP_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\IP_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \IP_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\IP_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \IP_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\IP_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \IP_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\IP_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \IP_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\IP_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \IP_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\IP_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \IP_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\IP_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \IP_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\IP_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \IP_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\IP_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \IP_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\IP_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \IP_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\IP_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \IP_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\IP_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \IP_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\ADDER_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_ADDR_OUT\(0),
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ADDER_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~0_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ADDER_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~2_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\ADDER_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~4_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\ADDER_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~6_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\ADDER_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~8_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ADDER_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~10_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ADDER_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~12_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ADDER_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~14_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\ADDER_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~16_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ADDER_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~18_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\ADDER_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~20_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\ADDER_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~22_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\ADDER_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~24_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ADDER_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~26_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ADDER_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~28_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\ADDER_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~30_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\ADDER_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~32_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ADDER_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~34_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ADDER_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~36_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ADDER_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~38_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\ADDER_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~40_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ADDER_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~42_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\ADDER_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~44_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ADDER_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~46_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\ADDER_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~48_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\ADDER_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~50_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\ADDER_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~52_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ADDER_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~54_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\ADDER_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~56_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\ADDER_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~58_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\ADDER_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Add0~60_combout\,
	devoe => ww_devoe,
	o => \ADDER_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\PC_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(0),
	devoe => ww_devoe,
	o => \PC_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\PC_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(1),
	devoe => ww_devoe,
	o => \PC_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\PC_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(2),
	devoe => ww_devoe,
	o => \PC_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\PC_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(3),
	devoe => ww_devoe,
	o => \PC_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\PC_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(4),
	devoe => ww_devoe,
	o => \PC_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\PC_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(5),
	devoe => ww_devoe,
	o => \PC_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\PC_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(6),
	devoe => ww_devoe,
	o => \PC_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\PC_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(7),
	devoe => ww_devoe,
	o => \PC_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PC_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(8),
	devoe => ww_devoe,
	o => \PC_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\PC_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(9),
	devoe => ww_devoe,
	o => \PC_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\PC_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(10),
	devoe => ww_devoe,
	o => \PC_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\PC_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(11),
	devoe => ww_devoe,
	o => \PC_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\PC_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(12),
	devoe => ww_devoe,
	o => \PC_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\PC_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(13),
	devoe => ww_devoe,
	o => \PC_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\PC_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(14),
	devoe => ww_devoe,
	o => \PC_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\PC_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(15),
	devoe => ww_devoe,
	o => \PC_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\PC_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(16),
	devoe => ww_devoe,
	o => \PC_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\PC_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(17),
	devoe => ww_devoe,
	o => \PC_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\PC_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(18),
	devoe => ww_devoe,
	o => \PC_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\PC_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(19),
	devoe => ww_devoe,
	o => \PC_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\PC_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(20),
	devoe => ww_devoe,
	o => \PC_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\PC_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(21),
	devoe => ww_devoe,
	o => \PC_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\PC_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(22),
	devoe => ww_devoe,
	o => \PC_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\PC_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(23),
	devoe => ww_devoe,
	o => \PC_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\PC_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(24),
	devoe => ww_devoe,
	o => \PC_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\PC_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(25),
	devoe => ww_devoe,
	o => \PC_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\PC_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(26),
	devoe => ww_devoe,
	o => \PC_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\PC_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(27),
	devoe => ww_devoe,
	o => \PC_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\PC_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(28),
	devoe => ww_devoe,
	o => \PC_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\PC_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(29),
	devoe => ww_devoe,
	o => \PC_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\PC_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(30),
	devoe => ww_devoe,
	o => \PC_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\PC_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ADDR_OUT\(31),
	devoe => ww_devoe,
	o => \PC_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\IR_ADDR_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_ADDR_OUT\(0),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\IR_ADDR_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(1),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\IR_ADDR_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(2),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\IR_ADDR_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(3),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\IR_ADDR_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(4),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\IR_ADDR_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(5),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\IR_ADDR_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(6),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\IR_ADDR_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ADDR_OUT\(7),
	devoe => ww_devoe,
	o => \IR_ADDR_OUTPUT[7]~output_o\);

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

-- Location: LCCOMB_X52_Y9_N8
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

-- Location: LCCOMB_X31_Y4_N0
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

-- Location: FF_X31_Y4_N1
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

-- Location: LCCOMB_X52_Y4_N16
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

-- Location: LCCOMB_X31_Y4_N2
\U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = (\U1|ADDR_OUT\(1) & (\U3|ADDR_OUT\(0) $ (VCC))) # (!\U1|ADDR_OUT\(1) & (\U3|ADDR_OUT\(0) & VCC))
-- \U2|Add0~1\ = CARRY((\U1|ADDR_OUT\(1) & \U3|ADDR_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(1),
	datab => \U3|ADDR_OUT\(0),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: FF_X31_Y4_N3
\U1|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(1));

-- Location: LCCOMB_X45_Y1_N4
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

-- Location: FF_X45_Y1_N5
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

-- Location: LCCOMB_X31_Y4_N4
\U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U1|ADDR_OUT\(2) & (!\U2|Add0~1\)) # (!\U1|ADDR_OUT\(2) & ((\U2|Add0~1\) # (GND)))
-- \U2|Add0~3\ = CARRY((!\U2|Add0~1\) # (!\U1|ADDR_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(2),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: FF_X31_Y4_N5
\U1|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(2));

-- Location: LCCOMB_X45_Y1_N2
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

-- Location: FF_X45_Y1_N3
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

-- Location: LCCOMB_X31_Y4_N6
\U2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = (\U1|ADDR_OUT\(3) & (\U2|Add0~3\ $ (GND))) # (!\U1|ADDR_OUT\(3) & (!\U2|Add0~3\ & VCC))
-- \U2|Add0~5\ = CARRY((\U1|ADDR_OUT\(3) & !\U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(3),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: FF_X31_Y4_N7
\U1|ADDR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(3));

-- Location: LCCOMB_X45_Y1_N16
\U3|ADDR_OUT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[3]~feeder_combout\ = \U1|ADDR_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ADDR_OUT\(3),
	combout => \U3|ADDR_OUT[3]~feeder_combout\);

-- Location: FF_X45_Y1_N17
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

-- Location: LCCOMB_X31_Y4_N8
\U2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\U1|ADDR_OUT\(4) & (!\U2|Add0~5\)) # (!\U1|ADDR_OUT\(4) & ((\U2|Add0~5\) # (GND)))
-- \U2|Add0~7\ = CARRY((!\U2|Add0~5\) # (!\U1|ADDR_OUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(4),
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\,
	cout => \U2|Add0~7\);

-- Location: FF_X31_Y4_N9
\U1|ADDR_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(4));

-- Location: LCCOMB_X41_Y4_N20
\U3|ADDR_OUT[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|ADDR_OUT[4]~feeder_combout\ = \U1|ADDR_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|ADDR_OUT\(4),
	combout => \U3|ADDR_OUT[4]~feeder_combout\);

-- Location: FF_X41_Y4_N21
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

-- Location: LCCOMB_X31_Y4_N10
\U2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~8_combout\ = (\U1|ADDR_OUT\(5) & (\U2|Add0~7\ $ (GND))) # (!\U1|ADDR_OUT\(5) & (!\U2|Add0~7\ & VCC))
-- \U2|Add0~9\ = CARRY((\U1|ADDR_OUT\(5) & !\U2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(5),
	datad => VCC,
	cin => \U2|Add0~7\,
	combout => \U2|Add0~8_combout\,
	cout => \U2|Add0~9\);

-- Location: FF_X31_Y4_N11
\U1|ADDR_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(5));

-- Location: LCCOMB_X45_Y1_N22
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

-- Location: FF_X45_Y1_N23
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

-- Location: LCCOMB_X31_Y4_N12
\U2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~10_combout\ = (\U1|ADDR_OUT\(6) & (!\U2|Add0~9\)) # (!\U1|ADDR_OUT\(6) & ((\U2|Add0~9\) # (GND)))
-- \U2|Add0~11\ = CARRY((!\U2|Add0~9\) # (!\U1|ADDR_OUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(6),
	datad => VCC,
	cin => \U2|Add0~9\,
	combout => \U2|Add0~10_combout\,
	cout => \U2|Add0~11\);

-- Location: FF_X31_Y4_N13
\U1|ADDR_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(6));

-- Location: LCCOMB_X45_Y1_N8
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

-- Location: FF_X45_Y1_N9
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

-- Location: LCCOMB_X31_Y4_N14
\U2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~12_combout\ = (\U1|ADDR_OUT\(7) & (\U2|Add0~11\ $ (GND))) # (!\U1|ADDR_OUT\(7) & (!\U2|Add0~11\ & VCC))
-- \U2|Add0~13\ = CARRY((\U1|ADDR_OUT\(7) & !\U2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(7),
	datad => VCC,
	cin => \U2|Add0~11\,
	combout => \U2|Add0~12_combout\,
	cout => \U2|Add0~13\);

-- Location: FF_X31_Y4_N15
\U1|ADDR_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(7));

-- Location: LCCOMB_X41_Y4_N10
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

-- Location: FF_X41_Y4_N11
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

-- Location: M9K_X53_Y4_N0
\U4|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002814080481810",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Assembly.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_ctq3:auto_generated|ALTSYNCRAM",
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

-- Location: LCCOMB_X77_Y12_N4
\U3|INST_OUT[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[0]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(0),
	combout => \U3|INST_OUT[0]~feeder_combout\);

-- Location: FF_X77_Y12_N5
\U3|INST_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(0));

-- Location: LCCOMB_X77_Y12_N2
\U3|INST_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[1]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(1),
	combout => \U3|INST_OUT[1]~feeder_combout\);

-- Location: FF_X77_Y12_N3
\U3|INST_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(1));

-- Location: LCCOMB_X77_Y12_N8
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

-- Location: FF_X77_Y12_N9
\U3|INST_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(2));

-- Location: LCCOMB_X54_Y4_N8
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

-- Location: FF_X54_Y4_N9
\U3|INST_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(3));

-- Location: LCCOMB_X77_Y12_N22
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

-- Location: FF_X77_Y12_N23
\U3|INST_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(4));

-- Location: LCCOMB_X77_Y12_N12
\U3|INST_OUT[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[5]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(5),
	combout => \U3|INST_OUT[5]~feeder_combout\);

-- Location: FF_X77_Y12_N13
\U3|INST_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(5));

-- Location: LCCOMB_X77_Y12_N6
\U3|INST_OUT[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[6]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(6),
	combout => \U3|INST_OUT[6]~feeder_combout\);

-- Location: FF_X77_Y12_N7
\U3|INST_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(6));

-- Location: LCCOMB_X77_Y12_N0
\U3|INST_OUT[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[7]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(7),
	combout => \U3|INST_OUT[7]~feeder_combout\);

-- Location: FF_X77_Y12_N1
\U3|INST_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(7));

-- Location: LCCOMB_X77_Y12_N30
\U3|INST_OUT[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[8]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(8),
	combout => \U3|INST_OUT[8]~feeder_combout\);

-- Location: FF_X77_Y12_N31
\U3|INST_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(8));

-- Location: LCCOMB_X77_Y12_N20
\U3|INST_OUT[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[9]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(9),
	combout => \U3|INST_OUT[9]~feeder_combout\);

-- Location: FF_X77_Y12_N21
\U3|INST_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(9));

-- Location: LCCOMB_X77_Y12_N18
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

-- Location: FF_X77_Y12_N19
\U3|INST_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(10));

-- Location: LCCOMB_X77_Y12_N24
\U3|INST_OUT[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[11]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(11),
	combout => \U3|INST_OUT[11]~feeder_combout\);

-- Location: FF_X77_Y12_N25
\U3|INST_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(11));

-- Location: LCCOMB_X54_Y1_N0
\U3|INST_OUT[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[12]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(12),
	combout => \U3|INST_OUT[12]~feeder_combout\);

-- Location: FF_X54_Y1_N1
\U3|INST_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(12));

-- Location: LCCOMB_X77_Y12_N26
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

-- Location: FF_X77_Y12_N27
\U3|INST_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(13));

-- Location: M9K_X53_Y4_N0
\U4|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005B1021140425",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Assembly.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_MEMORY:U4|altsyncram:altsyncram_component|altsyncram_ctq3:auto_generated|ALTSYNCRAM",
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

-- Location: LCCOMB_X77_Y12_N16
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

-- Location: FF_X77_Y12_N17
\U3|INST_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(14));

-- Location: LCCOMB_X77_Y12_N10
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

-- Location: FF_X77_Y12_N11
\U3|INST_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(15));

-- Location: LCCOMB_X54_Y1_N10
\U3|INST_OUT[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[16]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(16),
	combout => \U3|INST_OUT[16]~feeder_combout\);

-- Location: FF_X54_Y1_N11
\U3|INST_OUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(16));

-- Location: LCCOMB_X59_Y1_N4
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

-- Location: FF_X59_Y1_N5
\U3|INST_OUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(17));

-- Location: LCCOMB_X57_Y1_N0
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

-- Location: FF_X57_Y1_N1
\U3|INST_OUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(18));

-- Location: LCCOMB_X59_Y1_N2
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

-- Location: FF_X59_Y1_N3
\U3|INST_OUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(19));

-- Location: LCCOMB_X54_Y1_N8
\U3|INST_OUT[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[20]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(20),
	combout => \U3|INST_OUT[20]~feeder_combout\);

-- Location: FF_X54_Y1_N9
\U3|INST_OUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(20));

-- Location: LCCOMB_X50_Y1_N0
\U3|INST_OUT[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[21]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(21),
	combout => \U3|INST_OUT[21]~feeder_combout\);

-- Location: FF_X50_Y1_N1
\U3|INST_OUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(21));

-- Location: LCCOMB_X58_Y1_N0
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

-- Location: FF_X58_Y1_N1
\U3|INST_OUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(22));

-- Location: LCCOMB_X56_Y1_N0
\U3|INST_OUT[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[23]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|altsyncram_component|auto_generated|q_a\(23),
	combout => \U3|INST_OUT[23]~feeder_combout\);

-- Location: FF_X56_Y1_N1
\U3|INST_OUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(23));

-- Location: LCCOMB_X59_Y1_N0
\U3|INST_OUT[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[24]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(24),
	combout => \U3|INST_OUT[24]~feeder_combout\);

-- Location: FF_X59_Y1_N1
\U3|INST_OUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(24));

-- Location: LCCOMB_X59_Y1_N14
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

-- Location: FF_X59_Y1_N15
\U3|INST_OUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(25));

-- Location: LCCOMB_X59_Y1_N12
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

-- Location: FF_X59_Y1_N13
\U3|INST_OUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(26));

-- Location: LCCOMB_X55_Y1_N0
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

-- Location: FF_X55_Y1_N1
\U3|INST_OUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(27));

-- Location: LCCOMB_X54_Y4_N6
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

-- Location: FF_X54_Y4_N7
\U3|INST_OUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(28));

-- Location: LCCOMB_X59_Y1_N10
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

-- Location: FF_X59_Y1_N11
\U3|INST_OUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(29));

-- Location: LCCOMB_X52_Y1_N0
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

-- Location: FF_X52_Y1_N1
\U3|INST_OUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(30));

-- Location: LCCOMB_X59_Y1_N24
\U3|INST_OUT[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|INST_OUT[31]~feeder_combout\ = \U4|altsyncram_component|auto_generated|q_a\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|altsyncram_component|auto_generated|q_a\(31),
	combout => \U3|INST_OUT[31]~feeder_combout\);

-- Location: FF_X59_Y1_N25
\U3|INST_OUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|INST_OUT[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|INST_OUT\(31));

-- Location: FF_X31_Y4_N17
\U1|ADDR_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(8));

-- Location: LCCOMB_X31_Y4_N16
\U2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~14_combout\ = (\U1|ADDR_OUT\(8) & (!\U2|Add0~13\)) # (!\U1|ADDR_OUT\(8) & ((\U2|Add0~13\) # (GND)))
-- \U2|Add0~15\ = CARRY((!\U2|Add0~13\) # (!\U1|ADDR_OUT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(8),
	datad => VCC,
	cin => \U2|Add0~13\,
	combout => \U2|Add0~14_combout\,
	cout => \U2|Add0~15\);

-- Location: FF_X31_Y4_N19
\U1|ADDR_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(9));

-- Location: LCCOMB_X31_Y4_N18
\U2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~16_combout\ = (\U1|ADDR_OUT\(9) & (\U2|Add0~15\ $ (GND))) # (!\U1|ADDR_OUT\(9) & (!\U2|Add0~15\ & VCC))
-- \U2|Add0~17\ = CARRY((\U1|ADDR_OUT\(9) & !\U2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(9),
	datad => VCC,
	cin => \U2|Add0~15\,
	combout => \U2|Add0~16_combout\,
	cout => \U2|Add0~17\);

-- Location: FF_X31_Y4_N21
\U1|ADDR_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(10));

-- Location: LCCOMB_X31_Y4_N20
\U2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~18_combout\ = (\U1|ADDR_OUT\(10) & (!\U2|Add0~17\)) # (!\U1|ADDR_OUT\(10) & ((\U2|Add0~17\) # (GND)))
-- \U2|Add0~19\ = CARRY((!\U2|Add0~17\) # (!\U1|ADDR_OUT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(10),
	datad => VCC,
	cin => \U2|Add0~17\,
	combout => \U2|Add0~18_combout\,
	cout => \U2|Add0~19\);

-- Location: FF_X31_Y4_N23
\U1|ADDR_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(11));

-- Location: LCCOMB_X31_Y4_N22
\U2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~20_combout\ = (\U1|ADDR_OUT\(11) & (\U2|Add0~19\ $ (GND))) # (!\U1|ADDR_OUT\(11) & (!\U2|Add0~19\ & VCC))
-- \U2|Add0~21\ = CARRY((\U1|ADDR_OUT\(11) & !\U2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(11),
	datad => VCC,
	cin => \U2|Add0~19\,
	combout => \U2|Add0~20_combout\,
	cout => \U2|Add0~21\);

-- Location: FF_X31_Y4_N25
\U1|ADDR_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(12));

-- Location: LCCOMB_X31_Y4_N24
\U2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~22_combout\ = (\U1|ADDR_OUT\(12) & (!\U2|Add0~21\)) # (!\U1|ADDR_OUT\(12) & ((\U2|Add0~21\) # (GND)))
-- \U2|Add0~23\ = CARRY((!\U2|Add0~21\) # (!\U1|ADDR_OUT\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(12),
	datad => VCC,
	cin => \U2|Add0~21\,
	combout => \U2|Add0~22_combout\,
	cout => \U2|Add0~23\);

-- Location: FF_X31_Y4_N27
\U1|ADDR_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(13));

-- Location: LCCOMB_X31_Y4_N26
\U2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~24_combout\ = (\U1|ADDR_OUT\(13) & (\U2|Add0~23\ $ (GND))) # (!\U1|ADDR_OUT\(13) & (!\U2|Add0~23\ & VCC))
-- \U2|Add0~25\ = CARRY((\U1|ADDR_OUT\(13) & !\U2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(13),
	datad => VCC,
	cin => \U2|Add0~23\,
	combout => \U2|Add0~24_combout\,
	cout => \U2|Add0~25\);

-- Location: FF_X31_Y4_N29
\U1|ADDR_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(14));

-- Location: LCCOMB_X31_Y4_N28
\U2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~26_combout\ = (\U1|ADDR_OUT\(14) & (!\U2|Add0~25\)) # (!\U1|ADDR_OUT\(14) & ((\U2|Add0~25\) # (GND)))
-- \U2|Add0~27\ = CARRY((!\U2|Add0~25\) # (!\U1|ADDR_OUT\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(14),
	datad => VCC,
	cin => \U2|Add0~25\,
	combout => \U2|Add0~26_combout\,
	cout => \U2|Add0~27\);

-- Location: FF_X31_Y4_N31
\U1|ADDR_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(15));

-- Location: LCCOMB_X31_Y4_N30
\U2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~28_combout\ = (\U1|ADDR_OUT\(15) & (\U2|Add0~27\ $ (GND))) # (!\U1|ADDR_OUT\(15) & (!\U2|Add0~27\ & VCC))
-- \U2|Add0~29\ = CARRY((\U1|ADDR_OUT\(15) & !\U2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(15),
	datad => VCC,
	cin => \U2|Add0~27\,
	combout => \U2|Add0~28_combout\,
	cout => \U2|Add0~29\);

-- Location: FF_X31_Y3_N1
\U1|ADDR_OUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(16));

-- Location: LCCOMB_X31_Y3_N0
\U2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~30_combout\ = (\U1|ADDR_OUT\(16) & (!\U2|Add0~29\)) # (!\U1|ADDR_OUT\(16) & ((\U2|Add0~29\) # (GND)))
-- \U2|Add0~31\ = CARRY((!\U2|Add0~29\) # (!\U1|ADDR_OUT\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(16),
	datad => VCC,
	cin => \U2|Add0~29\,
	combout => \U2|Add0~30_combout\,
	cout => \U2|Add0~31\);

-- Location: FF_X31_Y3_N3
\U1|ADDR_OUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(17));

-- Location: LCCOMB_X31_Y3_N2
\U2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~32_combout\ = (\U1|ADDR_OUT\(17) & (\U2|Add0~31\ $ (GND))) # (!\U1|ADDR_OUT\(17) & (!\U2|Add0~31\ & VCC))
-- \U2|Add0~33\ = CARRY((\U1|ADDR_OUT\(17) & !\U2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(17),
	datad => VCC,
	cin => \U2|Add0~31\,
	combout => \U2|Add0~32_combout\,
	cout => \U2|Add0~33\);

-- Location: FF_X31_Y3_N5
\U1|ADDR_OUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(18));

-- Location: LCCOMB_X31_Y3_N4
\U2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~34_combout\ = (\U1|ADDR_OUT\(18) & (!\U2|Add0~33\)) # (!\U1|ADDR_OUT\(18) & ((\U2|Add0~33\) # (GND)))
-- \U2|Add0~35\ = CARRY((!\U2|Add0~33\) # (!\U1|ADDR_OUT\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(18),
	datad => VCC,
	cin => \U2|Add0~33\,
	combout => \U2|Add0~34_combout\,
	cout => \U2|Add0~35\);

-- Location: FF_X31_Y3_N7
\U1|ADDR_OUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(19));

-- Location: LCCOMB_X31_Y3_N6
\U2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~36_combout\ = (\U1|ADDR_OUT\(19) & (\U2|Add0~35\ $ (GND))) # (!\U1|ADDR_OUT\(19) & (!\U2|Add0~35\ & VCC))
-- \U2|Add0~37\ = CARRY((\U1|ADDR_OUT\(19) & !\U2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(19),
	datad => VCC,
	cin => \U2|Add0~35\,
	combout => \U2|Add0~36_combout\,
	cout => \U2|Add0~37\);

-- Location: FF_X31_Y3_N9
\U1|ADDR_OUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(20));

-- Location: LCCOMB_X31_Y3_N8
\U2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~38_combout\ = (\U1|ADDR_OUT\(20) & (!\U2|Add0~37\)) # (!\U1|ADDR_OUT\(20) & ((\U2|Add0~37\) # (GND)))
-- \U2|Add0~39\ = CARRY((!\U2|Add0~37\) # (!\U1|ADDR_OUT\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(20),
	datad => VCC,
	cin => \U2|Add0~37\,
	combout => \U2|Add0~38_combout\,
	cout => \U2|Add0~39\);

-- Location: FF_X31_Y3_N11
\U1|ADDR_OUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(21));

-- Location: LCCOMB_X31_Y3_N10
\U2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~40_combout\ = (\U1|ADDR_OUT\(21) & (\U2|Add0~39\ $ (GND))) # (!\U1|ADDR_OUT\(21) & (!\U2|Add0~39\ & VCC))
-- \U2|Add0~41\ = CARRY((\U1|ADDR_OUT\(21) & !\U2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(21),
	datad => VCC,
	cin => \U2|Add0~39\,
	combout => \U2|Add0~40_combout\,
	cout => \U2|Add0~41\);

-- Location: FF_X31_Y3_N13
\U1|ADDR_OUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(22));

-- Location: LCCOMB_X31_Y3_N12
\U2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~42_combout\ = (\U1|ADDR_OUT\(22) & (!\U2|Add0~41\)) # (!\U1|ADDR_OUT\(22) & ((\U2|Add0~41\) # (GND)))
-- \U2|Add0~43\ = CARRY((!\U2|Add0~41\) # (!\U1|ADDR_OUT\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(22),
	datad => VCC,
	cin => \U2|Add0~41\,
	combout => \U2|Add0~42_combout\,
	cout => \U2|Add0~43\);

-- Location: FF_X31_Y3_N15
\U1|ADDR_OUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(23));

-- Location: LCCOMB_X31_Y3_N14
\U2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~44_combout\ = (\U1|ADDR_OUT\(23) & (\U2|Add0~43\ $ (GND))) # (!\U1|ADDR_OUT\(23) & (!\U2|Add0~43\ & VCC))
-- \U2|Add0~45\ = CARRY((\U1|ADDR_OUT\(23) & !\U2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(23),
	datad => VCC,
	cin => \U2|Add0~43\,
	combout => \U2|Add0~44_combout\,
	cout => \U2|Add0~45\);

-- Location: FF_X31_Y3_N17
\U1|ADDR_OUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(24));

-- Location: LCCOMB_X31_Y3_N16
\U2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~46_combout\ = (\U1|ADDR_OUT\(24) & (!\U2|Add0~45\)) # (!\U1|ADDR_OUT\(24) & ((\U2|Add0~45\) # (GND)))
-- \U2|Add0~47\ = CARRY((!\U2|Add0~45\) # (!\U1|ADDR_OUT\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(24),
	datad => VCC,
	cin => \U2|Add0~45\,
	combout => \U2|Add0~46_combout\,
	cout => \U2|Add0~47\);

-- Location: FF_X31_Y3_N19
\U1|ADDR_OUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(25));

-- Location: LCCOMB_X31_Y3_N18
\U2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~48_combout\ = (\U1|ADDR_OUT\(25) & (\U2|Add0~47\ $ (GND))) # (!\U1|ADDR_OUT\(25) & (!\U2|Add0~47\ & VCC))
-- \U2|Add0~49\ = CARRY((\U1|ADDR_OUT\(25) & !\U2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(25),
	datad => VCC,
	cin => \U2|Add0~47\,
	combout => \U2|Add0~48_combout\,
	cout => \U2|Add0~49\);

-- Location: FF_X31_Y3_N21
\U1|ADDR_OUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(26));

-- Location: LCCOMB_X31_Y3_N20
\U2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~50_combout\ = (\U1|ADDR_OUT\(26) & (!\U2|Add0~49\)) # (!\U1|ADDR_OUT\(26) & ((\U2|Add0~49\) # (GND)))
-- \U2|Add0~51\ = CARRY((!\U2|Add0~49\) # (!\U1|ADDR_OUT\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(26),
	datad => VCC,
	cin => \U2|Add0~49\,
	combout => \U2|Add0~50_combout\,
	cout => \U2|Add0~51\);

-- Location: FF_X31_Y3_N23
\U1|ADDR_OUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(27));

-- Location: LCCOMB_X31_Y3_N22
\U2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~52_combout\ = (\U1|ADDR_OUT\(27) & (\U2|Add0~51\ $ (GND))) # (!\U1|ADDR_OUT\(27) & (!\U2|Add0~51\ & VCC))
-- \U2|Add0~53\ = CARRY((\U1|ADDR_OUT\(27) & !\U2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(27),
	datad => VCC,
	cin => \U2|Add0~51\,
	combout => \U2|Add0~52_combout\,
	cout => \U2|Add0~53\);

-- Location: FF_X31_Y3_N25
\U1|ADDR_OUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(28));

-- Location: LCCOMB_X31_Y3_N24
\U2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~54_combout\ = (\U1|ADDR_OUT\(28) & (!\U2|Add0~53\)) # (!\U1|ADDR_OUT\(28) & ((\U2|Add0~53\) # (GND)))
-- \U2|Add0~55\ = CARRY((!\U2|Add0~53\) # (!\U1|ADDR_OUT\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(28),
	datad => VCC,
	cin => \U2|Add0~53\,
	combout => \U2|Add0~54_combout\,
	cout => \U2|Add0~55\);

-- Location: FF_X31_Y3_N27
\U1|ADDR_OUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(29));

-- Location: LCCOMB_X31_Y3_N26
\U2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~56_combout\ = (\U1|ADDR_OUT\(29) & (\U2|Add0~55\ $ (GND))) # (!\U1|ADDR_OUT\(29) & (!\U2|Add0~55\ & VCC))
-- \U2|Add0~57\ = CARRY((\U1|ADDR_OUT\(29) & !\U2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(29),
	datad => VCC,
	cin => \U2|Add0~55\,
	combout => \U2|Add0~56_combout\,
	cout => \U2|Add0~57\);

-- Location: FF_X31_Y3_N29
\U1|ADDR_OUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(30));

-- Location: LCCOMB_X31_Y3_N28
\U2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~58_combout\ = (\U1|ADDR_OUT\(30) & (!\U2|Add0~57\)) # (!\U1|ADDR_OUT\(30) & ((\U2|Add0~57\) # (GND)))
-- \U2|Add0~59\ = CARRY((!\U2|Add0~57\) # (!\U1|ADDR_OUT\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|ADDR_OUT\(30),
	datad => VCC,
	cin => \U2|Add0~57\,
	combout => \U2|Add0~58_combout\,
	cout => \U2|Add0~59\);

-- Location: FF_X31_Y3_N31
\U1|ADDR_OUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ADDR_OUT\(31));

-- Location: LCCOMB_X31_Y3_N30
\U2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~60_combout\ = \U1|ADDR_OUT\(31) $ (!\U2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ADDR_OUT\(31),
	cin => \U2|Add0~59\,
	combout => \U2|Add0~60_combout\);

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

ww_IP_OUTPUT(0) <= \IP_OUTPUT[0]~output_o\;

ww_IP_OUTPUT(1) <= \IP_OUTPUT[1]~output_o\;

ww_IP_OUTPUT(2) <= \IP_OUTPUT[2]~output_o\;

ww_IP_OUTPUT(3) <= \IP_OUTPUT[3]~output_o\;

ww_IP_OUTPUT(4) <= \IP_OUTPUT[4]~output_o\;

ww_IP_OUTPUT(5) <= \IP_OUTPUT[5]~output_o\;

ww_IP_OUTPUT(6) <= \IP_OUTPUT[6]~output_o\;

ww_IP_OUTPUT(7) <= \IP_OUTPUT[7]~output_o\;

ww_IP_OUTPUT(8) <= \IP_OUTPUT[8]~output_o\;

ww_IP_OUTPUT(9) <= \IP_OUTPUT[9]~output_o\;

ww_IP_OUTPUT(10) <= \IP_OUTPUT[10]~output_o\;

ww_IP_OUTPUT(11) <= \IP_OUTPUT[11]~output_o\;

ww_IP_OUTPUT(12) <= \IP_OUTPUT[12]~output_o\;

ww_IP_OUTPUT(13) <= \IP_OUTPUT[13]~output_o\;

ww_IP_OUTPUT(14) <= \IP_OUTPUT[14]~output_o\;

ww_IP_OUTPUT(15) <= \IP_OUTPUT[15]~output_o\;

ww_IP_OUTPUT(16) <= \IP_OUTPUT[16]~output_o\;

ww_IP_OUTPUT(17) <= \IP_OUTPUT[17]~output_o\;

ww_IP_OUTPUT(18) <= \IP_OUTPUT[18]~output_o\;

ww_IP_OUTPUT(19) <= \IP_OUTPUT[19]~output_o\;

ww_IP_OUTPUT(20) <= \IP_OUTPUT[20]~output_o\;

ww_IP_OUTPUT(21) <= \IP_OUTPUT[21]~output_o\;

ww_IP_OUTPUT(22) <= \IP_OUTPUT[22]~output_o\;

ww_IP_OUTPUT(23) <= \IP_OUTPUT[23]~output_o\;

ww_IP_OUTPUT(24) <= \IP_OUTPUT[24]~output_o\;

ww_IP_OUTPUT(25) <= \IP_OUTPUT[25]~output_o\;

ww_IP_OUTPUT(26) <= \IP_OUTPUT[26]~output_o\;

ww_IP_OUTPUT(27) <= \IP_OUTPUT[27]~output_o\;

ww_IP_OUTPUT(28) <= \IP_OUTPUT[28]~output_o\;

ww_IP_OUTPUT(29) <= \IP_OUTPUT[29]~output_o\;

ww_IP_OUTPUT(30) <= \IP_OUTPUT[30]~output_o\;

ww_IP_OUTPUT(31) <= \IP_OUTPUT[31]~output_o\;

ww_ADDER_OUTPUT(0) <= \ADDER_OUTPUT[0]~output_o\;

ww_ADDER_OUTPUT(1) <= \ADDER_OUTPUT[1]~output_o\;

ww_ADDER_OUTPUT(2) <= \ADDER_OUTPUT[2]~output_o\;

ww_ADDER_OUTPUT(3) <= \ADDER_OUTPUT[3]~output_o\;

ww_ADDER_OUTPUT(4) <= \ADDER_OUTPUT[4]~output_o\;

ww_ADDER_OUTPUT(5) <= \ADDER_OUTPUT[5]~output_o\;

ww_ADDER_OUTPUT(6) <= \ADDER_OUTPUT[6]~output_o\;

ww_ADDER_OUTPUT(7) <= \ADDER_OUTPUT[7]~output_o\;

ww_ADDER_OUTPUT(8) <= \ADDER_OUTPUT[8]~output_o\;

ww_ADDER_OUTPUT(9) <= \ADDER_OUTPUT[9]~output_o\;

ww_ADDER_OUTPUT(10) <= \ADDER_OUTPUT[10]~output_o\;

ww_ADDER_OUTPUT(11) <= \ADDER_OUTPUT[11]~output_o\;

ww_ADDER_OUTPUT(12) <= \ADDER_OUTPUT[12]~output_o\;

ww_ADDER_OUTPUT(13) <= \ADDER_OUTPUT[13]~output_o\;

ww_ADDER_OUTPUT(14) <= \ADDER_OUTPUT[14]~output_o\;

ww_ADDER_OUTPUT(15) <= \ADDER_OUTPUT[15]~output_o\;

ww_ADDER_OUTPUT(16) <= \ADDER_OUTPUT[16]~output_o\;

ww_ADDER_OUTPUT(17) <= \ADDER_OUTPUT[17]~output_o\;

ww_ADDER_OUTPUT(18) <= \ADDER_OUTPUT[18]~output_o\;

ww_ADDER_OUTPUT(19) <= \ADDER_OUTPUT[19]~output_o\;

ww_ADDER_OUTPUT(20) <= \ADDER_OUTPUT[20]~output_o\;

ww_ADDER_OUTPUT(21) <= \ADDER_OUTPUT[21]~output_o\;

ww_ADDER_OUTPUT(22) <= \ADDER_OUTPUT[22]~output_o\;

ww_ADDER_OUTPUT(23) <= \ADDER_OUTPUT[23]~output_o\;

ww_ADDER_OUTPUT(24) <= \ADDER_OUTPUT[24]~output_o\;

ww_ADDER_OUTPUT(25) <= \ADDER_OUTPUT[25]~output_o\;

ww_ADDER_OUTPUT(26) <= \ADDER_OUTPUT[26]~output_o\;

ww_ADDER_OUTPUT(27) <= \ADDER_OUTPUT[27]~output_o\;

ww_ADDER_OUTPUT(28) <= \ADDER_OUTPUT[28]~output_o\;

ww_ADDER_OUTPUT(29) <= \ADDER_OUTPUT[29]~output_o\;

ww_ADDER_OUTPUT(30) <= \ADDER_OUTPUT[30]~output_o\;

ww_ADDER_OUTPUT(31) <= \ADDER_OUTPUT[31]~output_o\;

ww_PC_OUTPUT(0) <= \PC_OUTPUT[0]~output_o\;

ww_PC_OUTPUT(1) <= \PC_OUTPUT[1]~output_o\;

ww_PC_OUTPUT(2) <= \PC_OUTPUT[2]~output_o\;

ww_PC_OUTPUT(3) <= \PC_OUTPUT[3]~output_o\;

ww_PC_OUTPUT(4) <= \PC_OUTPUT[4]~output_o\;

ww_PC_OUTPUT(5) <= \PC_OUTPUT[5]~output_o\;

ww_PC_OUTPUT(6) <= \PC_OUTPUT[6]~output_o\;

ww_PC_OUTPUT(7) <= \PC_OUTPUT[7]~output_o\;

ww_PC_OUTPUT(8) <= \PC_OUTPUT[8]~output_o\;

ww_PC_OUTPUT(9) <= \PC_OUTPUT[9]~output_o\;

ww_PC_OUTPUT(10) <= \PC_OUTPUT[10]~output_o\;

ww_PC_OUTPUT(11) <= \PC_OUTPUT[11]~output_o\;

ww_PC_OUTPUT(12) <= \PC_OUTPUT[12]~output_o\;

ww_PC_OUTPUT(13) <= \PC_OUTPUT[13]~output_o\;

ww_PC_OUTPUT(14) <= \PC_OUTPUT[14]~output_o\;

ww_PC_OUTPUT(15) <= \PC_OUTPUT[15]~output_o\;

ww_PC_OUTPUT(16) <= \PC_OUTPUT[16]~output_o\;

ww_PC_OUTPUT(17) <= \PC_OUTPUT[17]~output_o\;

ww_PC_OUTPUT(18) <= \PC_OUTPUT[18]~output_o\;

ww_PC_OUTPUT(19) <= \PC_OUTPUT[19]~output_o\;

ww_PC_OUTPUT(20) <= \PC_OUTPUT[20]~output_o\;

ww_PC_OUTPUT(21) <= \PC_OUTPUT[21]~output_o\;

ww_PC_OUTPUT(22) <= \PC_OUTPUT[22]~output_o\;

ww_PC_OUTPUT(23) <= \PC_OUTPUT[23]~output_o\;

ww_PC_OUTPUT(24) <= \PC_OUTPUT[24]~output_o\;

ww_PC_OUTPUT(25) <= \PC_OUTPUT[25]~output_o\;

ww_PC_OUTPUT(26) <= \PC_OUTPUT[26]~output_o\;

ww_PC_OUTPUT(27) <= \PC_OUTPUT[27]~output_o\;

ww_PC_OUTPUT(28) <= \PC_OUTPUT[28]~output_o\;

ww_PC_OUTPUT(29) <= \PC_OUTPUT[29]~output_o\;

ww_PC_OUTPUT(30) <= \PC_OUTPUT[30]~output_o\;

ww_PC_OUTPUT(31) <= \PC_OUTPUT[31]~output_o\;

ww_IR_ADDR_OUTPUT(0) <= \IR_ADDR_OUTPUT[0]~output_o\;

ww_IR_ADDR_OUTPUT(1) <= \IR_ADDR_OUTPUT[1]~output_o\;

ww_IR_ADDR_OUTPUT(2) <= \IR_ADDR_OUTPUT[2]~output_o\;

ww_IR_ADDR_OUTPUT(3) <= \IR_ADDR_OUTPUT[3]~output_o\;

ww_IR_ADDR_OUTPUT(4) <= \IR_ADDR_OUTPUT[4]~output_o\;

ww_IR_ADDR_OUTPUT(5) <= \IR_ADDR_OUTPUT[5]~output_o\;

ww_IR_ADDR_OUTPUT(6) <= \IR_ADDR_OUTPUT[6]~output_o\;

ww_IR_ADDR_OUTPUT(7) <= \IR_ADDR_OUTPUT[7]~output_o\;
END structure;


