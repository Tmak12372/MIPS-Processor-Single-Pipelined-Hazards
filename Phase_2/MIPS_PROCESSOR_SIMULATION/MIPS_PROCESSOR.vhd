--Mips 32-Bit Processor Phase 2
--Authors: Tyler McCormick
--ECE 4120 
--Spring 2022

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY WORK;

ENTITY MIPS_PROCESSOR IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (
		CLK 			 	 : IN STD_LOGIC;
		RESET           : IN STD_LOGIC;
		REG_DEST        : IN STD_LOGIC;
		ALU_SRC			 : IN STD_LOGIC;
		REG_WRITE       : IN STD_LOGIC;
		ALU_OPERATION   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		O_INSTRUCTION_OUT    : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		O_RD				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_RS 				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_RT				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_PC_OUTPUT 		 : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		O_ALU_RESULT         : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
	   O_MUX_OUTPUT    : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
		);

END MIPS_PROCESSOR;

ARCHITECTURE RTL OF MIPS_PROCESSOR IS


	SIGNAL PC_ADDR_INPUT, PC_ADDR_OUTPUT,INSTRUCTION_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_TO_INST                                    : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_Q 									     : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_RESULT 								     : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_1									 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_2  								 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SIGN_EXTENDED_VALUE 							 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MUX_OUTPUT 									 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_OUTPUT 									 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_ZERO 									 : STD_LOGIC 					 := '0';
	SIGNAL WRITE_CHOICE : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	U1 : ENTITY WORK.PROGRAM_COUNTER PORT MAP(CLK,RESET,PC_ADDR_INPUT,PC_ADDR_OUTPUT); --program counter
	U2 : ENTITY WORK.ADDER PORT MAP(PC_ADDR_OUTPUT,PC_ADDR_INPUT); --increments program counter by 4
	U4 : ENTITY WORK.IP_MEMORY PORT MAP(PC_ADDR_OUTPUT(7 DOWNTO 0),CLK, x"00000000", '0',INSTRUCTION_OUT); --holds instructions in memeory
	U5 : ENTITY WORK.REGISTERS PORT MAP(CLK,RESET,REG_WRITE,INSTRUCTION_OUT(25 DOWNTO 21),INSTRUCTION_OUT(20 DOWNTO 16),WRITE_CHOICE,ALU_OUTPUT,READ_DATA_1,READ_DATA_2);
	U6 : ENTITY WORK.SIGN_EXTEND PORT MAP(INSTRUCTION_OUT(15 DOWNTO 0),SIGN_EXTENDED_VALUE); --sign extends the the lower 16 bits of instruction 
	U7 : ENTITY WORK.MUX PORT MAP(ALU_SRC,READ_DATA_2,SIGN_EXTENDED_VALUE,MUX_OUTPUT); --chooses either read_data_2 or the sign extended value
	U8 : ENTITY WORK.ALU PORT MAP(ALU_OPERATION,READ_DATA_1,MUX_OUTPUT,INSTRUCTION_OUT(10 DOWNTO 6),ALU_OUTPUT,ALU_ZERO); --ALU chooses which operation to do given a selection
	U9 : ENTITY WORK.MUX GENERIC MAP (SIZE => 5) PORT MAP(REG_DEST,INSTRUCTION_OUT(20 DOWNTO 16),INSTRUCTION_OUT(15 DOWNTO 11),WRITE_CHOICE); --REGISTERS MUX

	--Values for Testbench
	O_INSTRUCTION_OUT <= INSTRUCTION_OUT;
	O_RD <= ALU_OUTPUT;			 
	O_RS <= READ_DATA_1;				
	O_RT <= MUX_OUTPUT;
	O_PC_OUTPUT <= PC_ADDR_OUTPUT;
	O_ALU_RESULT <= ALU_OUTPUT;
	O_MUX_OUTPUT <= MUX_OUTPUT;
	
END RTL;