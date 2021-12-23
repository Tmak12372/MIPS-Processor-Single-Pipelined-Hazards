LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY MIPS_PROCESSOR IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (
		CLK 		: IN STD_LOGIC
		);

END MIPS_PROCESSOR;

ARCHITECTURE RTL OF MIPS_PROCESSOR IS

COMPONENT PROGRAM_COUNTER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
		
	PORT (
		CLK      : IN STD_LOGIC;
		ADDR_IN  : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
		ADDR_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0'));
END COMPONENT;

COMPONENT ADDER IS
	GENERIC (
		SIZE : INTEGER := 32
		);
		
	PORT (
		ADDR_IN  : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		ADDR_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0));
END COMPONENT;

COMPONENT INSTRUCTION_REGISTER IS
	
	GENERIC(
		SIZE : INTEGER := 32
		);
	
	PORT(
		CLK				   :	IN STD_LOGIC;
		ADDR_IN			   :	IN STD_LOGIC_Vector(SIZE-1 DOWNTO 0);
		DATA_IN			   :	IN STD_LOGIC_Vector(SIZE-1 DOWNTO 0);
		ADDR_OUT		   :	OUT STD_LOGIC_Vector(7 DOWNTO 0);
		INST_OUT 	       :	OUT STD_LOGIC_Vector(SIZE-1 DOWNTO 0)
		);
		
END COMPONENT;

component IP_MEMORY
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
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
		INPUT	: IN STD_LOGIC_VECTOR(SIZE-17 DOWNTO 0);
		OUTPUT	: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0));
		
END COMPONENT;

COMPONENT REGISTERS IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	PORT(
		CLK															: IN STD_LOGIC;
		REGWRITE													: IN STD_LOGIC;
		READ_REGISTER_1, READ_REGISTER_2, WRITE_REGISTER			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		WRITE_DATA													: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		READ_DATA_1, READ_DATA_2									: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ALU_CONTROLLER IS
    PORT (
        ALU_OP    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        ALU_FU    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        REG_WRITE : OUT STD_LOGIC;
        ALU_SEL   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END COMPONENT;

	SIGNAL PC_ADDR_INPUT, PC_ADDR_OUTPUT,INSTRUCTION_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_TO_INST : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IP_Q : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_RESULT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_1,READ_DATA_2 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SIGN_EXTENDED_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MUX_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_ZERO : STD_LOGIC := '0';
	SIGNAL REG_WRITE 	: STD_LOGIC;
	SIGNAL ALU_SRC 	: STD_LOGIC := '0';
	SIGNAL ALU_OPERATION		: STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

	U1 : PROGRAM_COUNTER PORT MAP(CLK,PC_ADDR_INPUT,PC_ADDR_OUTPUT); --program counter
	U2 : ADDER PORT MAP(PC_ADDR_OUTPUT,PC_ADDR_INPUT); --increments program counter by 1
	U4 : IP_MEMORY PORT MAP(PC_ADDR_OUTPUT(7 DOWNTO 0),CLK, x"00000000", '0',INSTRUCTION_OUT); --holds instructions in memeory
	U5 : REGISTERS PORT MAP(CLK,REG_WRITE,INSTRUCTION_OUT(25 DOWNTO 21),INSTRUCTION_OUT(20 DOWNTO 16),INSTRUCTION_OUT(15 DOWNTO 11),ALU_OUTPUT,READ_DATA_1,READ_DATA_2);
	U6 : SIGN_EXTEND PORT MAP(INSTRUCTION_OUT(15 DOWNTO 0),SIGN_EXTENDED_VALUE); --sign extends the the lower 16 bits of instruction 
	U7 : MUX PORT MAP(ALU_SRC,READ_DATA_2,SIGN_EXTENDED_VALUE,MUX_OUTPUT); --chooses either read_data_2 or the sign extended value
	U8 : ALU PORT MAP(ALU_OPERATION,READ_DATA_1,MUX_OUTPUT,ALU_OUTPUT,ALU_ZERO); --ALU chooses which operation to do given a selection
	U9 : ALU_CONTROLLER PORT MAP(INSTRUCTION_OUT(31 DOWNTO 26),INSTRUCTION_OUT(5 DOWNTO 0),REG_WRITE,ALU_OPERATION);
	
	ALU_SRC <= '0';
	--ALU NEEDS S
	--REGISTERS NEED REGWRITE
	--MUX NEEDS SELECT AS WELL


END RTL;