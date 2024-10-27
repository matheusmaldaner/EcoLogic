library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Note: You can replace this with numeric_std for better practices
use IEEE.NUMERIC_STD.ALL;

entity ArgMax is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        input_vector : in STD_LOGIC_VECTOR(2559 downto 0);
        one_hot_output : out STD_LOGIC_VECTOR(9 downto 0)  -- Output for 10 classes (0-9)
    );
end ArgMax;

architecture Behavioral of ArgMax is

    type count_array is array(0 to 9) of integer;
    signal count_ones : count_array := (others => 0);
    signal max_count : integer := 0;
    signal max_index : integer := 0;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            count_ones <= (others => 0);
            one_hot_output <= (others => '0');
            max_count <= 0;
            max_index <= 0;
        elsif rising_edge(clk) then
            -- Reset counts for this cycle
            count_ones <= (others => 0);
            max_count <= 0;
            max_index <= 0;

            -- Count 1s in each group of 256
            for i in 0 to 9 loop
                for j in 0 to 255 loop
                    if input_vector(i * 256 + j) = '1' then
                        count_ones(i) <= count_ones(i) + 1;
                    end if;
                end loop;

                -- Find maximum count and corresponding index
                if count_ones(i) > max_count then
                    max_count <= count_ones(i);
                    max_index <= i;
                end if;
            end loop;

            -- Generate one-hot output
            one_hot_output <= (others => '0');
            one_hot_output(max_index) <= '1';  -- Ensure max_index is properly converted
        end if;
    end process;

end Behavioral;
