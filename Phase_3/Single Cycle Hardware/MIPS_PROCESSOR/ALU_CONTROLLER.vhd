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
		
		CASE ALU_OP IS
			WHEN "00" => ALU_SEL <= "0010";
			WHEN "01" => ALU_SEL <= "0110";
			WHEN "10" =>
				CASE ALU_FU IS
					WHEN "100000" => ALU_SEL <= "0010"; --ADD
					WHEN "100100" => ALU_SEL <= "0000"; --AND 
					WHEN "100101" => ALU_SEL <= "0001"; --OR
					WHEN "100010" => ALU_SEL <= "0110"; --SUBTRACT
					WHEN "100111" => ALU_SEL <= "1000"; --NOR
					WHEN "100110" => ALU_SEL <= "1001"; --XOR
					WHEN OTHERS   => ALU_SEL <= "UUUU";
				END CASE;
			WHEN OTHERS => ALU_SEL <= "UUUU";
		END CASE;
		
    END PROCESS;
END RTL;




