library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND_114 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end NAND_114;

architecture Behavioral of NAND_114 is
begin
    Y <= A NAND B;
end Behavioral;
