library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4-bit circular shift register matching the notebook's bit rotation:
-- Q(3 downto 1) receives D(2 downto 0), and Q(0) receives D(3).
entity register_4bit is
    Port (
        CLK   : in STD_LOGIC;
        CLEAR : in STD_LOGIC;
        D     : in STD_LOGIC_VECTOR(3 downto 0);
        Q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end register_4bit;

architecture Behavioral of register_4bit is
begin
    process(CLK, CLEAR)
    begin
        if CLEAR = '1' then
            Q <= (others => '0');
        elsif rising_edge(CLK) then
            Q(3 downto 1) <= D(2 downto 0);
            Q(0) <= D(3);
        end if;
    end process;
end Behavioral;
