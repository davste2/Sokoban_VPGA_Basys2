--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mytypes is


type Array_Feld is array (31 downto 0, 23 downto 0) of integer range 0 to 5 ;	
constant BG:		integer range 0 to 0 := 0; 	-- Hintergrund
constant WALL:   	integer range 1 to 1 := 1; 	-- Wand
constant Player: 	integer range 2 to 2 := 2; 	-- Spieler
constant BOX: 		integer range 3 to 3 := 3;		-- Kiste
constant TARGET: 	integer range 4 to 4 := 4; 	-- Ziel
constant RAND: 	integer range 5 to 5 := 5; 	-- Auserhalb
end package mytypes;


package body mytypes is
 
end mytypes;
