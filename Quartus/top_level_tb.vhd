library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity top_level_tb is
end top_level_tb;

architecture tb of top_level_tb is
	 
	 signal inputs : std_logic_vector(255 downto 0);
	 signal clk : std_logic;
	 signal outputs : std_logic_vector(9 downto 0);

begin  -- TB

    clk <= not clk after 20 ns;

    U_TOPLEVEL : entity work.top_level_sim port map(
		  inputs 	=> inputs,
		  clk 		=> clk,
        outputs	=> outputs
	 );

    process begin
		
		inputs <= x"07ff3ff03ff0171006000700030001c000e00078001c001c007c01fc03f00fc0";
		wait for 200 ns;

		inputs <= x"00fc01f607f707b30f031e0338033003700360036007600e601c603871f07fe0";
		wait for 200 ns;

		inputs <= x"000100030003000600060006000e001c03fcff8cf00c001c0018001800180018";
		wait for 200 ns;

		inputs <= x"000e000e001c00380078007000e000e001c003c0078007800f000e001e001e00";
		wait for 200 ns;

		inputs <= x"000001e403fe071c0e1c3c38383870f063e07fe03ce000c000c000c000c000c0";
		wait for 200 ns;

		inputs <= x"00fc03fc0fcc0f8c1f0c080c001c001c03f80ff8187c78ffe1c3c700fe00f800";
		wait for 200 ns;

		inputs <= x"038003800380038001c001c001c001c001c001c001e001e001f000f000f000f0";
		wait for 200 ns;

		inputs <= x"0fff1fff0fff000f000f001e007e07f81ff81ff80038001800180038c078fff0";
		wait for 200 ns;

		inputs <= x"0180018001800180018001c001c001c001c001c000c000c000c000e000c000c0";
		wait for 200 ns;

		inputs <= x"00030003010303060306070e061c0e181e383ff073f8c1f80180038003000700";
		wait for 200 ns;
		wait;
		
	end process;
        
end tb;
