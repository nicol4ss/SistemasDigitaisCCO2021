library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;


entity ULA is
    generic(N: integer := 4);
    port (A, B: in std_logic_vector(N-1 downto 0);
        s: out std_logic_vector(N-1 downto 0);
        NE, Z, OV: out std_logic);
end ULA;

architecture comportamento of ULA is
    signal tempS: std_logic_vector(N-1 downto 0);
begin


    tempS <= A + B;

    NE <= '1' when tempS(N-1) = '1' else '0';

    Z <= '1' when tempS(N-1 downto 0) = "0" else '0';

    OV <= ((A(N-1)) and B(N-1) and (not tempS(N-1))) or ((not A(N-1)) and (not B(N-1)) and tempS(N-1));

    s <= tempS;

end comportamento;