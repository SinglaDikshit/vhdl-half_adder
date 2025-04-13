-- Half Adder Testbench (ha_tb)
-- This testbench verifies the behavior of the Half Adder by applying all input combinations.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;  -- Import standard logic types

-- Entity declaration for the testbench (no ports needed)
entity ha_tb is
end ha_tb;

architecture Behavioral of ha_tb is

    -- Signals to connect to the Device Under Test (DUT)
    signal a, b       : std_logic := '0';  -- Input signals initialized to '0'
    signal sum, carry : std_logic;         -- Output signals to capture DUT response

    -- Component declaration for the Half Adder (must match the entity of DUT)
    component ha
        port (
            a     : in  std_logic;
            b     : in  std_logic;
            sum   : out std_logic;
            carry : out std_logic
        );
    end component;

begin

    -- Instantiation of the DUT (Half Adder)
    uut: ha
        port map (
            a     => a,      -- Connect testbench signal 'a' to DUT input 'a'
            b     => b,      -- Connect testbench signal 'b' to DUT input 'b'
            sum   => sum,    -- Connect DUT output 'sum' to testbench signal 'sum'
            carry => carry   -- Connect DUT output 'carry' to testbench signal 'carry'
        );

    -- Stimulus process to apply test vectors
    stimulus: process
    begin
        -- Test Case 1: a=0, b=0 → sum=0, carry=0
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Test Case 2: a=0, b=1 → sum=1, carry=0
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Test Case 3: a=1, b=0 → sum=1, carry=0
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Test Case 4: a=1, b=1 → sum=0, carry=1
        a <= '1'; b <= '1';
        wait for 10 ns;

        -- End of simulation
        wait;
    end process;

end Behavioral;
