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
		CLK 			 	 : IN STD_LOGIC := '0';
		SW					 : IN STD_LOGIC := '0';
		RESET           : IN STD_LOGIC := '0';
		O_REG_WRITTEN     	 : OUT STD_LOGIC;
		O_INSTRUCTION_OUT    : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		O_RD				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_RS 				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_RT				 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		O_PC_OUTPUT 		 : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		O_ALU_RESULT         : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
	   O_MUX_OUTPUT    : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		dFix         : OUT STD_LOGIC_VECTOR(5 downto 0) := "111111";
		ledFix       : OUT STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
		hex5         : OUT STD_LOGIC_VECTOR(6 downto 0);
		hex4         : OUT STD_LOGIC_VECTOR(6 downto 0);
		hex3         : OUT STD_LOGIC_VECTOR(6 downto 0);
		hex2         : OUT STD_LOGIC_VECTOR(6 downto 0);
		hex1         : OUT STD_LOGIC_VECTOR(6 downto 0);
		hex0         : OUT STD_LOGIC_VECTOR(6 downto 0)	
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
	SIGNAL ALU_ZERO,REG_DEST 									 : STD_LOGIC 					 := '0';
	SIGNAL REG_WRITE,CLOCK 									 : STD_LOGIC					 := '0';
	SIGNAL ALU_OPERATION								 : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL ALU_SRC : STD_LOGIC;
	SIGNAL WRITE_CHOICE : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	U1 : ENTITY WORK.PROGRAM_COUNTER PORT MAP(CLOCK,RESET,PC_ADDR_INPUT,PC_ADDR_OUTPUT); --program counter
	U2 : ENTITY WORK.ADDER PORT MAP(PC_ADDR_OUTPUT,PC_ADDR_INPUT); --increments program counter by 4
	U4 : ENTITY WORK.IP_MEMORY PORT MAP(RESET,PC_ADDR_OUTPUT(7 DOWNTO 0),CLOCK, x"00000000", '0',INSTRUCTION_OUT); --holds instructions in memeory
	U5 : ENTITY WORK.REGISTERS PORT MAP(CLOCK,RESET,REG_WRITE,INSTRUCTION_OUT(25 DOWNTO 21),INSTRUCTION_OUT(20 DOWNTO 16),WRITE_CHOICE,ALU_OUTPUT,READ_DATA_1,READ_DATA_2);
	U6 : ENTITY WORK.SIGN_EXTEND PORT MAP(INSTRUCTION_OUT(15 DOWNTO 0),SIGN_EXTENDED_VALUE); --sign extends the the lower 16 bits of instruction 
	U7 : ENTITY WORK.MUX PORT MAP(ALU_SRC,READ_DATA_2,SIGN_EXTENDED_VALUE,MUX_OUTPUT); --chooses either read_data_2 or the sign extended value
	U8 : ENTITY WORK.ALU PORT MAP(ALU_OPERATION,READ_DATA_1,MUX_OUTPUT,INSTRUCTION_OUT(10 DOWNTO 6),ALU_OUTPUT,ALU_ZERO); --ALU chooses which operation to do given a selection
	U30 : ENTITY WORK.MUX GENERIC MAP (SIZE => 5) PORT MAP(REG_DEST,INSTRUCTION_OUT(20 DOWNTO 16),INSTRUCTION_OUT(15 DOWNTO 11),WRITE_CHOICE); --REGISTERS MUX
		
	U31 : ENTITY WORK.DEBOUNCE PORT MAP(SW,CLK,CLOCK);
	
	PROC : PROCESS(INSTRUCTION_OUT(31 DOWNTO 26),INSTRUCTION_OUT(5 DOWNTO 0),CLOCK) 
    BEGIN 
        IF (INSTRUCTION_OUT(31 DOWNTO 26) = "000000") THEN
            CASE INSTRUCTION_OUT(5 DOWNTO 0) IS
                WHEN "100100" => --AND
						  REG_DEST <= '1';
						  ALU_SRC <= '0';
                    ALU_OPERATION <= "0000";
                    REG_WRITE <= '1';
                WHEN "100101" => --OR
						  REG_DEST <= '1';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "0001";
                    REG_WRITE <= '1';
                WHEN "100000" => --ADD
					     REG_DEST <= '1';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "0010";
                    REG_WRITE <= '1';
                WHEN "100010" => --SUBTRACT 
					     REG_DEST <= '1';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "0110";
                    REG_WRITE <= '1';
                WHEN "100111" => --NOR
					     REG_DEST <= '1';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "1100";
                    REG_WRITE <= '1';
                WHEN "101010" => --XOR
					     REG_DEST <= '1';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "0111";
                    REG_WRITE <= '1';
					 WHEN "000000" => --SLL
					     REG_DEST <= '1';
						  ALU_SRC <= '0';
                    ALU_OPERATION <= "1011";
                    REG_WRITE <= '1';
                WHEN OTHERS => --OTHERS
					     REG_DEST <= '0';
					     ALU_SRC <= '0';
                    ALU_OPERATION <= "0000";
                    REG_WRITE <= '0';
            END CASE;
		  ELSIF (INSTRUCTION_OUT(31 DOWNTO 26) = "001000") THEN
		              REG_DEST <= '0';
						  ALU_SRC <= '1';
						  ALU_OPERATION <= "0010";
                    REG_WRITE <= '1';
		  ELSE --WILL CHANGE ONCE OTHER INSTRUCTIONS TYPES ARE NEEDED
		      REG_DEST <= '0';
		      ALU_SRC <= '0';
				ALU_OPERATION <= "0000";
				REG_WRITE <= '0';
        END IF;
		  
    END PROCESS;
	
	

	--Values for Testbench
	O_REG_WRITTEN <= REG_WRITE;
	O_INSTRUCTION_OUT <= INSTRUCTION_OUT;
	O_RD <= ALU_OUTPUT;			 
	O_RS <= READ_DATA_1;				
	O_RT <= MUX_OUTPUT;
	O_PC_OUTPUT <= PC_ADDR_OUTPUT;
	O_ALU_RESULT <= ALU_OUTPUT;
	O_MUX_OUTPUT <= MUX_OUTPUT;
	
	U10 : ENTITY WORK.bcd_7segment PORT MAP(ALU_OUTPUT(7 downto 4),hex5);
	U11 : ENTITY WORK.bcd_7segment PORT MAP(ALU_OUTPUT(3 downto 0),hex4);
	U12 : ENTITY WORK.bcd_7segment PORT MAP(READ_DATA_1(7 downto 4),hex3);
	U13 : ENTITY WORK.bcd_7segment PORT MAP(READ_DATA_1(3 downto 0),hex2);
	U14 : ENTITY WORK.bcd_7segment PORT MAP(MUX_OUTPUT(7 downto 4),hex1);
	U15 : ENTITY WORK.bcd_7segment PORT MAP(MUX_OUTPUT(3 downto 0),hex0);
	--U26 : ENTITY WORK.CLK_DIVIDER  PORT MAP(CLK,'0',CLOCK);

END RTL;