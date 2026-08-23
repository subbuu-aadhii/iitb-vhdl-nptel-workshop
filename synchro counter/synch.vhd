library ieee;
use ieee.std_logic_1164.all;
entity sync is
port(clk,rst: in std_logic; q: out std_logic_vector(2 downto 0));
end entity sync;
architecture behav of sync is
begin
counting : process(clk,rst)
variable prev : std_logic_vector(2 downto 0);
variable output : std_logic_vector(2 downto 0);
variable D : std_logic_vector(2 downto 0);
begin
if (rst='1') then
	q <= "111";
	D := "111";
	prev := "111";


elsif (clk'event and clk='1' and rst='0') then
	output := prev;
	D(0) := not output(0);
	D(1) := output(0) xnor output(1);
	D(2) := output(2) xnor (output(1) or output(0));
end if;
prev := D;
q <= D;
end process counting;
end behav;