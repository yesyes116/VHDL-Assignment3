library ieee;
use ieee.std_logic_1164.all;

entity problem2 is
    port (
        d, en : in std_logic;
        q, qbar : out std_logic
    );
end problem2;

architecture behavioral of problem2 is
    signal qi : std_logic;
begin
    process(d, en)
    begin
        if en = '1' then
            qi <= d;
        end if;
    end process;
    q <= qi;
    qbar <= not qi;
end behavioral;
