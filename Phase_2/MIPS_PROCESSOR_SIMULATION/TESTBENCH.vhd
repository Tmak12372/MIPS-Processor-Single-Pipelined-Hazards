LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY TESTBENCH IS
END TESTBENCH;

ARCHITECTURE RTL OF TESTBENCH IS
COMPONENT MIPS_PROCESSOR IS
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

END COMPONENT;
	

	
	SIGNAL CLK_TB,STOP_BIT,REG_WRITTEN_TB,RESET_TB,ALU_SRC_TB,REG_WRITE_TB,REG_DEST_TB : STD_LOGIC := '0';
	SIGNAL NUM_ADD_TB : STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
	SIGNAL RD_TB,RS_TB,RT_TB : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL PC_OUT_TB : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL INSTRUCTION_OUT_TB,ALU_RESULT_TB,MUX_OUT_TB : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ALU_OPERATION_TB : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN

	UUT : MIPS_PROCESSOR PORT MAP(CLK_TB,RESET_TB,REG_DEST_TB,ALU_SRC_TB,REG_WRITE_TB,ALU_OPERATION_TB,INSTRUCTION_OUT_TB,RD_TB,RS_TB,RT_TB,PC_OUT_TB,ALU_RESULT_TB,MUX_OUT_TB);
	--UUT1 : REGISTERS PORT MAP(CLK_TB,REG_WRITTEN_TB,RS_TB,RT_TB,RD_TB,WRITE_DATA_TB,READ_DATA_1_TB,READ_DATA_2_TB);
	CLK_1 : PROCESS
		BEGIN
			CLK_TB <= '0'; WAIT FOR 10NS;
			CLK_TB <= '1'; WAIT FOR 10NS;
			IF (STOP_BIT = '1') THEN
				WAIT;
			END IF;
			
	END PROCESS;
	
	
		PROC : PROCESS(INSTRUCTION_OUT_TB(31 DOWNTO 26),INSTRUCTION_OUT_TB(5 DOWNTO 0)) 
		BEGIN 
        IF (INSTRUCTION_OUT_TB(31 DOWNTO 26) = "000000") THEN
            CASE INSTRUCTION_OUT_TB(5 DOWNTO 0) IS
                WHEN "100100" => --AND
						  REG_DEST_TB <= '1';
						  ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0000";
                    REG_WRITE_TB <= '1';
                WHEN "100101" => --OR
						  REG_DEST_TB <= '1';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0001";
                    REG_WRITE_TB <= '1';
                WHEN "100000" => --ADD
					     REG_DEST_TB <= '1';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0010";
                    REG_WRITE_TB <= '1';
                WHEN "100010" => --SUBTRACT
					     REG_DEST_TB <= '1';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0110";
                    REG_WRITE_TB <= '1';
                WHEN "100111" => --NOR
					     REG_DEST_TB <= '1';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "1100";
                    REG_WRITE_TB <= '1';
                WHEN "101010" => --XOR
					     REG_DEST_TB <= '1';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0111";
                    REG_WRITE_TB <= '1';
					 WHEN "000000" => --SLL
					     REG_DEST_TB <= '1';
						  ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "1011";
                    REG_WRITE_TB <= '1';
                WHEN OTHERS => --OTHERS
					     REG_DEST_TB <= '0';
					     ALU_SRC_TB <= '0';
                    ALU_OPERATION_TB <= "0000";
                    REG_WRITE_TB <= '0';
            END CASE;
		  ELSIF (INSTRUCTION_OUT_TB(31 DOWNTO 26) = "001000") THEN
		              REG_DEST_TB <= '0';
						  ALU_SRC_TB <= '1';
						  ALU_OPERATION_TB <= "0010";
                    REG_WRITE_TB <= '1';
		  ELSE --WILL CHANGE ONCE OTHER INSTRUCTIONS TYPES ARE NEEDED
		      REG_DEST_TB <= '0';
		      ALU_SRC_TB <= '0';
				ALU_OPERATION_TB <= "0000";
				REG_WRITE_TB <= '0';
        END IF;
		  
    END PROCESS;
	
	
	
	
	
	STIMULUS : PROCESS
	BEGIN
		
		WAIT FOR 320ns;
		STOP_BIT <= '1'; --USED FOR GOING THROUGH INSTRUCTIONS
		WAIT;
	END PROCESS;
	
END RTL;