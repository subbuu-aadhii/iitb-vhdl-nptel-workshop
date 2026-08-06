library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity ha_v is
port(a, b: in std_logic; sum, carry: out std_logic );
end ha_v;
Architecture struct of ha_v is
Signal s1,s2,s3,s4: std_logic;
Begin 
g1: NAND_2 port map (a, b, s1 );
g2: NAND_2 port map (a, s1, s2);
g3: NAND_2 port map (b, s1, s3);
g4: NAND_2 port map (s2, s3, sum); 
g5: NAND_2 port map (s1, s1, carry);
end struct;