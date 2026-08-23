library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Flipflops.all;
use work.Gates.all;
entity sync_down_count is
port(
clock: in std_logic;
reset: in std_logic;
Q: out std_logic_vector(2 downto 0)
);
end entity sync_down_count;

architecture behav of sync_down_count is


signal q0: std_logic;
signal q1: std_logic;
signal q2, d0, d1, d2,s1: std_logic;
signal D: std_logic_vector(2 downto 0);
begin
g1: INVERTER port map (q0,d0);
g2: XNOR_2 port map (q0, q1, d1);
g3: OR_2 port map (q0, q1, s1);
g4: XNOR_2 port map (s1, q2, d2);
ff1: dff_set port map (d0, clock, reset, q0);
ff2: dff_set port map (d1, clock, reset, q1);
ff3: dff_set port map (d2, clock, reset, q2);
Q(0) <= q0;
Q(1) <= q1;
Q(2) <= q2;
end behav;