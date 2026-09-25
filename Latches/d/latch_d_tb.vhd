library ieee;
use ieee.std_logic_1164.all;

entity latch_d_tb is
end latch_d_tb;

architecture sim of latch_d_tb is

    signal d  : std_logic;
    signal c : std_logic;
    signal q  : std_logic ;

begin

    t1 : entity work.latch_d
        port map(
            d  => d,
            c => c,
            q  => q
        );

    process
    begin

        -- EN = 0, D = 0
        d <= '0';
        c <= '0';
        wait for 10 ns;

        -- EN = 0, D = 1
        d <= '1';
        c <= '0';
        wait for 10 ns;

        -- EN = 1, D = 0
        d <= '0';
        c <= '1';
        wait for 10 ns;

        -- EN = 1, D = 1
        d <= '1';
        c <= '1';
        wait for 10 ns;

        -- EN = 0, D = 0
        d <= '0';
        c <= '0';
        wait for 10 ns;

        wait;

    end process;

end architecture;