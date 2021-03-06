LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;
use IEEE.math_real.all;

library modelsim_lib;   -- support for SignalSpy

library work;

ENTITY TESTBENCH IS
END TESTBENCH;

ARCHITECTURE RTL OF TESTBENCH IS
COMPONENT MIPS_PROCESSOR IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (
		CLK 		: IN STD_LOGIC;
   	INSTRUCTION : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		ALU_RES   : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		RD,RS,RT   : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		CONTROL : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);

END COMPONENT;
	
COMPONENT REGISTERS IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	PORT(
		CLK																		: IN STD_LOGIC := '0';
		REGWRITE																	: IN STD_LOGIC := '0';
		READ_REGISTER_1, READ_REGISTER_2, WRITE_REGISTER			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		WRITE_DATA																: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := "00000000000000000000000000000000";
		READ_DATA_1, READ_DATA_2											: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
	);
END COMPONENT;
	
	SIGNAL CLK_TB,STOP_BIT : STD_LOGIC;
	SIGNAL CONTROL_TB : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL ALU_RES_TB,INSTRUCTION_TB,RS_TB,RT_TB,RD_TB : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	DUT : MIPS_PROCESSOR PORT MAP(CLK_TB,INSTRUCTION_TB,ALU_RES_TB,RD_TB,RS_TB,RT_TB,CONTROL_TB);
	CLK_1 : PROCESS
		BEGIN
			CLK_TB <= '1'; WAIT FOR 10NS;
			CLK_TB <= '0'; WAIT FOR 10NS;
			IF (STOP_BIT = '1') THEN
				WAIT;
			END IF;
			
	END PROCESS;
	
	STIMULUS : PROCESS
	BEGIN
		
		WAIT FOR 250NS;
		STOP_BIT <= '1'; --USED FOR GOING THROUGH INSTRUCTIONS
		WAIT;
	END PROCESS;
END RTL;