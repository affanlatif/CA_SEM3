library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_114 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end AND_114;

architecture Behavioral of AND_114 is
begin
    Y <= A AND B;
end Behavioral;
