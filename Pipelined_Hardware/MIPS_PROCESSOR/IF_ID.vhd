LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY IF_ID IS
	GENERIC(
		SIZE : INTEGER := 32
		);
	PORT (CLK : IN STD_LOGIC;
		   RESET : IN STD_LOGIC;
			ADD_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_IN : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			ADD_OUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
			INST_OUT : OUT
			STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
			);
END IF_ID;


ARCHITECTURE RTL OF IF_ID IS
BEGIN
PROC : PROCESS(CLK)
BEGIN
	
	IF (RISING_EDGE(CLK)) THEN
		IF (RESET = '0') THEN
			ADD_OUT <= ADD_IN;
			INST_OUT <= INST_IN;
		ELSE
			ADD_OUT <= (OTHERS => '0');
			INST_OUT <= (OTHERS => '0');
		END IF;
	END IF;
	
END PROCESS;
END RTL;
