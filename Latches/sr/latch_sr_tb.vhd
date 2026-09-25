library ieee;
use ieee.std_logic_1164.all;

entity latch_sr_tb is
end latch_sr_tb;

architecture sim of latch_sr_tb is

    signal s   : std_logic;
    signal r    : std_logic;
    signal q    : std_logic;
    signal qbar : std_logic;

begin

    t1 : entity work.latch_sr
        port map(
            s    => s,
            r    => r,
            q    => q,
            qbar => qbar
        );

    process
    begin

        -- Set
        s <= '1';
        r <= '0';
        wait for 10 ns;

        -- Hold
        s <= '0';
        r <= '0';
        wait for 10 ns;

        -- Reset
        s <= '0';
        r <= '1';
        wait for 10 ns;

        -- Hold
        s <= '0';
        r <= '0';
        wait for 10 ns;

        -- Invalid
        s <= '1';
        r <= '1';
        wait for 10 ns;

        wait;

    end process;

end architecture;
    