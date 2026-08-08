library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity prime is
port(x4,x3,x2,x1,x0: in std_logic; y: out std_logic );
end prime;
Architecture struct of prime is
Signal n1,n2,n3,s1,s2,s3,s4,s5,s6,s7,s8,t1,t2,t3,t4: std_logic;
Begin 
g1: INVERTER port map (x4, n1);
g2: INVERTER port map (x3, n2);
g3: INVERTER port map (x2, n3);
g4: AND_2 port map (n1, n2, s1);
g5: AND_2 port map (n3, x1, s2);
g6: AND_2 port map (x0, x2, s3);
g7: OR_2 port map (s2, s3, s4);
g8: AND_2 port map (s1, s4, t1);
g9: AND_2 port map (x4, x0, s5);
g10: XNOR_2 port map (x3, x2, s6);
g11: AND_2 port map (n1, x0, s7);
g12: XOR_2 port map (x2, x1, s8);
g13: AND_2 port map (s7, s8, t4);
g14: AND_2 port map (s5, s6, t3);
g15: AND_4 port map (x4, x2, x1, x0, t2);
g16: OR_4 port map (t1, t2, t3, t4, y);
end struct;