library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity fibo is
port(x: in std_logic_vector(9 downto 0); y: out std_logic);
end entity fibo;
architecture behav of fibo is
begin
process(x)
variable num : integer;
begin
num:= to_integer(unsigned(x));
if ((num=0) or (num=1) or (num=2) or (num=3) or (num=5) or (num=8) or (num=13) or (num=21) or (num=34) or (num=55) or (num=89) or (num=144) or (num=233) or (num=377) or (num=610) or (num=987)) then
	y <= '1';
else
        y <= '0';
end if;
end process;
end behav;