library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity fa__v is
port(a, b,c: in std_logic; sum,carry: out std_logic );
end fa__v;
Architecture struct of fa is
Signal s1, s2, s3,s4,s6,s7,s8: std_logic;
Begin 
g1: NAND_2 port map (a, b, s1);
g2: NAND_2 port map (a, s1, s2 );
g3: NAND_2 port map (s1, b, s3 );
g4: NAND_2 port map (s3, s2, s4);
g5: NAND_2 port map (s4, c, s6);
g6: NAND_2 port map (s4, s6, s7);
g7: NAND_2 port map (s6, c, s8);
g8: NAND_2 port map (s7, s8, sum);
g9: NAND_2 port map (s1, s6, carry);
end struct;