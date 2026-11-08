library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Assumes exactly one input (D0-D3) is HIGH at a time.
entity encoder_4to2 is
    Port (
        D0 : in STD_LOGIC;
        D1 : in STD_LOGIC;
        D2 : in STD_LOGIC;
        D3 : in STD_LOGIC;
        A0 : out STD_LOGIC;
        A1 : out STD_LOGIC
    );
end encoder_4to2;

architecture Behavioral of encoder_4to2 is
begin
    A0 <= D1 OR D3;
    A1 <= D2 OR D3;
end Behavioral;
