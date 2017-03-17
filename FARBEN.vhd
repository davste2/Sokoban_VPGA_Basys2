----------------------------------------------------------------------------------
-- 256 Farben für Basys2-Board
----------------------------------------------------------------------------------

--library mylib;

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use work.mytypes.all;

entity FARBEN is
    port ( --Array_in: in  Array_Feld ;
			  VIDEO_ON: in  std_logic;
			  buttons : in  std_logic_vector(7 downto 0);
	        PIXEL_X : in  std_logic_vector(9 downto 0);
           PIXEL_Y : in  std_logic_vector(9 downto 0);
           FARBE :   out std_logic_vector(7 downto 0));			  
end FARBEN;

architecture Behavioral of FARBEN is

signal Array_in: Array_Feld;
signal X_FELD: integer range 0 to 31 := 0;
signal Y_FELD: integer range 0 to 23 := 0;

begin

Array_in <= 
(
(1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5),--Spalte 0
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,1),--Spalte 1
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 2
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 3
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 4
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 1
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 6
(1,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 7
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 8
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 9
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 10
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 11
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,1),--Spalte 12
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 13
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,1),--Spalte 14
(1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 11
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 16
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 17
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 18
(1,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,1),--Spalte 19
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 20
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 21
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 22
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 23
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 24
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 25
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 26
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 27
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 28
(1,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 29
(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),--Spalte 30
(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)--Spalte 31
);


X_FELD<= 
0 when (unsigned (PIXEL_X) < 1*640/32) else
1 when (unsigned (PIXEL_X) < 2*640/32) else
2 when (unsigned (PIXEL_X) < 3*640/32) else
3 when (unsigned (PIXEL_X) < 4*640/32) else
4 when (unsigned (PIXEL_X) < 5*640/32) else
5 when (unsigned (PIXEL_X) < 6*640/32) else
6 when (unsigned (PIXEL_X) < 7*640/32) else
7 when (unsigned (PIXEL_X) < 8*640/32) else
8 when (unsigned (PIXEL_X) < 9*640/32) else
9 when (unsigned (PIXEL_X) < 10*640/32) else
10 when (unsigned (PIXEL_X) < 11*640/32) else
11 when (unsigned (PIXEL_X) < 12*640/32) else
12 when (unsigned (PIXEL_X) < 13*640/32) else
13 when (unsigned (PIXEL_X) < 14*640/32) else
14 when (unsigned (PIXEL_X) < 15*640/32) else
15 when (unsigned (PIXEL_X) < 16*640/32) else
16 when (unsigned (PIXEL_X) < 17*640/32) else
17 when (unsigned (PIXEL_X) < 18*640/32) else
18 when (unsigned (PIXEL_X) < 19*640/32) else
19 when (unsigned (PIXEL_X) < 20*640/32) else
20 when (unsigned (PIXEL_X) < 21*640/32) else
21 when (unsigned (PIXEL_X) < 22*640/32) else
22 when (unsigned (PIXEL_X) < 23*640/32) else
23 when (unsigned (PIXEL_X) < 24*640/32) else
24 when (unsigned (PIXEL_X) < 25*640/32) else
25 when (unsigned (PIXEL_X) < 26*640/32) else
26 when (unsigned (PIXEL_X) < 27*640/32) else
27 when (unsigned (PIXEL_X) < 28*640/32) else
28 when (unsigned (PIXEL_X) < 29*640/32) else
29 when (unsigned (PIXEL_X) < 30*640/32) else
30 when (unsigned (PIXEL_X) < 31*640/32) else
31 when (unsigned (PIXEL_X) < 32*640/32) else
31;


Y_FELD<= 
0 when (unsigned (PIXEL_Y) < 1*640/24) else
1 when (unsigned (PIXEL_Y) < 2*640/24) else
2 when (unsigned (PIXEL_Y) < 3*640/24) else
3 when (unsigned (PIXEL_Y) < 4*640/24) else
4 when (unsigned (PIXEL_Y) < 5*640/24) else
5 when (unsigned (PIXEL_Y) < 6*640/24) else
6 when (unsigned (PIXEL_Y) < 7*640/24) else
7 when (unsigned (PIXEL_Y) < 8*640/24) else
8 when (unsigned (PIXEL_Y) < 9*640/24) else
9 when (unsigned (PIXEL_Y) < 10*640/24) else
10 when (unsigned (PIXEL_Y) < 11*640/24) else
11 when (unsigned (PIXEL_Y) < 12*640/24) else
12 when (unsigned (PIXEL_Y) < 13*640/24) else
13 when (unsigned (PIXEL_Y) < 14*640/24) else
14 when (unsigned (PIXEL_Y) < 15*640/24) else
15 when (unsigned (PIXEL_Y) < 16*640/24) else
16 when (unsigned (PIXEL_Y) < 17*640/24) else
17 when (unsigned (PIXEL_Y) < 18*640/24) else
18 when (unsigned (PIXEL_Y) < 19*640/24) else
19 when (unsigned (PIXEL_Y) < 20*640/24) else
20 when (unsigned (PIXEL_Y) < 21*640/24) else
21 when (unsigned (PIXEL_Y) < 22*640/24) else
22 when (unsigned (PIXEL_Y) < 23*640/24) else
23 when (unsigned (PIXEL_Y) < 24*640/24) else
23;

							
 process(VIDEO_ON,X_FELD,Y_FELD)
   begin
      if VIDEO_ON='0' then
          FARBE <=(others=>'0'); --SCHWARZ
      else
			case Array_in(X_FELD,Y_FELD) is
				when BG 		=> Farbe <= "11000111"; -- grau
				when WALL 	=> Farbe <= "00000000";	-- schwarz
				when PLAYER	=> Farbe <= "01100000"; -- grün
				when BOX		=> Farbe <= "00101100"; -- braun
				when TARGET	=> Farbe <= "11100000"; -- gelb
				when RAND	=> Farbe <= "11111111"; -- weis
				when others => Farbe <= "00010000"; -- weis
			end case;
      end if;
   end process;
end Behavioral;

