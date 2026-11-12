library ieee;
use ieee.std_logic_1164.all;

entity problem1 is
    port (
        s, r : in std_logic;
        q, qbar : out std_logic
    );
end problem1;

architecture structural of problem1 is
    signal qi, qbi : std_logic;
begin
    qi <= not (r or qbi);
    qbi <= not (s or qi);
    q <= qi;
    qbar <= qbi;
end structural;
