library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_4bit_parallel is
    Port (
        CLK   : in STD_LOGIC;
        CLEAR : in STD_LOGIC;
        D     : in STD_LOGIC_VECTOR(3 downto 0);
        Q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end register_4bit_parallel;

architecture Behavioral of register_4bit_parallel is
begin
    process(CLK, CLEAR)
    begin
        if CLEAR = '1' then
            Q <= "0000";
        elsif rising_edge(CLK) then
            Q <= D;
        end if;
    end process;
end Behavioral;
