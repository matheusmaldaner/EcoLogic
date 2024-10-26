library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity top_level_tb is
end top_level_tb;

architecture tb of top_level_tb is
	 
	 signal inputs : std_logic_vector(9 downto 0);
	 signal clk : std_logic;
	 signal outputs : std_logic_vector(9 downto 0);

begin  -- TB

    clk <= not clk after 20 ns;

    U_TOPLEVEL : entity work.top_level port map(
		  inputs 	=> inputs,
		  clk 		=> clk,
        outputs	=> outputs
	 );

    process begin
		
		inputs <= "1000000000";
		wait for 200 ns;
		inputs <= "1000010000";
		wait for 200 ns;
		wait;
		
	end process;
        
end tb;
