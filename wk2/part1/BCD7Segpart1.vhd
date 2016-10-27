--------------------------------------------------------------------------------
-- File: BCD7Segpart1
-- Project: BCDpart1
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: This file will pass the switch inputs to the output of the LEDs 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity BCD7Segpart1 is
port (A,B,C,D : in std_logic;
	   display : out std_logic_vector(6 downto 0));
end entity;

architecture dataflow of BCD7Segpart1 is

begin
   --for D0
	display(6) <= (NOT A AND B AND NOT C AND NOT D) OR (NOT A AND NOT B AND NOT C AND D);

   --for D1
	display(5) <= (B AND NOT C AND D) OR (B AND C AND NOT D);

	--for D2
	display(4) <= NOT B AND C AND NOT D;

	--for D3
	display(3) <= (B AND NOT C AND NOT D) OR (NOT B AND NOT C AND D) OR (B AND C AND D);

	--for D4
	display(2) <= (B AND NOT C) OR D;

	--for D5
	display(1) <= (NOT A AND NOT B AND D) OR (NOT B AND C) OR (C AND D);

	--for D6
	display(0) <= (NOT A AND NOT B AND NOT C) OR (B AND C AND D);


end dataflow;
