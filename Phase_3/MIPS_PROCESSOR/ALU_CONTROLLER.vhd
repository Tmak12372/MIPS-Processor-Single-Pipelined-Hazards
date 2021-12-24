LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU_CONTROLLER IS
    PORT (
        ALU_OP    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        ALU_FU    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        ALU_SEL   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END ALU_CONTROLLER;

ARCHITECTURE RTL OF ALU_CONTROLLER IS
BEGIN   
    PROC : PROCESS(ALU_OP,ALU_FU) 
    BEGIN 
        ALU_SEL(3) <= '0'; --SINCE TOP BIT IS ALWAYS 0
        
        IF ((ALU_OP = "01") OR (ALU_OP = "10" AND ((ALU_FU = "101010") OR (ALU_FU = "100010")))) THEN
            ALU_SEL(2) <= '1';
        ELSE 
            ALU_SEL(2) <= '0';
        END IF;
        
        IF ((ALU_OP(1) = '0') OR (ALU_FU(2) = '0')) THEN
            ALU_SEL(1) <= '1';
        ELSE 
            ALU_SEL(1) <= '0';
        END IF;

        IF ((ALU_OP = "10") AND ((ALU_FU = "101010") OR (ALU_FU = "100101"))) THEN --CHECKING FOR LOWEST BIT
            ALU_SEL(0) <= '1';
        ELSE 
            ALU_SEL(0) <= '0';
        END IF;

    END PROCESS;
END RTL;




