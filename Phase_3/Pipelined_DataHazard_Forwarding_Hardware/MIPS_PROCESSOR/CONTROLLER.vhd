LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY CONTROLLER IS		
	PORT (
	     CLK         : IN STD_LOGIC;
		  OPCODE      : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		  BNE    : OUT STD_LOGIC;
        REGDST : OUT STD_LOGIC;
        BRANCH : OUT STD_LOGIC;
        REGWRITE : OUT STD_LOGIC;
        MEMTOREG		: OUT STD_LOGIC;
        ALUOP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        ALUSRC : OUT STD_LOGIC;
        MEMREAD : OUT STD_LOGIC;
        MEMWRITE : OUT STD_LOGIC);
END CONTROLLER;

ARCHITECTURE RTL OF CONTROLLER IS
BEGIN
	PROC : PROCESS (OPCODE,CLK) 
	BEGIN
		IF (OPCODE = "000000") THEN --R INSTRUCTIONS
				BNE <= '0';
            REGDST <= '1';
            BRANCH <= '0';
            MEMTOREG <= '0';
            ALUOP <= "10";
            ALUSRC <= '0';
            MEMREAD <= '0';
            MEMWRITE <= '0';
            REGWRITE <= '1'; 
        ELSIF (OPCODE = "100011") THEN --LW FROM FIGURE 4.22 IN BOOK
				BNE <= '0';
            REGDST <= '0';
            BRANCH <= '0';
            MEMTOREG <= '1';
            ALUOP <= "00";
            ALUSRC <= '1';
            MEMREAD <= '1';
            MEMWRITE <= '0';
            REGWRITE <= '1'; 
        ELSIF (OPCODE = "101011") THEN --SW FROM FIGURE 4.22 IN BOOK
				BNE <= '0';
            REGDST <= '-';
            BRANCH <= '0';
            MEMTOREG <= '-';
            ALUOP <= "00";
            ALUSRC <= '1';
            MEMREAD <= '0';
            MEMWRITE <= '1';
            REGWRITE <= '0'; 
        ELSIF (OPCODE = "000100") THEN --BEQ FROM FIGURE 4.22 IN BOOK
				BNE <= '0';
            REGDST <= '-';
            BRANCH <= '1';
            MEMTOREG <= '-';
            ALUOP <= "01";
            ALUSRC <= '0';
            MEMREAD <= '0';
            MEMWRITE <= '0';
            REGWRITE <= '0'; 
		  ELSIF (OPCODE = "000101") THEN --BNE FROM FIGURE 4.22 IN BOOK
				BNE <= '1';
            REGDST <= '-';
            BRANCH <= '1';
            MEMTOREG <= '-';
            ALUOP <= "01";
            ALUSRC <= '0';
            MEMREAD <= '0';
            MEMWRITE <= '0';
            REGWRITE <= '0'; 
		  ELSIF (OPCODE = "001000") THEN --ADDI 
				BNE <= '0';
            REGDST <= '0';
            BRANCH <= '0';
            MEMTOREG <= '0';
            ALUOP <= "00";
            ALUSRC <= '1';
            MEMREAD <= '0';
            MEMWRITE <= '0';
            REGWRITE <= '1'; 
		  ELSE
				BNE <= '0';
				REGDST <= '0';
            BRANCH <= '0';
            MEMTOREG <= '0';
            ALUOP <= "00";
            ALUSRC <= '0';
            MEMREAD <= '0';
            MEMWRITE <= '0';
            REGWRITE <= '0'; 
        END IF;  
	END PROCESS;
END RTL;
