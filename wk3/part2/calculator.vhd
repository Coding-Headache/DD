---------------------------------------------------------------------------------
-- File: circuitA
-- Project: calculator
--
-- Author: Daniel Hyde
-- Date: 20 October 2016
--
-- Description: This file will pass the four-bit adder into circuitA in order to
--					 produce an additional math equation, passing the results to the
--					 7-segment display.
---------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity calculator is
port(A, B: in std_logic_vector(3 downto 0);
     D1  : out std_logic_vector(7 downto 0);
	  D0  : out std_logic_vector(7 downto 0)
	  );
end entity;

architecture structural of calculator is

component four_bit_adder
port(A, B: in std_logic_vector(3 downto 0);
     Q   : out std_logic_vector(3 downto 0);
	  Cout: out std_logic);
end component;
component circuitA
port(Sin : in std_logic_vector(3 downto 0);
     Cout: in std_logic;
	  D1  : out std_logic_vector(7 downto 0);
	  D0  : out std_logic_vector(7 downto 0)
	  );
end component;
signal D : std_logic_vector(4 downto 0);

begin


end architecture;