library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_subtractor is
    Port (
        A              : in STD_LOGIC;
        B              : in STD_LOGIC;
        MODE           : in STD_LOGIC;
        RESULT         : out STD_LOGIC;
        CARRY_BORROW   : out STD_LOGIC
    );
end half_adder_subtractor;

architecture Behavioral of half_adder_subtractor is
begin
    -- MODE = '0': Half Adder
    -- MODE = '1': Half Subtractor
    RESULT <= A XOR B;

    CARRY_BORROW <= ((NOT MODE) AND A AND B) OR
                    (MODE AND (NOT A) AND B);
end Behavioral;
