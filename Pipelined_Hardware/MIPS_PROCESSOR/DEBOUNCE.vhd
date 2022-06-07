library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity DEBOUNCE is
GENERIC (
	CONSTANT MAX : std_logic_vector(15 downto 0) := X"FFFF");  
    Port ( BUTTON 	: in  STD_LOGIC;
           CLK 		: in  STD_LOGIC;
           DEBOUNCED_BUTTON 	: out  STD_LOGIC);
end DEBOUNCE;

architecture Behavioral of DEBOUNCE is

signal COUNTER   : std_logic_vector(15 downto 0) := (others => '0');
signal btn_reg    : std_logic   				  := '0';
signal btn_sync   : std_logic_vector(1 downto 0)  := (others => '0');
signal btn_pulse  : std_logic                     := '0';


begin

	btn_debounce_process : process (CLK)
	begin
		if (rising_edge(CLK)) then
			if (COUNTER = MAX) then
				btn_reg <= not(btn_reg);
			end if;
		end if;
	end process;
	
	btn_counter_process : process (CLK)
	begin
		if (rising_edge(CLK)) then
			if ((btn_reg = '1') xor (BUTTON = '1')) then
				if (COUNTER = MAX) then
					COUNTER <= (others => '0');
				else
					COUNTER <= COUNTER + 1;
				end if;
			else
				COUNTER <= (others => '0');
			end if;
		end if;
	end process;
					  
	DEBOUNCED_BUTTON <= btn_reg;

end Behavioral;