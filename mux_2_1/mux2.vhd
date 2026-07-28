library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux2 is
port(inp1, inp2,s: in std_logic; output: out std_logic );
end mux2;
Architecture struct of mux2 is
Signal s1, s2, s3: std_logic;
Begin 
g1: AND_2 port map (inp1, s, s2);
g2: AND_2 port map (inp2, s1, s3 );
g3: INVERTER port map (s, s1);
g4: OR_2 port map (s2, s3, output);
end struct;