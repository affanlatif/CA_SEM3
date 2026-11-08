library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_114 is
    Port (
        A : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end NOT_114;

architecture Behavioral of NOT_114 is
begin
    Y <= NOT A;
end Behavioral;
