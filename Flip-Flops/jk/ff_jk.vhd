library ieee ;
use ieee.std_logic_1164.all ;

entity  ff_jk is 
  port(
   j : in std_logic ;
   k : in std_logic ;
   c : in std_logic ;  
   q : out std_logic
  );
end entity ;

architecture dataflow of ff_jk is
    signal q_int : std_logic := '0';
begin
   process(c)
   begin
    if rising_edge(c) then

     if j='0' and k='0' then
        q_int <= q_int ;

    elsif j='1' and k='0' then
        q_int <= '1' ;

    elsif j='0' and k='1' then
        q_int <= '0' ;

    elsif j='1' and k='1' then
        q_int <= not(q_int) ;

    end if ;
    end if ;
    end process ;
   
    q<=q_int;
    end architecture ;