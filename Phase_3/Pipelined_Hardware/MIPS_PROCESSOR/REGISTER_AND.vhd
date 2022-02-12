LIBRARY  IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY REGISTER_AND IS 
    PORT (A : IN STD_LOGIC;
          B   : IN STD_LOGIC;
          F : OUT STD_LOGIC
    );
END REGISTER_AND;

ARCHITECTURE RTL OF REGISTER_AND IS

BEGIN
    F <= A AND B;
END RTL;
