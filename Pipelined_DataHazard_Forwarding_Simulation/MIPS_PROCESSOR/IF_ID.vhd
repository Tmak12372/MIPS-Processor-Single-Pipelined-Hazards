LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY IF_ID IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
			EN  : IN STD_LOGIC;
			ADD_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ADD_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_OUT : OUT
			STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
			);
END IF_ID;


ARCHITECTURE RTL OF IF_ID IS
SIGNAL PREV_ADD,PREV_INST : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
PROC : PROCESS(CLK,EN)
BEGIN
	
	IF (RISING_EDGE(CLK)) THEN
		IF (EN = '1') THEN
			ADD_OUT <= ADD_IN;
			INST_OUT <= INST_IN;
		END IF;
	END IF;
END PROCESS;
END RTL;