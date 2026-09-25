library ieee;
use ieee.std_logic_1164.all;

entity bcd_tb is
end bcd_tb;

architecture sim of bcd_tb is

    signal binary_in : std_logic_vector(3 downto 0);
    signal bcd_out   : std_logic_vector(7 downto 0);

begin

    t1 : entity work.bcd
        port map(
            binary_in => binary_in,
            bcd_out   => bcd_out
        );

    process
    begin

        -- 0
        binary_in <= "0000";
        wait for 10 ns;

        -- 1
        binary_in <= "0001";
        wait for 10 ns;

        -- 2
        binary_in <= "0010";
        wait for 10 ns;

        -- 3
        binary_in <= "0011";
        wait for 10 ns;

        -- 4
        binary_in <= "0100";
        wait for 10 ns;

        -- 5
        binary_in <= "0101";
        wait for 10 ns;

        -- 6
        binary_in <= "0110";
        wait for 10 ns;

        -- 7
        binary_in <= "0111";
        wait for 10 ns;

        -- 8
        binary_in <= "1000";
        wait for 10 ns;

        -- 9
        binary_in <= "1001";
        wait for 10 ns;

        -- 10
        binary_in <= "1010";
        wait for 10 ns;

        -- 11
        binary_in <= "1011";
        wait for 10 ns;

        -- 12
        binary_in <= "1100";
        wait for 10 ns;

        -- 13
        binary_in <= "1101";
        wait for 10 ns;

        -- 14
        binary_in <= "1110";
        wait for 10 ns;

        -- 15
        binary_in <= "1111";
        wait for 10 ns;

        wait;

    end process;

end architecture;