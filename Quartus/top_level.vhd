library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    port (
        inputs: in std_logic_vector(9 downto 0);
		  clk : in std_logic;
        outputs: out std_logic_vector(9 downto 0);
		  
		  seg0 : out std_logic_vector(6 downto 0);
		  seg1 : out std_logic_vector(6 downto 0);
		  seg2 : out std_logic_vector(6 downto 0);
		  seg3 : out std_logic_vector(6 downto 0);
		  seg4 : out std_logic_vector(6 downto 0);
		  seg5 : out std_logic_vector(6 downto 0);
		  dp : out std_logic;
		  samples : out std_logic_vector(9 downto 0)
    );
end top_level;

architecture bhv of top_level is
	 constant WIDTH : integer := 2560;
	 constant SUM_WIDTH : integer := WIDTH/10;
	 signal model_in: std_logic_vector(255 downto 0);
    signal model_out: std_logic_vector(WIDTH - 1 downto 0);
	 signal max_index : std_logic_vector(3 downto 0);
	 signal argmax_out: std_logic_vector(9 downto 0);
	 
	 signal count0, count1, count2, count3, count4, count5, count6, count7, count8, count9 : std_logic_vector(31 downto 0);
	 
	 component logic_network 
		port(
			inputs		: in std_logic_vector(255 downto 0);
			outputs	: out std_logic_vector(WIDTH - 1 downto 0)
		);
	 end component;
	 
	 component sum_ones
		generic (
			WIDTH : integer := 2560
		);
		port(
			input_data	: in std_logic_vector(WIDTH-1 downto 0);
			num_ones		: out std_logic_vector(31 downto 0)
		);
	 end component;
	 
	 component max_finder
		port(
			in0, in1, in2, in3, in4, in5, in6, in7, in8, in9 : in std_logic_vector(31 downto 0);
			max_index	: out std_logic_vector(3 downto 0)
		);
	 end component;
	 
begin
		
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
		
	U_SUM0 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out(SUM_WIDTH-1 downto 0),
			num_ones => count0
		);
		
	U_SUM1 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*2)-1 downto SUM_WIDTH),
			num_ones => count1
		);
		
	U_SUM2 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*3)-1 downto (SUM_WIDTH*2)),
			num_ones => count2
		);
		
	U_SUM3 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*4)-1 downto (SUM_WIDTH*3)),
			num_ones => count3
		);
		
	U_SUM4 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*5)-1 downto (SUM_WIDTH*4)),
			num_ones => count4
		);
		
	U_SUM5 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*6)-1 downto (SUM_WIDTH*5)),
			num_ones => count5
		);
		
	U_SUM6 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*7)-1 downto (SUM_WIDTH*6)),
			num_ones => count6
		);
		
	U_SUM7 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*8)-1 downto (SUM_WIDTH*7)),
			num_ones => count7
		);
		
	U_SUM8 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*9)-1 downto (SUM_WIDTH*8)),
			num_ones => count8
		);
		
	U_SUM9 : sum_ones
		generic map (
			WIDTH => SUM_WIDTH
		)
		port map(
			input_data => model_out((SUM_WIDTH*10)-1 downto (SUM_WIDTH*9)),
			num_ones => count9
		);
		
	U_SEG0 : entity work.decode7seg
		port map(
			input => max_index,
			output => seg0
		);
		
	U_MAXINDEX : max_finder
		port map(
			in0 => count0,
			in1 => count1,
			in2 => count2,
			in3 => count3,
			in4 => count4,
			in5 => count5,
			in6 => count6,
			in7 => count7,
			in8 => count8,
			in9 => count9,
			max_index => max_index
		);
		
	process (max_index) begin
		case max_index is
			when "0000" =>
				argmax_out <= "0000000001";
			when "0001" =>
				argmax_out <= "0000000010";
			when "0010" =>
				argmax_out <= "0000000100";
			when "0011" =>
				argmax_out <= "0000001000";
			when "0100" =>
				argmax_out <= "0000010000";
			when "0101" =>
				argmax_out <= "0000100000";
			when "0110" =>
				argmax_out <= "0001000000";
			when "0111" =>
				argmax_out <= "0010000000";
			when "1000" =>
				argmax_out <= "0100000000";
			when "1001" =>
				argmax_out <= "1000000000";
			when others =>
				argmax_out <= "0000000000";
		end case;
	end process;
	
	outputs <= argmax_out;
	samples <= argmax_out;
	
	
	-- Hard code the 7 segment display to say "Class"
	seg5 <= "1000110";
	seg4 <= "1000111";
	seg3 <= "0001000";
	seg2 <= "0010010";
	seg1 <= "0010010";
	dp <= '0';
		 
end bhv;