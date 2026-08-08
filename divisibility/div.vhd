library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity div is
port(
    d,x4,x3,x2,x1,x0 : in std_logic;
    y : out std_logic
);
end div;

architecture struct of div is

signal n0,n1,n2,n3,n4,n5,z0,z1,z2 : std_logic;

signal s1,s2,s3,s4 : std_logic;

signal s5,s6,s7 : std_logic;
signal s8,s9,s10 : std_logic;

signal s11,s12,s13 : std_logic;
signal s14,s15,s16 : std_logic;

signal s17,s18,s19,s20,s21 : std_logic;
signal s22,s23,s24,s25,s26 : std_logic;

signal s27,s28,s29,s30,s31 : std_logic;
signal s32,s33,s34,s35,s36 : std_logic;

signal f1,f2,f3,f4,f5 : std_logic;

begin

g1 : INVERTER port map(x0,n0);
g2 : INVERTER port map(x1,n1);
g3 : INVERTER port map(x2,n2);
g4 : INVERTER port map(x3,n3);
g5 : INVERTER port map(x4,n4);
g6 : INVERTER port map(d ,n5);

g7  : AND_2 port map(n5,n4,s1);
g8  : AND_2 port map(n5,x4,s2);
g9  : AND_2 port map(d ,n4,s3);
g10 : AND_2 port map(d ,x4,s4);



g11 : AND_4 port map(n3,x2,n1,x0,s5);   
g12 : AND_4 port map(x3,n2,x1,n0,s6);   
g13 : AND_4 port map(x3,x2,x1,x0,s7); 

g14 : AND_2 port map(s1,s5,s8);
g15 : AND_2 port map(s1,s6,s9);
g16 : AND_2 port map(s1,s7,s10);



g17 : AND_4 port map(n3,x2,n1,n0,s11); 
g18 : AND_4 port map(x3,n2,n1,x0,s12);
g19 : AND_4 port map(x3,x2,x1,n0,s13);  

g20 : AND_2 port map(s2,s11,s14);
g21 : AND_2 port map(s2,s12,s15);
g22 : AND_2 port map(s2,s13,s16);


g23 : AND_4 port map(n3,n2,x1,x0,s17);  
g24 : AND_4 port map(n3,x2,x1,n0,s18);  
g25 : AND_4 port map(x3,n2,n1,x0,s19);  
g26 : AND_4 port map(x3,x2,n1,n0,s20);  
g27 : AND_4 port map(x3,x2,x1,x0,s21);  



g28 : AND_4 port map(n3,n2,x1,n0,s22);  
g29 : AND_4 port map(n3,x2,n1,x0,s23);  
g30 : AND_4 port map(x3,n2,n1,n0,s24);  
g31 : AND_4 port map(x3,n2,x1,x0,s25);  
g32 : AND_4 port map(x3,x2,x1,n0,s26);  

g33 : AND_2 port map(s3,s17,s27);
g34 : AND_2 port map(s3,s18,s28);
g35 : AND_2 port map(s3,s19,s29);
g36 : AND_2 port map(s3,s20,s30);
g37 : AND_2 port map(s3,s21,s31);

g38 : AND_2 port map(s4,s22,s32);
g39 : AND_2 port map(s4,s23,s33);
g40 : AND_2 port map(s4,s24,s34);
g41 : AND_2 port map(s4,s25,s35);
g42 : AND_2 port map(s4,s26,s36);

g43 : OR_4 port map(s27,s28,s29,s30,f1);
g44 : OR_4 port map(s31,s32,s33,s34,f2);
g45 : OR_4 port map(s35,s36,s8,s9,f3);
g46 : OR_4 port map(s10,s14,s15,s16,f4);
g47 : OR_4 port map(f1,f2,f3,f4,f5);

g48 : AND_4 port map(n4,n3,n2,n1,z0);
g49 : AND_2 port map(z0,n0,z1);   -- A = 00000

g50 : OR_2 port map(f5,z1,y);
end struct;