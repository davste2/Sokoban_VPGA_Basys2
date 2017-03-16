----------------------------------------------------------------------------------
-- 256 Farben für Basys2-Board
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity FARBEN is
    port ( VIDEO_ON: in  std_logic;
	        PIXEL_X : in  std_logic_vector(9 downto 0);
           PIXEL_Y : in  std_logic_vector(9 downto 0);
			  Array_in: in  std_logic_vector(7 downto 0);
           FARBE :   out std_logic_vector(7 downto 0));
			  
end FARBEN;

architecture Behavioral of FARBEN is

signal FARB_WERT: std_logic_vector(7 downto 0);
begin
FARB_WERT <= Array_in;
------
--FARB_WERT(7 downto 4)<= "0000" when (unsigned (PIXEL_X) < 1*640/16) else
--"0001" when (unsigned (PIXEL_X) < 2*640/16) else
--"0010" when (unsigned (PIXEL_X) < 3*640/16) else
--"0011" when (unsigned (PIXEL_X) < 4*640/16) else
--"0100" when (unsigned (PIXEL_X) < 5*640/16) else
--"0101" when (unsigned (PIXEL_X) < 6*640/16) else
--"0110" when (unsigned (PIXEL_X) < 7*640/16) else
--"0111" when (unsigned (PIXEL_X) < 8*640/16) else
--"1000" when (unsigned (PIXEL_X) < 9*640/16) else
--"1001" when (unsigned (PIXEL_X) < 10*640/16) else
--"1010" when (unsigned (PIXEL_X) < 11*640/16) else
--"1011" when (unsigned (PIXEL_X) < 12*640/16) else
--"1100" when (unsigned (PIXEL_X) < 13*640/16) else
--"1101" when (unsigned (PIXEL_X) < 14*640/16) else
--"1110" when (unsigned (PIXEL_X) < 15*640/16) else
--"1111" ;
--
--FARB_WERT(3 downto 0)<= "0000" when (unsigned (PIXEL_Y) < 1*480/16) else
--"0001" when (unsigned (PIXEL_Y) < 2*480/16) else
--"0010" when (unsigned (PIXEL_Y) < 3*480/16) else
--"0011" when (unsigned (PIXEL_Y) < 4*480/16) else
--"0100" when (unsigned (PIXEL_Y) < 5*480/16) else
--"0101" when (unsigned (PIXEL_Y) < 6*480/16) else
--"0110" when (unsigned (PIXEL_Y) < 7*480/16) else
--"0111" when (unsigned (PIXEL_Y) < 8*480/16) else
--"1000" when (unsigned (PIXEL_Y) < 9*480/16) else
--"1001" when (unsigned (PIXEL_Y) < 10*480/16) else
--"1010" when (unsigned (PIXEL_Y) < 11*480/16) else
--"1011" when (unsigned (PIXEL_Y) < 12*480/16) else
--"1100" when (unsigned (PIXEL_Y) < 13*480/16) else
--"1101" when (unsigned (PIXEL_Y) < 14*480/16) else
--"1110" when (unsigned (PIXEL_Y) < 15*480/16) else
--"1111";
								
 process(VIDEO_ON,FARB_WERT)
   begin
      if VIDEO_ON='0' then
          FARBE <=(others=>'0'); --SCHWARZ
      else
          FARBE<=FARB_WERT;
      end if;
   end process;




end Behavioral;

