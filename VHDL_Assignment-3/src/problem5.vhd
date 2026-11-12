library ieee;
use ieee.std_logic_1164.all;

entity problem5 is
    port (
        d, clk, set, clr : in std_logic;
        q, qbar : out std_logic
    );
end problem5;

architecture behavioral of problem5 is
    signal qi : std_logic;
begin
    process(clk, set, clr)
    begin
        if clr = '1' then
            qi <= '0';
        elsif set = '1' then
            qi <= '1';
        elsif rising_edge(clk) then
            qi <= d;
        end if;
    end process;
    q <= qi;
    qbar <= not qi;
end behavioral;
