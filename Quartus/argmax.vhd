library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Note: You can replace this with numeric_std for better practices
use IEEE.NUMERIC_STD.ALL;

entity ArgMax is
	 generic (
		  WIDTH : integer := 2560
	 );
    port (
        input_vector : in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
		  clk : in std_logic;
        one_hot_output : out STD_LOGIC_VECTOR(9 downto 0)  -- Output for 10 classes (0-9)
    );
end ArgMax;

architecture Behavioral of ArgMax is

	 constant SUM_WIDTH : integer := WIDTH/10;
    type std_logic_array is array(0 to 9) of std_logic_vector(31 downto 0);
	 
	 signal max_count : integer := 0;
	 signal max_index : integer := 0;
	 signal count_array : std_logic_array;

begin
    
	 U_COUNT0 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
		   clk => clk,
			input_data => input_vector(SUM_WIDTH - 1 downto 0),
			count_out => count_array(0)
		);
		
	 U_COUNT1 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
		   clk => clk,	
			input_data => input_vector((SUM_WIDTH*2) - 1 downto SUM_WIDTH),
			count_out => count_array(1)
		);
		
	 U_COUNT2 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*3) - 1 downto (SUM_WIDTH*2)),
			count_out => count_array(2)
		);
		
	 U_COUNT3 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*4) - 1 downto (SUM_WIDTH*3)),
			count_out => count_array(3)
		);
		
	 U_COUNT4 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*5) - 1 downto (SUM_WIDTH*4)),
			count_out => count_array(4)
		);
		
	 U_COUNT5 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*6) - 1 downto (SUM_WIDTH*5)),
			count_out => count_array(5)
		);
		
	 U_COUNT6 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*7) - 1 downto (SUM_WIDTH*6)),
			count_out => count_array(6)
		);
		
	 U_COUNT7 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*8) - 1 downto (SUM_WIDTH*7)),
			count_out => count_array(7)
		);
		
	 U_COUNT8 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*9) - 1 downto (SUM_WIDTH*8)),
			count_out => count_array(8)
		);
		
	 U_COUNT9 : entity work.count_ones
	   generic map (
			WIDTH => SUM_WIDTH
		)
		port map (
			clk => clk,
			input_data => input_vector((SUM_WIDTH*10) - 1 downto (SUM_WIDTH*9)),
			count_out => count_array(9)
		);
		
	 
	 process (clk) begin
		one_hot_output <= (others => '0');
		for i in 0 to 9 loop
			if (to_integer(unsigned(count_array(i))) > max_count) then
				max_count <= to_integer(unsigned(count_array(i)));
				max_index <= i;
			end if;
		end loop;
		
		one_hot_output(max_index) <= '1';
	 end process;

end Behavioral;
