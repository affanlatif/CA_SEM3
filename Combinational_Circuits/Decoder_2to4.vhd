library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
    Port (
        A0 : in STD_LOGIC;
        A1 : in STD_LOGIC;
        D0 : out STD_LOGIC;
        D1 : out STD_LOGIC;
        D2 : out STD_LOGIC;
        D3 : out STD_LOGIC
    );
end decoder_2to4;

architecture Behavioral of decoder_2to4 is
begin
    D0 <= (NOT A0) AND (NOT A1);
    D1 <= (NOT A0) AND A1;
    D2 <= A0 AND (NOT A1);
    D3 <= A0 AND A1;
end Behavioral;
