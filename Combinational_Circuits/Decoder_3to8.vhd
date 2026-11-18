library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3to8 is
    Port (
        A2 : in STD_LOGIC;
        A1 : in STD_LOGIC;
        A0 : in STD_LOGIC;
        D0 : out STD_LOGIC;
        D1 : out STD_LOGIC;
        D2 : out STD_LOGIC;
        D3 : out STD_LOGIC;
        D4 : out STD_LOGIC;
        D5 : out STD_LOGIC;
        D6 : out STD_LOGIC;
        D7 : out STD_LOGIC
    );
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
begin
    D0 <= (NOT A2) AND (NOT A1) AND (NOT A0);
    D1 <= (NOT A2) AND (NOT A1) AND A0;
    D2 <= (NOT A2) AND A1 AND (NOT A0);
    D3 <= (NOT A2) AND A1 AND A0;
    D4 <= A2 AND (NOT A1) AND (NOT A0);
    D5 <= A2 AND (NOT A1) AND A0;
    D6 <= A2 AND A1 AND (NOT A0);
    D7 <= A2 AND A1 AND A0;
end Behavioral;
