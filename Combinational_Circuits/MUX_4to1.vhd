library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port (
        D0 : in STD_LOGIC;
        D1 : in STD_LOGIC;
        D2 : in STD_LOGIC;
        D3 : in STD_LOGIC;
        S0 : in STD_LOGIC;
        S1 : in STD_LOGIC;
        Y  : out STD_LOGIC
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(D0, D1, D2, D3, S0, S1)
    begin
        if (S1 = '0' and S0 = '0') then
            Y <= D0;
        elsif (S1 = '0' and S0 = '1') then
            Y <= D1;
        elsif (S1 = '1' and S0 = '0') then
            Y <= D2;
        else
            Y <= D3;
        end if;
    end process;
end Behavioral;
