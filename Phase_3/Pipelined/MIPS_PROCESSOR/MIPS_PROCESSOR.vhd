--TYLER MCCORMICK
--MIPS PROCESSOR


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
	PORT ( S : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
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
        ALU_OP    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        ALU_FU    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        ALU_SEL   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END COMPONENT;

COMPONENT AND_GATE IS		
	PORT (
		A : IN STD_LOGIC;
        B : IN STD_LOGIC;
		F : OUT STD_LOGIC);
END COMPONENT;

COMPONENT CONTROLLER IS		
	PORT (
		  CLK : IN STD_LOGIC;
		  OPCODE      : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		  BRANCH_B	: IN STD_LOGIC;
        REGDST : OUT STD_LOGIC;
        BRANCH : OUT STD_LOGIC;
        REGWRITE : OUT STD_LOGIC;
        MEMTOREG		: OUT STD_LOGIC;
        ALUOP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        ALUSRC : OUT STD_LOGIC;
        MEMREAD : OUT STD_LOGIC;
        MEMWRITE : OUT STD_LOGIC);
END COMPONENT;


COMPONENT LEFT_SHIFTER IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	port(
		INPUT	: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		OUTPUT	: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
        );
		
END COMPONENT;

COMPONENT ADDER_ALU IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	port(
		INPUT_1	: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
        INPUT_2	: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		OUTPUT	: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
        );
		
END COMPONENT;

COMPONENT DATA_MEMORY IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	PORT(
		  CLK		   : IN STD_LOGIC;
        MEM_WRITE  : IN STD_LOGIC;
        MEM_READ   : IN STD_LOGIC;
        ADDRESS    : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
        WRITE_DATA : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
        READ_DATA  : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
	);
END COMPONENT;


COMPONENT IF_ID IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			ADD_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ADD_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
			);
END COMPONENT;

COMPONENT ID_EX IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			WB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			M : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			EX : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			PC : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_1_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_2_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			SIGN_EXTEND : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST2016 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			INST1511 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			WB_OUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			M_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			EX_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			PC_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_1_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_2_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			SIGN_EXTEND_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST2016_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			INST1511_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
END COMPONENT;

COMPONENT EX_MEM IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			WB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			M : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ADD_RESULT_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ZERO : IN STD_LOGIC;
			ALU_RESULT : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_2_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			MUX_RESULT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			WB_OUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			M_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			ADD_RESULT_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ZERO_OUT : OUT STD_LOGIC;
			ALU_RESULT_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			READ_DATA_2_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			MUX_RESULT_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
END COMPONENT;

COMPONENT MEM_WB IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			WB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);	
			READ_DATA : IN  STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ALU_RESULT : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			MUX_RESULT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			WB_OUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);	
			READ_DATA_OUT : OUT  STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ALU_RESULT_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			MUX_RESULT_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
END COMPONENT;


	SIGNAL PC_ADDR_INPUT, PC_ADDR_OUTPUT,INSTRUCTION_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_1,READ_DATA_2 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SIGN_EXTENDED_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MUX_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_ZERO : STD_LOGIC := '0';
	SIGNAL REG_WRITE 	: STD_LOGIC;
	SIGNAL REG_DEST : STD_LOGIC;
	SIGNAL BRANCH : STD_LOGIC;
	SIGNAL MEMTOREG : STD_LOGIC;
	SIGNAL ALU_SRC 	: STD_LOGIC := '0';
	SIGNAL ALU_OPERATION		: STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_OP : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MEMREAD : STD_LOGIC;
	SIGNAL MEMWRITE : STD_LOGIC;
	SIGNAL WRITE_CHOICE : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SHIFT_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL PC_VAL : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL PC_SEL,BUFF : STD_LOGIC :='0';
	SIGNAL NEW_PC_VAL,READ_DATA,WRITE_DATA : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL CLOCK : STD_LOGIC;
	
	
	--FOR PIPELINING
	SIGNAL ADD_OUT_IFID  :  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL INST_OUT_IFID :  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL WB_IN_IDEX : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL M_IDEX :  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
	SIGNAL EX_IDEX :  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	
	
	SIGNAL WB_OUT_IDEX : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL M_OUT_IDEX :  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
	SIGNAL EX_OUT_IDEX :  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL PC_OUT_IDEX : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_1_OUT_IDEX,READ_DATA_2_OUT_IDEX : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SIGN_EXTENDED_VALUE_OUT_IDEX : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL INST2016_OUT_IDEX : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
	SIGNAL INST1511_OUT_IDEX : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');

	SIGNAL WB_OUT_EXMEM : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL M_OUT_EXMEM : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ADD_RESULT_OUT_EXMEM :  STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ZERO_OUT_EXMEM :  STD_LOGIC;
	SIGNAL ALU_RESULT_OUT_EXMEM :  STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_2_OUT_EXMEM :  STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MUX_RESULT_OUT_EXMEM :  STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL WB_OUT_MEMWB : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL READ_DATA_OUT_MEMWB : STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_RESULT_OUT_MEMWB : STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MUX_RESULT_OUT_MEMWB : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
	
	
	
BEGIN
	CLOCK <= NOT CLK;
	U1 : PROGRAM_COUNTER PORT MAP(CLOCK,NEW_PC_VAL,PC_ADDR_OUTPUT); --program counter
	U2 : ADDER PORT MAP(PC_ADDR_OUTPUT,PC_ADDR_INPUT); --increments program counter by 4
	U4 : IP_MEMORY PORT MAP(PC_ADDR_OUTPUT(7 DOWNTO 0),CLOCK, x"00000000", '0',INSTRUCTION_OUT); --holds instructions in memeory
	U5 : REGISTERS PORT MAP(CLOCK,WB_OUT_MEMWB(1),INST_OUT_IFID(25 DOWNTO 21),INST_OUT_IFID(20 DOWNTO 16),MUX_RESULT_OUT_MEMWB,WRITE_DATA,READ_DATA_1,READ_DATA_2);
	U6 : SIGN_EXTEND PORT MAP(INST_OUT_IFID(15 DOWNTO 0),SIGN_EXTENDED_VALUE); --sign extends the the lower 16 bits of instruction 
	U7 : MUX PORT MAP(EX_OUT_IDEX(0),READ_DATA_2_OUT_IDEX,SIGN_EXTENDED_VALUE_OUT_IDEX,MUX_OUTPUT); --chooses either read_data_2 or the sign extended value
	U8 : ALU PORT MAP(ALU_OPERATION,READ_DATA_1_OUT_IDEX,MUX_OUTPUT,ALU_OUTPUT,ALU_ZERO); --ALU chooses which operation to do given a selection
	U9 : ALU_CONTROLLER PORT MAP(EX_OUT_IDEX(2 DOWNTO 1),SIGN_EXTENDED_VALUE_OUT_IDEX(5 DOWNTO 0),ALU_OPERATION);
	U10 : CONTROLLER PORT MAP(CLOCK,INST_OUT_IFID(31 DOWNTO 26),BUFF,REG_DEST,BRANCH,REG_WRITE,MEMTOREG,ALU_OP,ALU_SRC,MEMREAD,MEMWRITE);
	U11 : MUX GENERIC MAP (SIZE => 5) PORT MAP(EX_OUT_IDEX(3),INST2016_OUT_IDEX,INST1511_OUT_IDEX,WRITE_CHOICE); --REGISTERS MUX
	U12 : LEFT_SHIFTER PORT MAP(SIGN_EXTENDED_VALUE_OUT_IDEX,SHIFT_VALUE);
	U13 : ADDER_ALU PORT MAP(SHIFT_VALUE,PC_OUT_IDEX,PC_VAL);
	U14 : MUX PORT MAP(BUFF,PC_ADDR_INPUT,ADD_RESULT_OUT_EXMEM,NEW_PC_VAL); --MUX FROM ADD ALU
	U15 : AND_GATE PORT MAP(M_OUT_EXMEM(2),ZERO_OUT_EXMEM,BUFF);
	U16 : DATA_MEMORY PORT MAP(CLOCK,M_OUT_EXMEM(0),M_OUT_EXMEM(1),ALU_RESULT_OUT_EXMEM,READ_DATA_2_OUT_EXMEM,READ_DATA);
	U17 : MUX PORT MAP(WB_OUT_MEMWB(0),ALU_RESULT_OUT_MEMWB,READ_DATA_OUT_MEMWB,WRITE_DATA); --MUX FROM ALU
	--ALU NEEDS S
	--REGISTERS NEED REGWRITE
	--MUX NEEDS SELECT AS WELL
	U18 : IF_ID PORT MAP(CLOCK, PC_ADDR_INPUT, INSTRUCTION_OUT, ADD_OUT_IFID, INST_OUT_IFID);
	U19 : ID_EX PORT MAP(CLOCK, WB_IN_IDEX, M_IDEX, EX_IDEX, ADD_OUT_IFID, READ_DATA_1, READ_DATA_2, SIGN_EXTENDED_VALUE, INST_OUT_IFID(20 DOWNTO 16), INST_OUT_IFID(15 DOWNTO 11), WB_OUT_IDEX, M_OUT_IDEX, EX_OUT_IDEX, PC_OUT_IDEX, READ_DATA_1_OUT_IDEX, READ_DATA_2_OUT_IDEX, SIGN_EXTENDED_VALUE_OUT_IDEX, INST2016_OUT_IDEX, INST1511_OUT_IDEX);
	U20 : EX_MEM PORT MAP(CLOCK, WB_OUT_IDEX, M_OUT_IDEX, PC_VAL, ALU_ZERO, ALU_OUTPUT, READ_DATA_2_OUT_IDEX, WRITE_CHOICE, WB_OUT_EXMEM, M_OUT_EXMEM, ADD_RESULT_OUT_EXMEM, ZERO_OUT_EXMEM, ALU_RESULT_OUT_EXMEM, READ_DATA_2_OUT_EXMEM, MUX_RESULT_OUT_EXMEM);
	U21 : MEM_WB PORT MAP(CLOCK, WB_OUT_EXMEM, READ_DATA, ALU_RESULT_OUT_EXMEM, MUX_RESULT_OUT_EXMEM, WB_OUT_MEMWB, READ_DATA_OUT_MEMWB, ALU_RESULT_OUT_MEMWB, MUX_RESULT_OUT_MEMWB);
	
	
	

	
	WB_IN_IDEX(1) <= REG_WRITE;
	WB_IN_IDEX(0) <= MEMTOREG;
	
	M_IDEX(2) <= BRANCH;
	M_IDEX(1) <= MEMREAD;
	M_IDEX(0) <= MEMWRITE;
	
	EX_IDEX(3) <= REG_DEST;
	EX_IDEX(2) <= ALU_OP(1);
	EX_IDEX(1) <= ALU_OP(0);
	EX_IDEX(0) <= ALU_SRC;
	
	
END RTL;