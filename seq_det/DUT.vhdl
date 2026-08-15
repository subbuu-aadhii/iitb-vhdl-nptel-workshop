-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component seq is
port(x: in std_logic_vector(4 downto 0); rst1: in std_logic; clk: in std_logic; y: out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: seq port map (x(4) => input_vector(6), x(3) => input_vector(5), x(2) => input_vector(4), x(1) => input_vector(3),x(0) => input_vector(2), rst1 => input_vector(1), clk => input_vector(0), y => output_vector(0));

end DutWrap;