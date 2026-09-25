library ieee ;
use ieee.std_logic_1164.all ;

entity bcd is 
  port(
    binary_in : in std_logic_vector(3 downto 0);
    bcd_out : out std_logic_vector(7 downto 0)

  );
end bcd ;

architecture dataflow of bcd is 
begin
    process (binary_in)
    begin
        if binary_in = "0000" then
            bcd_out <= "00000000" ;

        elsif binary_in = "0001" then
            bcd_out <="00000001" ;

        elsif binary_in = "0010" then
            bcd_out <="00000010" ;

        elsif binary_in = "0011" then
            bcd_out <="00000011" ;

        elsif binary_in = "0100" then
            bcd_out <="00000100" ;

        elsif binary_in = "0101" then
            bcd_out <="00000101" ;

        elsif binary_in = "0110" then
            bcd_out <="00000110" ;

        elsif binary_in = "0111" then
            bcd_out <="00000111" ;
 
        elsif binary_in = "1000" then
            bcd_out <="00001000" ;

        elsif binary_in = "1001" then
            bcd_out <="00001001" ;

        elsif binary_in = "1010" then
            bcd_out <="00010000" ;

        elsif binary_in = "1011" then
            bcd_out <="00010001" ;

        elsif binary_in = "1100" then
            bcd_out <="00010010" ;
    
        elsif binary_in = "1101" then
            bcd_out <="00010011" ;
            
        elsif binary_in = "1110" then
            bcd_out <="00010100" ;

        elsif binary_in = "1111" then
            bcd_out <="00010101" ;

        end if ;

    end process ;
end architecture ;


-- architecture dataflow of bcd is
-- begin

--     bcd_out(7) <= '0';
--     bcd_out(6) <= '0';
--     bcd_out(5) <= '0';

--     bcd_out(4) <= binary_in(3) and
--                   (binary_in(2) or binary_in(1));

--     bcd_out(3) <= binary_in(3) and
--                   (binary_in(2) or binary_in(1));

--     bcd_out(2) <= binary_in(2) and
--                   ((not binary_in(3)) or binary_in(1));

--     bcd_out(1) <= binary_in(1) xor binary_in(3);

--     bcd_out(0) <= binary_in(0);

-- end architecture;