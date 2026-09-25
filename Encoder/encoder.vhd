library ieee ;
use ieee.std_logic_1164.all ;

entity encoder is 
   port(
   y0 : in std_logic ;
   y1 : in std_logic ;
   y2 : in std_logic ;
   y3 : in std_logic ;
   a : out std_logic;
   b : out std_logic 
   );
end ;
architecture dataflow of encoder is
begin
    a <= (y1) or (y3);
    b <= (y2) or (y3);

end architecture dataflow ;