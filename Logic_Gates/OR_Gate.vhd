library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_114 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end OR_114;

architecture Behavioral of OR_114 is
begin
    Y <= A OR B;
end Behavioral;
