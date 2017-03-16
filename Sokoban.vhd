----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:40 03/06/2017 
-- Design Name: 
-- Module Name:    Sokoban - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sokoban is
    Port ( buttons : in  STD_LOGIC_VECTOR (7 downto 0);
           field : out  STD_LOGIC_VECTOR (1 downto 0));
end Sokoban;

architecture Behavioral of Sokoban is

constant A_BUTTON:		integer range 0 to 0 := 0;
constant B_BUTTON: 		integer range 1 to 1 := 1;
constant SELECT_BUTTON: integer range 2 to 2 := 2;
constant START_BUTTON: 	integer range 3 to 3 := 3;
constant UP_BUTTON: 		integer range 4 to 4 := 4;
constant DOWN_BUTTON: 	integer range 5 to 5 := 5;
constant LEFT_BUTTON: 	integer range 6 to 6 := 6;
constant RIGHT_BUTTON:	integer range 7 to 7 := 7;

begin

end Behavioral;

