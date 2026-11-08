library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HALF_ADDER is
    Port (
        A     : in STD_LOGIC;
        B     : in STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end HALF_ADDER;

architecture Behavioral of HALF_ADDER is
begin
    SUM   <= A XOR B;
    CARRY <= A AND B;
end Behavioral;
