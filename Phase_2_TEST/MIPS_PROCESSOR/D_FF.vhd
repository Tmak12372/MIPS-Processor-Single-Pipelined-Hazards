LIBRARY  IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY D_FF IS 
    PORT (CLK : IN STD_LOGIC;
          EN : IN STD_LOGIC;
          D   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
          OUTPUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END D_FF;

ARCHITECTURE RTL OF D_FF IS

BEGIN
   proc_name: process(CLK)
   begin
       if (RISING_EDGE(CLK) AND EN = '1') then
            OUTPUT <= D;
       end if;
   end process proc_name;
END RTL;



