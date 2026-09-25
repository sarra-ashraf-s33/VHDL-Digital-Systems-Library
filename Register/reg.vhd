library ieee ;
use ieee.std_logic_1164.all ;

entity reg is 
 port(
  d : in std_logic_vector(3 downto 0);
  sh : in std_logic;
  l : in std_logic ;
  c : in std_logic ;
  q : out std_logic_vector(3 downto 0)
 );
end entity ;

architecture dataflow of reg is 
signal q_int : std_logic_vector(3 downto 0) := "0000" ;
begin
     process(c)
     begin
     if rising_edge(c) then
        if l = '1' then
        q_int<=d ;
     else
       q_int<=q_int(2 downto 0)  & sh ;
       end if ;
       end if ;
       end process ;
       q<=q_int;
end architecture ;
      