-- Signalerzeugung für VGA-Monitor
-- alle 256 Farben als 16*16 Rechtecke ausgeben
-- Topmodul für VGA_SYNC und FARBEN

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA256_BASYS2 is
    Port ( RESET,CLK : in  std_logic;
           HSYNC : out  std_logic;
           VSYNC : out  std_logic;
           RGB   : out  std_logic_vector (7 downto 0));
end VGA256_BASYS2;

architecture Behavioral of VGA256_BASYS2 is


signal VIDEO_ON,PIXEL_TICK: std_logic;
signal RGB_REG,RGB_NEXT: std_logic_vector(7 downto 0);
signal PIXEL_X,PIXEL_Y : std_logic_vector (9 downto 0);  
begin

		VGA_UNIT: entity WORK.VGA_SYNC
      port map( CLK=>CLK, RESET=>RESET, 
		          VIDEO_ON=>VIDEO_ON,P_TICK=>PIXEL_TICK,		
					 HSYNC=>HSYNC,VSYNC=>VSYNC,
					 PIXEL_X=>PIXEL_X, PIXEL_Y=>PIXEL_Y);

   FARBEN_UNIT: entity WORK.FARBEN
      port map (VIDEO_ON=>VIDEO_ON,PIXEL_X=>PIXEL_X, PIXEL_Y=>PIXEL_Y,
                FARBE=>RGB_NEXT);


process (CLK)
 begin
   if (CLK'event and CLK='1') then
      if (PIXEL_TICK='1') then
         RGB_REG <= RGB_NEXT;
      end if;
   end if;
end process;

RGB<=RGB_REG;

end Behavioral;

