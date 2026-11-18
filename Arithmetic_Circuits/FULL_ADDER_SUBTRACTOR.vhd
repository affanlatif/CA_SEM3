library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER_SUBTRACTOR is
    Port (
        A             : in STD_LOGIC;
        B             : in STD_LOGIC;
        CIN_BIN       : in STD_LOGIC;
        MODE          : in STD_LOGIC;
        SUM_DIFF      : out STD_LOGIC;
        CARRY_BORROW  : out STD_LOGIC
    );
end FULL_ADDER_SUBTRACTOR;

architecture Behavioral of FULL_ADDER_SUBTRACTOR is
begin
    -- MODE = '0': Full Adder; CIN_BIN acts as carry-in.
    -- MODE = '1': Full Subtractor; CIN_BIN acts as borrow-in.

    SUM_DIFF <= A XOR B XOR CIN_BIN;

    process(A, B, CIN_BIN, MODE)
    begin
        if MODE = '0' then
            CARRY_BORROW <= (A AND B) OR
                            (A AND CIN_BIN) OR
                            (B AND CIN_BIN);

        elsif MODE = '1' then
            CARRY_BORROW <= ((NOT A) AND B) OR
                            ((NOT A) AND CIN_BIN) OR
                            (B AND CIN_BIN);

        else
            CARRY_BORROW <= '0';
        end if;
    end process;
end Behavioral;
