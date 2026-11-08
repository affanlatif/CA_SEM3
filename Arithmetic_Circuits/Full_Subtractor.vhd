library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FS_001 is
    Port (
        A    : in STD_LOGIC;
        B    : in STD_LOGIC;
        Bin  : in STD_LOGIC;
        D    : out STD_LOGIC;
        Bout : out STD_LOGIC
    );
end FS_001;

architecture Behavioral of FS_001 is
begin
    D <= A XOR B XOR Bin;
    Bout <= ((NOT A) AND B) OR
            ((NOT A) AND Bin) OR
            (B AND Bin);
end Behavioral;
