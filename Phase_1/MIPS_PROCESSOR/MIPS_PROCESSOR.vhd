LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY MIPS_PROCESSOR IS
	GENERIC(
		SIZE : INTEGER := 32; --Makes changing size easier 
		ADDR_SIZE : INTEGER := 8
		);
	PORT (
		CLK 			: IN STD_LOGIC := '0'; 
		INSTRUCTION_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		IP_OUTPUT 		: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		PC_INPUT 	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
		PC_OUTPUT 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
		IR_ADDR_OUTPUT 	: OUT STD_LOGIC_VECTOR(ADDR_SIZE-1 DOWNTO 0) := (OTHERS => '0');
		NUM_TO_ADD : OUT STD_LOGIC
		);

END MIPS_PROCESSOR;

ARCHITECTURE RTL OF MIPS_PROCESSOR IS

COMPONENT PROGRAM_COUNTER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
	PORT (
		CLK 		: IN STD_LOGIC;
		ADDRESS_IN  : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		ADDRESS_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0')
		);
END COMPONENT;

COMPONENT ADDER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
	PORT (
		ADDRESS_IN  : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		NUM : IN STD_LOGIC;
		ADDRESS_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0')
		);
END COMPONENT;

COMPONENT INSTRUCTION_REGISTER IS
	
	GENERIC(
		SIZE : INTEGER := 32
		);
	
	PORT(
		CLK					:	IN STD_LOGIC:= '0';
		ADDR_IN			   :	IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		DATA_IN				:	IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		ADDR_OUT			   : 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
		INST_OUT 	      :	OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0')
		);	
END COMPONENT;

component IP_MEMORY
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '0';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0) := (OTHERS => '0');
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0) := (OTHERS => '0')
	);
end component;

COMPONENT PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;


	SIGNAL PC_ADDR_INPUT, PC_ADDR_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_TO_INST : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IR_ADDR_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_Q : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL NUM_TO_ADD1 : STD_LOGIC := '1';
	SIGNAL LOCKED,CLOCK_PLL : STD_LOGIC;
BEGIN

	U1 : PROGRAM_COUNTER PORT MAP(CLOCK_PLL,PC_ADDR_INPUT,PC_ADDR_OUTPUT); --Program counter 
	U2 : ADDER PORT MAP(PC_ADDR_OUTPUT,NUM_TO_ADD1,PC_ADDR_INPUT); --Increments the Program counter
	U3 : INSTRUCTION_REGISTER PORT MAP(CLOCK_PLL,PC_ADDR_OUTPUT,IP_Q,IR_ADDR_OUT,INSTRUCTION_OUT); --Instruction register
	U4 : IP_MEMORY PORT MAP(IR_ADDR_OUT(7 DOWNTO 0),CLOCK_PLL, x"00000000", '0',IP_Q); --Brings in instructions from a .mif file
	U5 : PLL PORT MAP(CLK,CLOCK_PLL,LOCKED); --TO GET A VALUE FOR FMAX AND SETUP SLACK THATS NONNEGATIVE
	
	IP_OUTPUT <= IP_Q; --FOR TESTBENCH
	PC_INPUT <= PC_ADDR_INPUT(3 DOWNTO 0); --FOR TESTBENCH
	PC_OUTPUT <= PC_ADDR_OUTPUT(3 DOWNTO 0); --FOR TESTBENCH
	IR_ADDR_OUTPUT <= IR_ADDR_OUT; --FOR TESTBENCH
	NUM_TO_ADD <= NUM_TO_ADD1; --FOR TESTBENCH
	
END RTL;