library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CountOnes is
    generic (
        WIDTH : integer := 8  -- Default width of the input vector
    );
    port (
        input_vector : in  std_logic_vector(WIDTH - 1 downto 0); -- Input vector
        count        : out integer                             -- Output count of 1s
    );
end entity CountOnes;

architecture Behavioral of CountOnes is
begin
    process(input_vector)
        variable ones_count : integer := 0;  -- Variable to hold the count of 1s
    begin
        ones_count := 0;  -- Reset count at the beginning
        for i in 0 to WIDTH - 1 loop
            if input_vector(i) = '1' then
                ones_count := ones_count + 1;  -- Increment count for each 1
            end if;
        end loop;
        count <= ones_count;  -- Assign the final count to the output
    end process;

end architecture Behavioral;
