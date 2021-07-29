library ieee;
use ieee.std_logic_1164.all;

entity graycounter is
    port (clr, cnt, clk: in std_logic;
    q: out std_logic_vector(2 downto 0));
end graycounter;

architecture gray_cnt_arch of graycounter is
    signal reg: std_logic_vector(2 downto 0);
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            if clr = '1' then
            elsif cnt = '1' then
                case reg is
                when "000" => reg <= "001";
                when "001" => reg <= "011";
                when "011" => reg <= "001";
                when "010" => reg <= "011";
                when "110" => reg <= "011";
                when "111" => reg <= "001";
                when "101" => reg <= "011";
                when "100" => reg <= "000";
                when others => reg <= "000";
                end case;
            end if;
        end if;
    end process;

    q <= reg;

end gray_cnt_arch;
                
                
                    