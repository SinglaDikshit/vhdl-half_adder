library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha is
    port (
        a, b     : in  std_logic;
        sum,
        carry    : out std_logic
    );
end ha;

architecture Behavioral of ha is
begin
    sum   <= a xor b;
    carry <= a and b;
end Behavioral;
