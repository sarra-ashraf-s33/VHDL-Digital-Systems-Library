library ieee ;
use ieee.std_logic_1164.all;

entity decoder is
    port(
    a : in std_logic ;
    b : in std_logic ;
    y0 : out std_logic ;
    y1 : out std_logic ;
    y2 : out std_logic ;
    y3 : out std_logic 
    );
end entity;

architecture dataflow of decoder is 
begin 
   y0 <= (not a ) and (not b) ;
   y1 <= (not a ) and ( b) ;
   y2 <= ( a ) and (not b) ;
   y3 <= ( a ) and ( b) ;
   
end architecture dataflow ;
