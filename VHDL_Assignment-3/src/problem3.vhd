library ieee;
use ieee.std_logic_1164.all;

entity problem3 is
    port (
        d, clk : in std_logic;
        q, qbar : out std_logic
    );
end problem3;

architecture behavioral of problem3 is
    signal qi : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            qi <= d;
        end if;
    end process;
    q <= qi;
    qbar <= not qi;
end behavioral;
