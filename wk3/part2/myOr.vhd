--------------------------------------------------------------------------------
-- File: myOr
-- Project: calculator
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: Create a simple OR gate. 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity myOr is
port(A, B: in std_logic;
     Cout: out std_logic);	  
end entity;

architecture flow of myOr is
begin
	Cout <= A OR B;
end flow;