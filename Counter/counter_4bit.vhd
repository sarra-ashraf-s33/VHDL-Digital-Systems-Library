library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_4bit is
    port(
        clk : in  std_logic;
        q   : out std_logic_vector(3 downto 0)
    );
end counter_4bit;

architecture behavioral of counter_4bit is

signal count : unsigned(3 downto 0) := "0000";

begin

    process(clk)
    begin
        if rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;

    q <= std_logic_vector(count);

end architecture;