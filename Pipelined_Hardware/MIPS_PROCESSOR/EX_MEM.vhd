LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY EX_MEM IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			RESET : IN STD_LOGIC;
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
END EX_MEM;


ARCHITECTURE RTL OF EX_MEM IS
BEGIN
	PROC : PROCESS(CLK)
	BEGIN
		IF (RISING_EDGE(CLK)) THEN
			IF (RESET = '0') THEN
				WB_OUT <= WB;
				M_OUT <= M;
				ADD_RESULT_OUT <= ADD_RESULT_IN;
				ZERO_OUT <= ZERO;
				ALU_RESULT_OUT <= ALU_RESULT;
				READ_DATA_2_OUT <= READ_DATA_2_IN;
				MUX_RESULT_OUT <= MUX_RESULT;
			ELSE
				WB_OUT <= (OTHERS => '0');
				M_OUT <= (OTHERS => '0');
				ADD_RESULT_OUT <= (OTHERS => '0');
				ZERO_OUT <= '0';
				ALU_RESULT_OUT <= (OTHERS => '0');
				READ_DATA_2_OUT <= (OTHERS => '0');
				MUX_RESULT_OUT <= (OTHERS => '0');
			END IF;
		END IF;
	END PROCESS;
END RTL;