library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity count_ones_datapath is
    port (
        increment: in std_logic;
		  clk : in std_logic;
        count: out std_logic_vector(31 downto 0)
    );
end count_ones_datapath;

architecture bhv of count_ones_datapath is
	 signal store : std_logic_vector(31 downto 0) := (others => '0');
	 
begin

	process(clk, increment) begin
		 if (rising_edge(clk) and increment = '1') then
			store <= std_logic_vector(unsigned(store) + to_unsigned(1, count'length));
		 end if;
	end process;
	
	count <= store;
		 
end bhv;