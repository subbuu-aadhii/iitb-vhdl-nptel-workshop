library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity seq is
port( x:in std_logic_vector(4 downto 0);
rst1,clk:in std_logic;
y: out std_logic);
end seq;
architecture bhv of seq is

type state is (rst,s1,s2,s3,s4,s5,s6,s7); 

signal y_present,y_next: state:=rst;
begin
clock_proc:process(clk,rst1)
begin
if(clk='1' and clk' event) then
if(rst1='1') then
y_present<= rst;
else
y_present<= y_next;
end if;
end if;
end process;
state_transition_proc:process(x,y_present)
begin
case y_present is
when rst=>
if(unsigned(x)=19) then
y_next<= s1; 
else
y_next<= rst;
end if;

when s1=>
if(unsigned(x)=20) then
y_next<= s2; 
else
y_next<= s1;
end if;

when s2=>
if(unsigned(x)=21) then
y_next<= s3; 
else
y_next<= s2;
end if;

when s3=>
if(unsigned(x)=4) then
y_next<= s4; 
else
y_next<= s3;
end if;

when s4=>
if(unsigned(x)=5) then
y_next<= s5; 
else
y_next<= s4;
end if;

when s5=>
if(unsigned(x)=14) then
y_next<= s6; 
else
y_next<= s5;
end if;

when s6=>
if(unsigned(x)=20) then
y_next<= s7; 
else
y_next<= s6;
end if;

when s7=>
if(unsigned(x)=19) then
y_next<= s1; 
else 
y_next<=s7;
end if;
end case;
end process;

process(y_present,x)
begin
case y_present is 
when s7 =>
if (unsigned(x)=19) then 
y <= '1';
else 
y <= '0';
end if;
when rst =>
y <='0';
when s1 =>
y <='0';
when s2 =>
y <='0';
when s3 =>
y <='0';
when s4 =>
y <='0';
when s5 =>
y <='0';
when s6 =>
y <='0';
end case;
end process; 
end bhv;
