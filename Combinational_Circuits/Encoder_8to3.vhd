library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Assumes exactly one input (D0-D7) is HIGH at a time.
entity encoder_8to3 is
    Port (
        D0 : in STD_LOGIC;
        D1 : in STD_LOGIC;
        D2 : in STD_LOGIC;
        D3 : in STD_LOGIC;
        D4 : in STD_LOGIC;
        D5 : in STD_LOGIC;
        D6 : in STD_LOGIC;
        D7 : in STD_LOGIC;
        A0 : out STD_LOGIC;
        A1 : out STD_LOGIC;
        A2 : out STD_LOGIC
    );
end encoder_8to3;

architecture Behavioral of encoder_8to3 is
begin
    A0 <= D1 OR D3 OR D5 OR D7;
    A1 <= D2 OR D3 OR D6 OR D7;
    A2 <= D4 OR D5 OR D6 OR D7;
end Behavioral;
