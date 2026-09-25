library ieee ;
use ieee.std_logic_1164.all ;

entity flip_flop_d is 
port(
  d : in std_logic ;
  c : in std_logic ;
  q : out std_logic 
);
end entity ;

architecture dataflow of flip_flop_d is 
begin 
  process(d,c)
  begin
     if rising_edge(c) then
        q <= d;
     end if ;
   end process;
end architecture ;