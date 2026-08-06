library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity or_v is
port(a, b: in std_logic; output: out std_logic );
end or_v;
Architecture struct of or_v is
Signal s1,s2: std_logic;
Begin 
g1: NAND_2 port map (a, a, s1 );
g2: NAND_2 port map (b, b, s2);
g3: NAND_2 port map (s1, s2, output);
end struct;