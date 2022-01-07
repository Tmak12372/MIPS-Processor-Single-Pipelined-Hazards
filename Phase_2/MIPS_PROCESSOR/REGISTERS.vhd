LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY REGISTERS IS
	GENERIC(
		SIZE : INTEGER := 32
	);
	PORT(
		CLK																		: IN STD_LOGIC;
		REGWRITE																	: IN STD_LOGIC;
		READ_REGISTER_1, READ_REGISTER_2, WRITE_REGISTER			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		WRITE_DATA																: IN STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
		READ_DATA_1, READ_DATA_2											: OUT STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0)
	);
END REGISTERS;

ARCHITECTURE RTL OF REGISTERS IS

	TYPE MATRIX IS ARRAY(0 TO SIZE-1) OF STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
	SIGNAL Registers : MATRIX := (0 => ("00000000000000000000000000000000"), --$zero = 0
								 1 =>  ("00000000000000000000000000000000"),  --$at = 0
								 2 =>  ("00000000000000000000000000000000"),  --$v0 = 0
								 3 =>  ("00000000000000000000000000000000"),  --$v1 = 0
								 4 =>  ("00000000000000000000000000000000"),  --$a0 = 0
								 5 =>  ("00000000000000000000000000000000"),  --$a1 = 0
								 6 =>  ("00000000000000000000000000000000"),  --$a2 = 0
								 7 =>  ("00000000000000000000000000000000"),  --$a3 = 0
								 8 =>  ("00000000000000000000000000000011"),  --$t0 = 3
								 9 =>  ("00000000000000000000000000000010"),  --$t1 = 2
								 10 => ("00000000000000000000000000000010"),  --$t2 = 2
								 11 => ("00000000000000000000000000000000"),  --$t3 = 0
								 12 => ("00000000000000000000000000000000"),  --$t4 = 0
								 13 => ("00000000000000000000000000000000"),  --$t5 = 0
								 14 => ("00000000000000000000000000000000"),  --$t6 = 0
								 15 => ("00000000000000000000000000000000"),  --$t7 = 0
								 16 => ("00000000000000000000000000001100"),  --$s0 = 12
								 17 => ("00000000000000000000000000001000"),  --$s1 = 8
								 18 => ("00000000000000000000000000001000"),  --$s2 = 8
								 19 => ("00000000000000000000000000000000"),  --$s3 = 0
								 20 => ("00000000000000000000000000000000"),  --$s4 = 0
								 21 => ("00000000000000000000000000000000"),  --$s5 = 0
								 22 => ("00000000000000000000000000000000"),  --$s6 = 0
								 23 => ("00000000000000000000000000000000"),  --$s7 = 0
								 24 => ("00000000000000000000000000000000"),  --$t8 = 0
								 25 => ("00000000000000000000000000000000"),  --$t9 = 0
								 26 => ("00000000000000000000000000000000"),  --$k0 = 0
								 27 => ("00000000000000000000000000000000"),  --$k1 = 0
								 28 => ("00000000000000000000000000000000"),  --$gp = 0
								 29 => ("00000000000000000000000000000000"),  --$sp = 0
								 30 => ("00000000000000000000000000000000"),  --$fp = 0
								 31 => ("00000000000000000000000000000000"),  --$ra = 0
								 OTHERS => (OTHERS => '0'));


BEGIN
	WRITE_PROCESS : PROCESS (CLK,REGWRITE)
	BEGIN
		IF (RISING_EDGE(CLK) AND REGWRITE = '1') THEN
			REGISTERS(TO_INTEGER(UNSIGNED(WRITE_REGISTER))) <= WRITE_DATA;
		END IF;
	END PROCESS;
	READ_DATA_1 <= REGISTERS(TO_INTEGER(UNSIGNED(READ_REGISTER_1)));
	READ_DATA_2 <= REGISTERS(TO_INTEGER(UNSIGNED(READ_REGISTER_2)));
END RTL;




