LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY MIPS_PROCESSOR IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (
		CLK : IN STD_LOGIC;
		INSTRUCTION_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
		);

END MIPS_PROCESSOR;

ARCHITECTURE RTL OF MIPS_PROCESSOR IS

COMPONENT PROGRAM_COUNTER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
		
	PORT (
		CLK : IN STD_LOGIC;
		ADDR_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		ADDR_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0'));
END COMPONENT;

COMPONENT ADDER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
		
	PORT (
		ADDR_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		ADDR_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0));
END COMPONENT;

COMPONENT INSTRUCTION_REGISTER IS
	
	GENERIC(
		SIZE : INTEGER := 32
		);
	
	PORT(
		CLK					:	IN STD_LOGIC;
		ADDR_IN			   :	IN STD_LOGIC_Vector(SIZE-1 DOWNTO 0);
		DATA_IN				:	IN STD_LOGIC_Vector(SIZE-1 DOWNTO 0);
		ADDR_OUT			   :	OUT STD_LOGIC_Vector(7 DOWNTO 0);
		INST_OUT 	      :	OUT STD_LOGIC_Vector(SIZE-1 DOWNTO 0)
		);
		
END COMPONENT;

component IP_MEMORY
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

COMPONENT ALU IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	PORT ( S : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
			A, B : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) ;
			F : BUFFER STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) ;
			COMPARE: OUT STD_LOGIC ) ;
END COMPONENT ;

COMPONENT MUX IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	port(
		SEL			: IN STD_LOGIC;
		INPUT_0		: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		INPUT_1  	: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		OUTPUT		: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
	);
		
END COMPONENT;

COMPONENT SIGN_EXTEND IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	port(
		INPUT		: IN STD_LOGIC_VECTOR(SIZE-17 DOWNTO 0);
		OUTPUT	: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0));
		
END COMPONENT;

COMPONENT REGISTERS IS
	
	PORT(
		CLK																		: IN STD_LOGIC;
		REGWRITE																	: IN STD_LOGIC;
		READ_REGISTER_1, READ_REGISTER_2, WRITE_REGISTER			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		WRITE_DATA																: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		READ_DATA_1, READ_DATA_2											: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

	SIGNAL PC_ADDR_INPUT, PC_ADDR_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := "00000000000000000000000000000000";
	SIGNAL IP_TO_INST : STD_LOGIC_VECTOR(31 DOWNTO 0) := "00000000000000000000000000000000";
	SIGNAL IR_ADDR_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
	SIGNAL IP_Q : STD_LOGIC_VECTOR(31 DOWNTO 0) := "00000000000000000000000000000000";
BEGIN

	U1 : PROGRAM_COUNTER PORT MAP(CLK,PC_ADDR_INPUT,PC_ADDR_OUTPUT);
	U2 : ADDER PORT MAP(PC_ADDR_OUTPUT,PC_ADDR_INPUT);
	U3 : INSTRUCTION_REGISTER PORT MAP(CLK,PC_ADDR_OUTPUT,IP_Q,IR_ADDR_OUT,INSTRUCTION_OUT);
	U4 : IP_MEMORY PORT MAP(IR_ADDR_OUT(7 DOWNTO 0),CLK, x"00000000", '0',IP_Q);
	
	
	
END RTL;