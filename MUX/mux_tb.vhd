library ieee;
use ieee.std_logic_1164.all ;

entity mux_tb is
end entity ;

architecture sim of mux_tb is 
  signal i0 : std_logic;
  signal i1 : std_logic;
  signal i2 : std_logic;
  signal i3 : std_logic;

  signal s1 : std_logic;
  signal s2 : std_logic;

  signal y : std_logic;

begin 
   t1 : entity work.mux
    port map (
      i0 => i0 ,
      i1 => i1 ,
      i2 => i2 ,
      i3 => i3 ,
      s1 => s1 ,
      s2 => s2 ,
      y => y
    );
process
begin
     i0 <= '0' ;
     i1 <= '1' ;
     i2 <= '0' ;
     i3 <= '1' ;

     -- i0
     s1 <= '0' ;
     s2 <= '0' ;
     wait for 10 ns ;

     -- i1
     s1 <= '0' ;
     s2 <= '1' ;
     wait for 10 ns ;

      -- i2
     s1 <= '1' ;
     s2 <= '0' ;
     wait for 10 ns ;

      -- i3
     s1 <= '1' ;
     s2 <= '1' ;
     wait for 10 ns ;

     wait ;
    end process ;
end architecture ;