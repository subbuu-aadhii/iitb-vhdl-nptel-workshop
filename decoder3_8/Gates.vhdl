library ieee;
use ieee.std_logic_1164.all;

-- Package declaration storing component declarations for gates and full adder.
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;
  
  component MUX_2 is
   port (inp1, inp2, s: in std_logic; output: out std_logic);
  end component MUX_2;
  
  component MUX_4 is
   port (inp1, inp2, inp3, inp4, s1, s0: in std_logic; output: out std_logic);
  end component MUX_4;
  
  component DEC_2 is
   port (a1, a0, e: in std_logic; y3,y2,y1,y0: out std_logic);
  end component DEC_2;

end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;


library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;


library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity MUX_2 is
   port (inp1, inp2, s: in std_logic; output: out std_logic);
end entity MUX_2;

architecture Equations of MUX_2 is
begin
   output <= (inp1 and s) or (inp2 and (not s));
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity MUX_4 is
   port (inp1, inp2, inp3, inp4, s1, s0: in std_logic; output: out std_logic);
end entity MUX_4;

architecture Equations of MUX_4 is
begin
   output <= ((not s1) and (not s0) and inp4) or ((not s1) and s0 and inp3) or (s1 and (not s0) and inp2) or (s1 and s0 and inp1);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity DEC_2 is
   port (a1,a0,e: in std_logic; y3,y2,y1,y0: out std_logic);
end entity DEC_2;

architecture Equations of DEC_2 is
begin
   y0 <= ((not a1) and (not a0) and e);
   y1 <= ((not a1) and a0 and e);
   y2 <= (a1 and (not a0) and e);
   y3 <= (a1 and a0 and e);
end Equations;

