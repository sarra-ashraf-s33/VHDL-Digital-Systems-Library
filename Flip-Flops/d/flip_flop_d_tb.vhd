library ieee ;
use ieee.std_logic_1164.all ;


entity flip_flop_d_tb is 
end entity ;

architecture sim of flip_flop_d_tb is 
signal d : std_logic ;
signal c : std_logic;
signal q : std_logic;
begin 
  t1 : entity work.flip_flop_d 
   port map(
   d => d,
   c=>c,
   q=>q
   );
process
begin
    d<='0';
    c<='0';
    wait for 10 ns ;

    c<='1';
    wait for 10 ns ;

        d<='1';
    c<='0';
    wait for 10 ns ;

    c<='1';
    wait for 10 ns ;

      d<='0';
    c<='0';
    wait for 10 ns ;

    c<='1';
    wait for 10 ns ;
    wait;
end process ;
end architecture;