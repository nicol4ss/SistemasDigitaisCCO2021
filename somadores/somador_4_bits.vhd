library ieee;
use ieee.std_logic_1164.all;

entity somador_4_bits is
	port (
		A, B: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		S: out std_logic_vector(3 downto 0);
		cout: out std_logic
	);
end somador_4_bits;

architecture arch of somador_4_bits is

	component somador_completo
		port(
				a, b, cin: in std_logic; 
				s, cout: out std_logic
			);
	end component;
	
	signal cout0, cout1, cout2: std_logic;

begin
	
	SC0: somador_completo port map
				( a => A(0), b => B(0) , cin => cin, s => S(0), cout => cout0);
				
	SC1: somador_completo port map
				( a => A(1), b => B(1) , cin => cout0, s => S(1), cout => cout1);
	
	SC2: somador_completo port map
				( a => A(2), b => B(2) , cin => cout1 , s => S(2), cout => cout2);
	
	SC3: somador_completo port map
				( a => A(3), b => B(3) , cin => cout2, s => S(3), cout => cout);
	
end arch;