LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY LEFT_SHIFTER IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	port(
		INPUT	: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		OUTPUT	: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
        );
		
END LEFT_SHIFTER;

ARCHITECTURE RTL OF LEFT_SHIFTER IS
BEGIN   
        OUTPUT <= SHIFT_LEFT(INPUT,2);
END RTL;




