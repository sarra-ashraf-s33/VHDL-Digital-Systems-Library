library ieee ;
use ieee.std_logic_1164.all ;

entity  ff_jk_tb is 
end entity ;

architecture sim of ff_jk_tb is
    signal j : std_logic ;
    signal k : std_logic ;
    signal c : std_logic ;
    signal q : std_logic ;

begin

  t1:entity work.ff_jk
  port map (
    j => j ,
    k => k ,
    c => c ,
    q => q 
  );
process
begin 
  j<='0';
  k<='0';
  c<='0';
  wait for 10 ns ;
  
   c<='1';
   wait for 10 ns ;
 
  j<='0';
  k<='1';
  c<='0';
  wait for 10 ns ;
  
   c<='1';
   wait for 10 ns ;

  j<='1';
  k<='0';
  c<='0';
  wait for 10 ns ;
  
   c<='1';
   wait for 10 ns ;

  j<='1';
  k<='1';
  c<='0';
  wait for 10 ns ;
  
  wait ;
  end process ;
end architecture ;