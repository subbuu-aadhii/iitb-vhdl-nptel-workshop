-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component pe is
port(a,b,c,d: in std_logic; y1,y0,v: out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: pe port map (a => input_vector(3), b => input_vector(2), c => input_vector(1), d => input_vector(0),
											y1 => output_vector(2), y0 => output_vector(1), v => output_vector(0));

end DutWrap;
