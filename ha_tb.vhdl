library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha_tb is
end ha_tb;

architecture Behavioral of ha_tb is

    -- Signale für die Eingänge und Ausgänge des DUT (Device Under Test)
    signal a, b       : std_logic := '0';
    signal sum, carry : std_logic;

    -- Komponentendeklaration für Half Adder
    component ha
        port (
            a     : in  std_logic;
            b     : in  std_logic;
            sum   : out std_logic;
            carry : out std_logic
        );
    end component;

begin

    -- Instanziierung des DUT
    uut: ha
        port map (
            a     => a,
            b     => b,
            sum   => sum,
            carry => carry
        );

    -- Stimuli-Prozess
    stimulus: process
    begin
        -- Testfall 1: a=0, b=0
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Testfall 2: a=0, b=1
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Testfall 3: a=1, b=0
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Testfall 4: a=1, b=1
        a <= '1'; b <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
