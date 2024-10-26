library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    port (
        inputs: in std_logic_vector(9 downto 0);
		  clk : in std_logic;
        outputs: out std_logic_vector(9 downto 0)
    );
end top_level;

architecture bhv of top_level is
	 signal model_in: std_logic_vector(255 downto 0);
    signal model_out: std_logic_vector(2559 downto 0);
	 signal argmax_out: std_logic_vector(9 downto 0);
	 
	 component logic_network 
		port(
			inputs		: in std_logic_vector(255 downto 0);
			outputs	: out std_logic_vector(2559 downto 0)
		);
	 end component;
	 
begin
	 outputs <= argmax_out;
	 
	 U_ARGMAX : entity work.argmax 
		port map (
			input_vector => model_out,
			one_hot_output => argmax_out,
			clk => clk,
			reset => '0'
		);
		
	U_MEMORY : entity work.ROM
		port map(
			address	=> inputs,
			clock		=> clk,
			rden		=> '1',
			q			=> model_in
		);
		
	U_NETWORK : logic_network
		port map(
			inputs		=> model_in,
			outputs		=> model_out
		);
		 
end bhv;