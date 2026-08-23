library ieee;
use ieee.std_logic_1164.all;
package FlipFlops is
component dff_set is
port(
D
: in std_logic;
clock : in std_logic;
set : in std_logic;
Q
: out std_logic
);
end component dff_set;
component dff_reset is
port(
D
: in std_logic;
clock : in std_logic;
reset : in std_logic;
Q
: out std_logic
);
end component dff_reset;
end package FlipFlops; 

library ieee;
use ieee.std_logic_1164.all;
entity dff_set is
port(
D : in std_logic;
clock : in std_logic;
set : in std_logic;
Q : out std_logic
);
end entity dff_set;
architecture behav of dff_set is
begin
dff_set_proc : process(clock,set)
begin
if(set='1') then
Q <= '1';
elsif(clock'event and clock='1') then
Q <= D;
end if;
end process dff_set_proc;
end behav;

library ieee;
use ieee.std_logic_1164.all;
entity dff_reset is
port(
D : in std_logic;
clock : in std_logic;
reset : in std_logic;
Q : out std_logic
);
end entity dff_reset;
architecture behav of dff_reset is
begin
dff_reset_proc : process(clock,reset)
begin
if(reset='1') then
Q <= '0';
elsif(clock'event and clock='1') then
Q <= D;
end if;
end process dff_reset_proc;
end behav;