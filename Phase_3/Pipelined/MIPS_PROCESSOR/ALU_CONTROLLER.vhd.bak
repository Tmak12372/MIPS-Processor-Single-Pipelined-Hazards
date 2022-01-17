LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU_CONTROLLER IS
    PORT (
        ALU_OP    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        ALU_FU    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        REG_WRITE : OUT STD_LOGIC;
        ALU_SEL   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ALU_CONTROLLER;

ARCHITECTURE RTL OF ALU_CONTROLLER IS
BEGIN   
    PROC : PROCESS(ALU_OP,ALU_FU) 
    BEGIN 
        IF (ALU_OP = "000000") THEN
            CASE ALU_FU IS
                WHEN "100100" => --AND
                    ALU_SEL <= "110";
                    REG_WRITE <= '1';
                WHEN "100101" => --OR
                    ALU_SEL <= "101";
                    REG_WRITE <= '1';
                WHEN "100000" => --ADD
                    ALU_SEL <= "011";
                    REG_WRITE <= '1';
                WHEN "100010" => --SUBTRACT
                    ALU_SEL <= "010";
                    REG_WRITE <= '1';
                WHEN OTHERS => --OTHERS
                    ALU_SEL <= "000";
                    REG_WRITE <= '0';
            END CASE;
        END IF;
    END PROCESS;
END RTL;




