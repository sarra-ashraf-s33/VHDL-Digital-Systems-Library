library ieee ;
use ieee.std_logic_1164.all ;

entity latch_d is 
 port(
   d : in std_logic ;
   c : in std_logic ;
   q : out std_logic 
 );
end latch_d ;

architecture dataflow of latch_d is 
-- signal q_int : std_logic := '0';
begin 
 process(d,c)
 begin
   if c = '1' then
     q <= d ;
  end if ;
 end process ; 
end architecture ;