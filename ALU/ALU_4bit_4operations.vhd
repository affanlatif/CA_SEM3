library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity affanunit is
    Port (
        A  : in STD_LOGIC_VECTOR(3 downto 0);
        B  : in STD_LOGIC_VECTOR(3 downto 0);
        S0 : in STD_LOGIC;
        S1 : in STD_LOGIC;
        Y  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end affanunit;

architecture Behavioral of affanunit is
    signal D0, D1, D2, D3 : STD_LOGIC_VECTOR(3 downto 0);
begin
    D0 <= A + B;
    D1 <= A - B;
    D2 <= A AND B;
    D3 <= A OR B;

    process(S0, S1, D0, D1, D2, D3)
    begin
        if (S1 = '0' and S0 = '0') then
            Y <= D0;

        elsif (S1 = '0' and S0 = '1') then
            Y <= D1;

        elsif (S1 = '1' and S0 = '0') then
            Y <= D2;

        elsif (S1 = '1' and S0 = '1') then
            Y <= D3;

        else
            Y <= "0000";
        end if;
    end process;
end Behavioral;
