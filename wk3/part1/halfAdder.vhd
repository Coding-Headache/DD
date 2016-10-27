--------------------------------------------------------------------------------
-- File: halfAdder
-- Project: four_bit_adder
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: Creates a simple half adder. 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is
port(A, B: in std_logic;
     C, S: out std_logic);
end entity;

architecture flow of halfAdder is
begin
	C <= A AND B;
	S <= A XOR B;
end flow;