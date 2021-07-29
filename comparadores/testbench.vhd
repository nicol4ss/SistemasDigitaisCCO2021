library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture tb of testbench is
    signal n1,n2,n3,n4: std_logic_vector(3 downto 0);
    signal passou,exame,reprovou: std_logic;

    component nota is
        port(
          n1,n2,n3,n4: in std_logic_vector(3 downto 0);
          passou,exame,reprovou: out std_logic
         );
        end component;

begin

    NTA: nota port map(n1 => n1,
                       n2 => n2,
                       n3 => n3,
                       n4 => n4,
                       passou => passou,
                       exame => exame,
                       reprovou => reprovou
                       );

    n1 <= "0111", "0110" after 20 ns,"0011" after 40 ns;
     n2 <= "0101", "0100" after 20 ns,"0001" after 40 ns;
     n3 <= "0111", "0101" after 20 ns,"0001" after 40 ns;
     n4 <= "0101", "0101" after 20 ns,"0011" after 40 ns;
end tb;