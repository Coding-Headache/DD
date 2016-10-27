--------------------------------------------------------------------------------
-- File: four_bit_adder
-- Project: calculator
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: Impliment a four bit adder for use within the calculator project.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder is
port(A, B: in std_logic_vector(3 downto 0);
     Cin : in std_logic;
	  Q   : out std_logic_vector(3 downto 0);
	  Cout: out std_logic);
end entity;

architecture structural of four_bit_adder is

component fullAdder
port(A, B, Cin: in std_logic;
     Cout, S  : out std_logic);
end component;

signal D: std_logic_vector(2 downto 0);

begin

inst1: fullAdder port map (A(0), B(0), Cin, D(0), Q(0));
inst2: fullAdder port map (A(1), B(1), D(0), D(1), Q(1));
inst3: fullAdder port map (A(2), B(2), D(1), D(2), Q(2));
inst4: fullAdder port map (A(3), B(3), D(2), Q(3), Cout);

end architecture;