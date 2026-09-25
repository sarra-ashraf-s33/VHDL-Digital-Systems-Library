library ieee ;
use ieee.std_logic_1164.all ;

entity  ff_t is 
  port(
   t : in std_logic ;
   c : in std_logic ;  
   q : out std_logic
  );
end entity ;

architecture dataflow of ff_t is
    signal q_int : std_logic := '0';
begin 
  process(c)
  begin 
   if rising_edge(c) then 
     if t = '0' then
       q_int <= q_int;
     elsif t ='1' then 
       q_int<= not(q_int);
      end if;
    end if;
  end process;
      q<=q_int;
 end architecture ;
