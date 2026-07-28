library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity dec3 is
port(a2,a1,a0,e: in std_logic; y7, y6, y5, y4, y3, y2, y1, y0: out std_logic );
end dec3;
Architecture struct of dec3 is
Signal s0,s1,s2: std_logic;
Begin 
g1: INVERTER port map (a2, s0);
g2: AND_2 port map (a2, e, s1); 
g3: AND_2 port map (s0, e, s2); 
g4: DEC_2 port map (a1, a0, s1, y7, y6, y5, y4);
g5: DEC_2 port map (a1, a0, s2, y3, y2, y1, y0);
end struct;