library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity comp is
	generic(N: integer := 8);
	port (A, B: in std_logic_vector(N-1 downto 0);
		AigualB, AmaiorB, AmenorB: out std_logic);
end comp;

architecture comportamento of comp is
begin

	AigualB <= '1' when A = B else '0';
	AmaiorB <= '1' when A > B else '0';
	AmenorB <= '1' when A < B else '0';
	
end comportamento;