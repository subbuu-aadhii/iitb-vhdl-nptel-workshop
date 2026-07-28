library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity relay is
port(a,b,c,d,e: in std_logic; f: out std_logic );
end relay;
Architecture struct of relay is
Signal a0,c0,e0,m0,m1,m2,m3,m4,m5: std_logic;
Begin 
g1: INVERTER port map (a, a0);
g2: INVERTER port map (c, c0);
g3: INVERTER port map (e, e0);
g4: AND_2 port map (c0, e0, m0);
g5: AND_2 port map (c0, d, m1);
g6: AND_2 port map (m1, a, m2);
g7: AND_2 port map (a0, c, m3);
g8: AND_2 port map (m3, e, m4);
g9: OR_2 port map (m4, m2, m5);
g10: OR_2 port map (m5, m0, f);
end struct;