library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_114 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end NOR_114;

architecture Behavioral of NOR_114 is
begin
    Y <= A NOR B;
end Behavioral;
