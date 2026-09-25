library ieee ;
use ieee.std_logic_1164.all ;

entity encoder_tb is
end entity;

architecture sim of encoder_tb is
  signal y0 : std_logic;
  signal y1 :std_logic ;
  signal y2 : std_logic;
  signal y3 :std_logic ;

  signal a : std_logic ;
  signal b : std_logic ;

begin

    t1 : entity work.encoder
       port map(
        y0 => y0 ,
        y1 => y1 ,
        y2 => y2 ,
        y3 => y3 ,
        a => a ,
        b => b
       );
    process
    begin
       -- y0 = 1 ;
       y0 <= '1' ;
       y1 <= '0' ;
       y2 <='0' ;
       y3 <='0' ;
       wait for 10 ns ;

     -- y1 = 1 ;
       y0 <= '0' ;
       y1 <= '1' ;
       y2 <= '0' ;
       y3 <='0';
       wait for 10 ns ;

           -- y2 = 1 ;
       y0 <= '0' ;
       y1 <= '0' ;
       y2 <= '1' ;
       y3 <='0' ;
       wait for 10 ns ; 
       
         -- y3 = 1 ;
       y0 <= '0' ;
       y1 <= '0';
       y2 <= '0';
       y3 <='1';
       wait for 10 ns ;
    
       wait ;
    end process;
end architecture;