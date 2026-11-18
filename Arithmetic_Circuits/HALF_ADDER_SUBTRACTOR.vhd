library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HALF_ADDER_SUBTRACTOR is
    Port (
        A             : in STD_LOGIC;
        B             : in STD_LOGIC;
        MODE          : in STD_LOGIC;
        SUM_DIFF      : out STD_LOGIC;
        CARRY_BORROW  : out STD_LOGIC
    );
end HALF_ADDER_SUBTRACTOR;

architecture Behavioral of HALF_ADDER_SUBTRACTOR is
begin
    SUM_DIFF <= A XOR B;

    process(A, B, MODE)
    begin
        if MODE = '0' then
            CARRY_BORROW <= A AND B;
        elsif MODE = '1' then
            CARRY_BORROW <= (NOT A) AND B;
        else
            CARRY_BORROW <= '0';
        end if;
    end process;
end Behavioral;
