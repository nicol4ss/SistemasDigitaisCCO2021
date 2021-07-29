library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity nota is
    port(
          n1,n2,n3,n4: in std_logic_vector(3 downto 0);
          passou,exame,reprovou: out std_logic
         );
end nota;

architecture teste of nota is
    signal S,temp1,temp2,temp3,temp4,tempsom1,tempsom2: std_logic_vector(5 downto 0);
    signal result: std_logic_vector(4 downto 0);

begin

    temp1 <= "00" & n1;
    temp2 <= "00" & n2;
    temp3 <= "00" & n3;
    temp4 <= "00" & n4;

    tempsom1 <= temp1 + temp2;
    tempsom2 <= temp3 + temp4;
    S <= tempsom1 + tempsom2;

    result <= S(5) & S(5 downto 2);

    passou <= '1' when S >= "11000" else '0';
    exame <= '1' when S < "11000" and S >= "1100" else '0';
    reprovou <= '1' when S < "1100" else '0';
     
end teste;