library ieee;
use ieee.std_logic_1164.all;

entity counter_4bit_tb is
end counter_4bit_tb;

architecture sim of counter_4bit_tb is

signal clk : std_logic;
signal q   : std_logic_vector(3 downto 0);

begin

uut: entity work.counter_4bit
port map(
    clk => clk,
    q   => q
);

process
begin

    clk <= '0';
    wait for 10 ns;

    clk <= '1';
    wait for 10 ns;

    clk <= '0';
    wait for 10 ns;

    clk <= '1';
    wait for 10 ns;

    clk <= '0';
    wait for 10 ns;

    clk <= '1';
    wait for 10 ns;

    clk <= '0';
    wait for 10 ns;

    clk <= '1';
    wait for 10 ns;

    clk <= '0';
    wait for 10 ns;

    clk <= '1';
    wait for 10 ns;

    wait;

end process;

end architecture;