library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end entity;

architecture sim of decoder_tb is

    signal A  : std_logic;
    signal B  : std_logic;
    signal Y0 : std_logic;
    signal Y1 : std_logic;
    signal Y2 : std_logic;
    signal Y3 : std_logic;

begin

    t1: entity work.decoder
        port map (
            A  => A,
            B  => B,
            Y0 => Y0,
            Y1 => Y1,
            Y2 => Y2,
            Y3 => Y3
        );

    process
    begin

        -- 00
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- 01
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- 10
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- 11
        A <= '1';
        B <= '1';
        wait for 10 ns;

        wait;

    end process;

end architecture;