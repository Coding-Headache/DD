---------------------------------------------------------------------------------
-- File: circuitA
-- Project: calculator
--
-- Author: Daniel Hyde
-- Date: 13 October 2016
--
-- Description: This file will act as a second step counting decoder for the
--					 calculator project.
---------------------------------------------------------------------------------
 library ieee;
 use ieee.std_logic_1164.all;

 entity circuitA is
 port(
 		 Sin  : in std_logic_vector(3 downto 0);
       Cout : in std_logic;
	    D1   : out std_logic_vector(7 downto 0);
	    D0   : out std_logic_vector(7 downto 0)
 );

 		 constant ZERO		: std_logic_vector(7 downto 0) := "00000010";
		 constant ONE		: std_logic_vector(7 downto 0) := "10011110";
		 constant TWO		: std_logic_vector(7 downto 0) := "00100100";
		 constant THREE	: std_logic_vector(7 downto 0) := "00001100";
		 constant FOUR		: std_logic_vector(7 downto 0) := "10011000";
		 constant FIVE		: std_logic_vector(7 downto 0) := "01001000";
		 constant SIX		: std_logic_vector(7 downto 0) := "01000000";
		 constant SEVEN	: std_logic_vector(7 downto 0) := "00011110";
		 constant EIGHT	: std_logic_vector(7 downto 0) := "00000000";
		 constant NINE		: std_logic_vector(7 downto 0) := "00011000";
		 constant ERROR	: std_logic_vector(7 downto 0) := "01100000";
 end;

 architecture behavioural of circuitA is
	begin
		PROCESS(Cout, Sin)
			begin
				case Cout is
					when '0' =>
						case Sin is
							when "0000" => 	-- 0
								D0 <= ZERO;
								D1 <= ZERO;
							when "0001" =>		-- 1
								D0 <= ONE;
								D1 <= ZERO;
							when "0010" =>		-- 2
								D0 <= TWO;
								D1 <= ZERO;
							when "0011" =>		-- 3
								D0 <= THREE;
								D1 <= ZERO;
							when "0100" =>		-- 4
								D0 <= FOUR;
								D1 <= ZERO;
							when "0101" =>		-- 5
								D0 <= FIVE;
								D1 <= ZERO;
							when "0110" =>		-- 6
								D0 <= SIX;
								D1 <= ZERO;
							when "0111" =>		-- 7
								D0 <= SEVEN;
								D1 <= ZERO;
							when "1000" =>		-- 8
								D0 <= EIGHT;
								D1 <= ZERO;
							when "1001" =>		-- 9
								D0 <= NINE;
								D1 <= ZERO;
							when "1010" =>		-- 10
								D0 <= ZERO;
								D1 <= ONE;
							when "1011" =>		-- 11
								D0 <= ONE;
								D1 <= ONE;
							when "1100" =>		-- 12
								D0 <= TWO;
								D1 <= ONE;
							when "1101" =>		-- 13
								D0 <= THREE;
								D1 <= ONE;
							when "1110" =>		-- 14
								D0 <= FOUR;
								D1 <= ONE;
							when "1111" =>		-- 15
								D0 <= FIVE;
								D1 <= ONE;
							when others =>
								D0 <= ERROR;
								D1 <= ERROR;
						end case;
					when '1'=>
						case Sin is
							when "0000" =>		-- 16
								D0 <= SIX;
								D1 <= ONE;
							when "0001" =>		-- 17
								D0 <= SEVEN;
								D1 <= ONE;
							when "0010" =>		-- 18
								D0 <= EIGHT;
								D1 <= ONE;
							when "0011" =>		-- 19
								D0 <= NINE;
								D1 <= ONE;
							when "0100" =>		-- 20
								D0 <= ZERO;
								D1 <= TWO;
							when "0101" =>		-- 21
								D0 <= ONE;
								D1 <= TWO;
							when "0110" =>		-- 22
								D0 <= TWO;
								D1 <= TWO;
							when "0111" =>		-- 23
								D0 <= THREE;
								D1 <= TWO;
							when "1000" =>		-- 24
								D0 <= FOUR;
								D1 <= TWO;
							when "1001" =>		-- 25
								D0 <= FIVE;
								D1 <= TWO;
							when "1010" =>		-- 26
								D0 <= SIX;
								D1 <= TWO;
							when "1011" =>		-- 27
								D0 <= SEVEN;
								D1 <= TWO;
							when "1100" =>		-- 28
								D0 <= EIGHT;
								D1 <= TWO;
							when "1101" =>		-- 29
								D0 <= NINE;
								D1 <= TWO;
							when "1110" =>		-- 30
								D0 <= ZERO;
								D1 <= THREE;
							when "1111" =>		-- 31
								D0 <= ONE;
								D1 <= THREE;
							when others =>
								D0 <= ERROR;
								D1 <= ERROR;
						end case;
					when others =>
						D0 <= ERROR;
						D1 <= ERROR;
					end case;
		end process;
	end behavioural;