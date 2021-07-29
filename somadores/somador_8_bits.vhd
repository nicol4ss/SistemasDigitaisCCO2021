library ieee;
use ieee.std_logic_1164.all;

entity somador_8_bits is
	port (
		A, B: in std_logic_vector(7 downto 0);
		cin: in std_logic;
		S: out std_logic_vector(7 downto 0);
		cout: out std_logic
	);
end somador_8_bits;

architecture arch of somador_8_bits is

	component somador_completo
		port(
				a, b, cin: in std_logic; 
				s, cout: out std_logic
			);
	end component;
	
	signal cout0, cout1, cout2, cout3, cout4, cout5, cout6: std_logic;

begin
	
	SC0: somador_completo port map
				( a => A(0), b => B(0) , cin => cin, s => S(0), cout => cout0);
				
	SC1: somador_completo port map
				( a => A(1), b => B(1) , cin => cout0, s => S(1), cout => cout1);
	
	SC2: somador_completo port map
				( a => A(2), b => B(2) , cin => cout1 , s => S(2), cout => cout2);
	
	SC3: somador_completo port map
				( a => A(3), b => B(3) , cin => cout2, s => S(3), cout => cout3);
	
	SC4: somador_completo port map
				( a => A(4), b => B(4) , cin => cout3 , s => S(4), cout => cout4);
	
	SC5: somador_completo port map
				( a => A(5), b => B(5) , cin => cout4, s => S(5), cout => cout5);
	
	SC6: somador_completo port map
				( a => A(6), b => B(6) , cin => cout5 , s => S(6), cout => cout6);
	
	SC7: somador_completo port map
				( a => A(7), b => B(7) , cin => cout6, s => S(7), cout => cout);
	
	
	
	
end arch;