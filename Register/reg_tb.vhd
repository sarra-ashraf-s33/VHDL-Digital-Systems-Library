library ieee ;
use ieee.std_logic_1164.all ;

entity reg_tb is 
end entity ;

architecture sim of reg_tb is 
signal d : std_logic_vector(3 downto 0);
signal sh : std_logic;
signal l : std_logic;
signal c : std_logic;
signal q : std_logic_vector(3 downto 0);
begin 
t1: entity work.reg 
 port map (
d => d ,
sh => sh,
c => c ,
l => l ,
q => q
 );
 process
 begin
    
    d<="0101";
   

    l<='1';
    sh<='0';
    c<='0';
    wait for 10 ns ;
  
     c<='1';
    wait for 10 ns ;

    l<='0';
    sh<='1';
    c<='0';
    wait for 10 ns ;

     c<='1';
    wait for 10 ns ;

    l<='0';
    sh<='1';
    c<='0';
    wait for 10 ns ;
    wait ;
    end process;
    end architecture;
