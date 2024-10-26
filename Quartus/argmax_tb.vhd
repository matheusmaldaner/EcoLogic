library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity argmax_tb is
end argmax_tb;

architecture tb of argmax_tb is
	 
	 signal input_data : std_logic_vector(2559 downto 0);
	 signal classification : std_logic_vector(9 downto 0);
	 signal clk : std_logic;

begin  -- TB


    U_ARGMAX : entity work.argmax
	 port map (
		   input_vector => input_data,
			one_hot_output => classification,
			clk => clk,
			reset => '0'
	 );

    process begin
		
		clk <= '1';
		input_data <= std_logic_vector(to_unsigned(13, input_data'length));
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		input_data <= std_logic_vector(to_unsigned(14, input_data'length));
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		clk <= not clk after 20 ns;
		wait;
		
	end process;
        
end tb;
