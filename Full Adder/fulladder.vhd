library ieee ;
use ieee.std_logic_1164.all ;

entity fulladder is
    port(
      a : in std_logic ;
      b : in std_logic ;
      cin : in std_logic ;
      
      sum : out std_logic ;
      cout : out std_logic
    );
end fulladder ;

architecture dataflow of  fulladder is 
begin 
    sum <= a xor b xor cin ;
    Cout <= (A and B) or (A and Cin) or (B and Cin);
end architecture;