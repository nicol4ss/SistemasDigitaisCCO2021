library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity somador_4_unsigned is
    port(a, b: in std_logic_vector(3 downto 0);
        s: out std_logic_vector(4 downto 0));

end somador_4_unsigned;

architecture comportamento of somador_4_unsigned is
begin

    s <= ('0' & a) + ('0' & b);

end comportamento;