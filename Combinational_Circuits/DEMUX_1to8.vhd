library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1to8 is
    Port (
        D : in STD_LOGIC;
        S : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end demux_1to8;

architecture Behavioral of demux_1to8 is
begin
    process(D, S)
    begin
        Y <= (others => '0');
        case S is
            when "000" => Y(0) <= D;
            when "001" => Y(1) <= D;
            when "010" => Y(2) <= D;
            when "011" => Y(3) <= D;
            when "100" => Y(4) <= D;
            when "101" => Y(5) <= D;
            when "110" => Y(6) <= D;
            when "111" => Y(7) <= D;
            when others => Y <= (others => '0');
        end case;
    end process;
end Behavioral;
