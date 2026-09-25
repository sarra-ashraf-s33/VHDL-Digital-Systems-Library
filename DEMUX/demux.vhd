library ieee;
use ieee.std_logic_1164.all ;

entity demux is 
  port(
   y : in std_logic ;

   s1 : in std_logic ;
   s2 : in std_logic ;

   i0 : out std_logic ;
   i1 : out std_logic ;
   i2 : out std_logic ;
   i3 : out std_logic 
  );
end demux ;

architecture dataflow of demux is 
begin 
  
  i0 <= ( y and (not s1) and (not s2 ) ) ;
  i1 <= ( y and (not s1) and ( s2 ) ) ;
  i2 <= ( y and ( s1) and (not s2 ) ) ;
  i3 <= ( y and ( s1) and ( s2 ) ) ;

  end architecture ;