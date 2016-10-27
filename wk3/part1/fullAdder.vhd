--------------------------------------------------------------------------------
-- File: fullAdder
-- Project: four_bit_adder
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: Impliment a full adder with the halfAdder and myOr files. 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
port(A, B, Cin: in std_logic;
     Cout, S  : out std_logic);
end entity;

architecture flow of fullAdder is

component halfAdder
port(A, B: in std_logic;
     C, S: out std_logic);
end component;

component myOr is
port(A, B: in std_logic;
     Cout: out std_logic);	  
end component;

signal D: std_logic_vector(2 downto 0);

begin

inst1: halfAdder port map (A, B, D(0), D(1));
inst2: halfAdder port map (D(1), Cin, D(2), S);
inst3: myOr port map (D(0), D(2), Cout);

end architecture;
