library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
    Port (
        A     : in STD_LOGIC;
        B     : in STD_LOGIC;
        C     : in STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is
begin
    SUM   <= A XOR B XOR C;
    CARRY <= (A AND B) OR (B AND C) OR (A AND C);
end Behavioral;
