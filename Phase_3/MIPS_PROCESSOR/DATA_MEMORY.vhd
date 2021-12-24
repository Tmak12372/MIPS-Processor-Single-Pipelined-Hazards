LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DATA_MEMORY IS
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
END DATA_MEMORY;

ARCHITECTURE RTL OF DATA_MEMORY IS

	TYPE MATRIX IS ARRAY(0 TO SIZE-1) OF STD_LOGIC_VECTOR(SIZE-1 DOWNTO 0);
	SIGNAL Registers : MATRIX := (OTHERS => (OTHERS => '0'));


BEGIN
	WRITE_PROCESS : PROCESS (CLK,MEM_WRITE)
	BEGIN
		IF (CLK'EVENT AND CLK = '1' AND MEM_WRITE = '1') THEN
			REGISTERS(TO_INTEGER(UNSIGNED(ADDRESS))) <= WRITE_DATA;
		END IF;
	END PROCESS;

    READ_PROCESS : PROCESS (MEM_READ,ADDRESS)
    BEGIN
        READ_DATA <= REGISTERS(TO_INTEGER(UNSIGNED(ADDRESS)));
    END PROCESS;
END RTL;




