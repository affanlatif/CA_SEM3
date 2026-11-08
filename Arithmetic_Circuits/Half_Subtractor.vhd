library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HS_001 is
    Port (
        A      : in STD_LOGIC;
        B      : in STD_LOGIC;
        D      : out STD_LOGIC;
        Borrow : out STD_LOGIC
    );
end HS_001;

architecture Behavioral of HS_001 is
begin
    D      <= A XOR B;
    Borrow <= (NOT A) AND B;
end Behavioral;
