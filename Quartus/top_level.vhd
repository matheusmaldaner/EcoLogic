library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    port (
        inputs: in std_logic_vector(9 downto 0);
        outputs: out std_logic_vector(9 downto 0)
    );
end top_level;

architecture bhv of top_level is
    signal layer0_outputs: std_logic_vector(2559 downto 0);
begin
	 outputs <= inputs;
end bhv;