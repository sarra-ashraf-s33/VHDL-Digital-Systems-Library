library ieee;
use ieee.std_logic_1164.all ;

entity demux_tb is 
end demux_tb ;


architecture sim of demux_tb is
    signal y : std_logic ;

    signal s1 : std_logic ;
    signal s2 : std_logic ;

    signal i0 : std_logic ;
    signal i1 : std_logic ;
    signal i2 : std_logic ;
    signal i3 : std_logic ;

begin
    t1 : entity work.demux
      port map(
        y => y ,
        s1 => s1 ,
        s2 => s2 ,
        i0 => i0 ,
        i1 => i1 ,
        i2 => i2 ,
        i3 => i3 
      );
    process 
    begin 
      -- 00
      s1 <= '0' ;
      s2 <= '0' ;
      y <= '0' ;
      wait for 10 ns ;

      s1 <= '0' ;
      s2 <= '1' ;
      y <= '1' ;
      wait for 10 ns ;

      s1 <= '1' ;
      s2 <= '0' ;
      y <= '0' ;
      wait for 10 ns ;

      s1 <= '1' ;
      s2 <= '1' ;
      y <= '1' ;
      wait for 10 ns ;
      wait ;
    end process ;
end architecture ;