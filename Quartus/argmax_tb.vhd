library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity argmax_tb is
end argmax_tb;

architecture tb of argmax_tb is
	 constant WIDTH : integer := 2560;
	 signal input_data : std_logic_vector(WIDTH - 1 downto 0);
	 signal classification : std_logic_vector(9 downto 0);
	 signal clk : std_logic;

begin  -- TB


    U_ARGMAX : entity work.argmax
	 generic map (
			WIDTH => WIDTH
	 )
	 port map (
			clk => clk,
		   input_vector => input_data,
			one_hot_output => classification
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
