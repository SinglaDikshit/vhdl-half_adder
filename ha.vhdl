-- Half-Adder VHDL Description
-- This module computes the sum and carry of two 1-bit binary inputs.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;  -- Import standard logic types

-- Entity Declaration
-- Defines the module interface: inputs 'a' and 'b', outputs 'sum' and 'carry'
entity ha is
    port (
        a, b     : in  std_logic;   -- 1-bit binary inputs
        sum,     -- Sum output (a XOR b)
        carry    -- Carry output (a AND b)
               : out std_logic
    );
end ha;

-- Architecture Definition
-- Implements the behavior of the half-adder
architecture Behavioral of ha is
begin
    sum   <= a xor b;  -- XOR operation for sum
    carry <= a and b;  -- AND operation for carry
end Behavioral;

