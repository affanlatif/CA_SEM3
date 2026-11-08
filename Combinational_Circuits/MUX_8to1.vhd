library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_8to1 is
    Port (
        IP : in STD_LOGIC_VECTOR(7 downto 0);
        S  : in STD_LOGIC_VECTOR(2 downto 0);
        OP : out STD_LOGIC
    );
end mux_8to1;

architecture Behavioral of mux_8to1 is
begin
    process(IP, S)
    begin
        case S is
            when "000" => OP <= IP(0);
            when "001" => OP <= IP(1);
            when "010" => OP <= IP(2);
            when "011" => OP <= IP(3);
            when "100" => OP <= IP(4);
            when "101" => OP <= IP(5);
            when "110" => OP <= IP(6);
            when "111" => OP <= IP(7);
            when others => OP <= '0';
        end case;
    end process;
end Behavioral;
