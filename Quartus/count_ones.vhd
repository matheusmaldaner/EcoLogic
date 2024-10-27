library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity count_ones is
	 generic (
			WIDTH : integer := 256
	 );
    port (
		  clk: in std_logic;
        input_data: in std_logic_vector(WIDTH - 1 downto 0);
        count_out: out std_logic_vector(31 downto 0)
    );
end count_ones;

architecture bhv of count_ones is
	 signal count : integer := 0;
	 
begin

	process (clk) begin
		 for i in 0 to (WIDTH - 1) loop
			if (input_data(i) = '1') then
				count <= count + 1;
			end if;
		 end loop;
	end process;
	
	count_out <= std_logic_vector(to_unsigned(count, count_out'length));
		 
end bhv;