library ieee ;
use ieee.std_logic_1164.all ;

entity  ff_t_tb is 
end entity ;

architecture sim of ff_t_tb is
    signal t : std_logic;
    signal c : std_logic;
    signal q : std_logic;
begin
    t1:entity work.ff_t
      port map(
       t => t,
       c => c ,
       q => q
      );
process 
begin 
  c <='0';
  t <='0' ;
  wait for 10 ns ;

  c<='1';
  wait for 10 ns;
  
  c <='0';
  t <='1' ;
  wait for 10 ns ;

  c<='1';
  wait for 10 ns;

  c <='0';
  t <='0' ;
  wait for 10 ns ;

  c<='1';
  wait for 10 ns;
  wait ;

  end process ;
  end architecture ;
