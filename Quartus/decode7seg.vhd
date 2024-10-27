library ieee;
use ieee.std_logic_1164.all;

entity decode7seg is

	PORT(	input		:	in std_logic_vector(3 downto 0);
			output	:	out std_logic_vector(6 downto 0));

end decode7seg;

architecture bhv of decode7seg is
begin

	output <=		"1000000" when (input = "0000") else --0
						"1111001" when (input = "0001") else --1
						"0100100" when (input = "0010") else --2
						"0110000" when (input = "0011") else --3
						"0011001" when (input = "0100") else --4
						"0010010" when (input = "0101") else --5
						"0000010" when (input = "0110") else --6
						"1111000" when (input = "0111") else --7
						"0000000" when (input = "1000") else --8
						"0010000" when (input = "1001") else --9
						"0001000" when (input = "1010") else --A
						"0000011" when (input = "1011") else --B
						"1000110" when (input = "1100") else --C
						"0100001" when (input = "1101") else --D
						"0000110" when (input = "1110") else --E
						"0001110" when (input = "1111");	 	 --F

end bhv;