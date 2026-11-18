library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity right_shift_register is
    Port (
        CLK   : in STD_LOGIC;
        CLEAR : in STD_LOGIC;
        D     : in STD_LOGIC_VECTOR(3 downto 0);
        Q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end right_shift_register;

architecture Behavioral of right_shift_register is
    signal TEMP : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(CLK, CLEAR)
    begin
        if CLEAR = '1' then
            TEMP <= "0000";
        elsif rising_edge(CLK) then
            TEMP <= D(0) & D(3 downto 1);
        end if;
    end process;

    Q <= TEMP;
end Behavioral;
