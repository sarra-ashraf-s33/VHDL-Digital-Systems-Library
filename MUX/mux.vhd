library ieee;
use ieee.std_logic_1164.all ;

entity mux is 
  port(  
    i0 : in std_logic ;
    i1 : in std_logic ;
    i2 : in std_logic ;
    i3 : in std_logic ;
    s1 :in std_logic ;
    s2 :in std_logic ;
    y : out std_logic
  );
end ;

architecture dataflow of mux is 
begin
    y <= (i0 and (not s1) and (not s2))
     or (i1 and (s1) and (not s2))
      or (i2 and (not s1) and (s2))
       or (i3 and (s1) and (s2)) ;

end architecture ;