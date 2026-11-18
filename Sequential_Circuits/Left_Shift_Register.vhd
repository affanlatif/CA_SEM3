library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity left_shift_register is
    Port (
        CLK        : in STD_LOGIC;
        CLEAR      : in STD_LOGIC;
        SERIAL_IN  : in STD_LOGIC;
        Q          : out STD_LOGIC_VECTOR(3 downto 0)
    );
end left_shift_register;

architecture Behavioral of left_shift_register is
    signal TEMP : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(CLK, CLEAR)
    begin
        if CLEAR = '1' then
            TEMP <= "0000";
        elsif rising_edge(CLK) then
            TEMP <= TEMP(2 downto 0) & SERIAL_IN;
        end if;
    end process;

    Q <= TEMP;
end Behavioral;
