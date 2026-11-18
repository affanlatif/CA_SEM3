library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_09 is
    Port (
        A   : in STD_LOGIC_VECTOR (3 downto 0);
        B   : in STD_LOGIC_VECTOR (3 downto 0);
        SEL : in STD_LOGIC_VECTOR (2 downto 0);
        Y   : out STD_LOGIC_VECTOR (3 downto 0)
    );
end shift_09;

architecture Behavioral of shift_09 is
begin
    process (A, B, SEL)
    begin
        case SEL is
            when "000" =>
                Y <= A + B;

            when "001" =>
                Y <= A - B;

            when "010" =>
                Y <= A and B;

            when "011" =>
                Y <= A or B;

            when "100" =>
                Y <= A XOR B;

            when "101" =>
                Y <= NOT A;

            when "110" =>
                Y <= A + 1;

            when "111" =>
                Y <= A - 1;

            when others =>
                Y <= "0000";
        end case;
    end process;
end Behavioral;
