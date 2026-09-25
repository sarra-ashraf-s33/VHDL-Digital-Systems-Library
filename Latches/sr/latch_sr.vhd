library ieee ;
use ieee.std_logic_1164.all ;

entity latch_sr is
    port(
      s : in std_logic ;
      r : in std_logic ;
      q : out std_logic ;
      qbar : out std_logic 
    );
end entity ;

architecture  dataflow of latch_sr is
  signal  q_int : std_logic :='0'; 
begin
    process(s,r)
    begin
      if s='0' and r='1' then
        q_int <= '0' ;
      elsif s='1' and r='0' then
        q_int <= '1' ;
      elsif s='1' and r='1' then
        q_int <= 'X' ;
       end if ;
    end process ;
    q <= q_int ;
    qbar <= not q_int ;
end architecture ;

