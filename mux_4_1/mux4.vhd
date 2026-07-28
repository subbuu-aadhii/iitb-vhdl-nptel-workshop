library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux4 is
port(inp3, inp2, inp1, inp0, se1, se0: in std_logic; output: out std_logic );
end mux4;
Architecture struct of mux4 is
Signal s1, s2, s3: std_logic;
Begin 
g1: MUX_2 port map (inp3, inp2, se0, s1);
g2: MUX_2 port map (inp1, inp0, se0, s2);
g3: MUX_2 port map (s1, s2, se1, output);
end struct;