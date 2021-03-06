LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY MUX_3_1 IS
	GENERIC (
		SIZE : INTEGER := 32
	);
	PORT (
        A,B,C : IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        OUTPUT : OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
    );
END MUX_3_1;

ARCHITECTURE RTL OF MUX_3_1 IS
BEGIN
    PROC : PROCESS (A,B,C,S) 
	BEGIN
        IF (S = "00") THEN
            OUTPUT <= A;
        ELSIF (S = "01") THEN
            OUTPUT <= B;
        ELSIF (S = "10") THEN
            OUTPUT <= C;
        ELSE
            OUTPUT <= A;
		  END IF;
    END PROCESS;
END RTL;
