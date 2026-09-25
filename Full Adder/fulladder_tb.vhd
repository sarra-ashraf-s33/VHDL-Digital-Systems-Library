library ieee ;
use ieee.std_logic_1164.all ;

entity fulladder_tb is
end fulladder_tb ;

architecture sim of fulladder_tb is
  signal a : std_logic ;
  signal b : std_logic ; 
  signal cin  : std_logic ;
  signal sum : std_logic ; 
  signal cout : std_logic ;
begin 
t1 : entity work.fulladder
  port map(
    a => a ,
    b => b ,
    cin => cin ,
    sum => sum ,
    cout => cout
  );
process
begin
    -- 000
    a <='0';
    b <='0';
    cin <='0';
    wait for 10 ns ;

    -- 001
    a <='0';
    b <='0';
    cin <='1';
    wait for 10 ns ;

    -- 010
    a <='0';
    b <='1';
    cin <='0';
    wait for 10 ns ;


    -- 011
    a <='0';
    b <='0';
    cin <='1';
    wait for 10 ns ;

    -- 100
    a <='1';
    b <='0';
    cin <='0';
    wait for 10 ns ;


     -- 101
     a <='1';
     b <='0';
     cin <='1';
     wait for 10 ns ;

      -- 110
     a <='1';
     b <='1';
     cin <='0';
     wait for 10 ns ;

      -- 111
     a <='1';
     b <='1';
     cin <='1';
     wait for 10 ns ;
     wait ;
    end process ;
end architecture ;