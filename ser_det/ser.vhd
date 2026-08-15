library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ser is
port( x:in std_logic_vector(4 downto 0);
rst1,clk:in std_logic;
y: out std_logic);
end ser;
architecture bhv of ser is

signal y_2 : std_logic :='0';
signal y_1 : std_logic :='0';

type state1 is (rst2,s1,s2,s3); 
type state2 is (rst3,s4,s5);

signal y_present1,y_next1: state1:=rst2;
signal y_present2,y_next2: state2:=rst3;

begin

clock_proc1:process(clk,rst1)
begin
if(clk='1' and clk' event) then
if(rst1='1') then
y_present1<= rst2;
else
y_present1<= y_next1;
end if;
end if;
end process;

clock_proc2:process(clk,rst1)
begin
if(clk='1' and clk' event) then
if(rst1='1') then
y_present2<= rst3;
else
y_present2<= y_next2;
end if;
end if;
end process;

process(x,y_present1)
begin
case y_present1 is
when rst2=>
if(unsigned(x)=2) then
y_next1<= s1; 
else
y_next1<= rst2;
end if;

when s1=>
if(unsigned(x)=15) then
y_next1<= s2; 
else
y_next1<= s1;
end if;

when s2=>
if(unsigned(x)=13) then
y_next1<= s3; 
else
y_next1<= s2;
end if;

when s3=>
if(unsigned(x)=2) then
y_next1<= s1; 
else
y_next1<= s3;
end if;

end case;
end process;

process(x,y_present2)
begin
case y_present2 is
when rst3=>
if(unsigned(x)=7) then
y_next2<= s4; 
else
y_next2<= rst3;
end if;

when s4=>
if(unsigned(x)=21) then
y_next2<= s5; 
else
y_next2<= s4;
end if;

when s5=>
if(unsigned(x)=14) then
y_next2<= rst3;
else
y_next2<= s5;
end if;


end case;
end process;

process(y_present1,x)
begin
case y_present1 is 
when s3 =>
if (unsigned(x)=2) then 
y_1 <= '1';
else 
y_1 <= '0';
end if;
when rst2 =>
y_1 <= '0';
when s1 =>
y_1 <= '0';
when s2 =>
y_1 <= '0';
end case;
end process; 

process(y_present2,x) 
begin
case y_present2 is 
when s5 =>
if (unsigned(x)=14) then 
y_2<= '1';
else 
y_2<= '0';
end if;
when rst3 =>
y_2<= '0';
when s4 =>
y_2<= '0';
end case;
end process; 

y <= y_1 or y_2;

end bhv;
