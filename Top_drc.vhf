--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_drc.vhf
-- /___/   /\     Timestamp : 03/16/2017 23:12:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Top_drc.vhf -w C:/Users/David/Sokoban_version1/Top.sch
--Design Name: Top
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top is
   port ( Data     : in    std_logic; 
          mclk     : in    std_logic; 
          Reset    : in    std_logic; 
          buttons  : out   std_logic_vector (7 downto 0); 
          Clk_cont : out   std_logic; 
          HSYNC    : out   std_logic; 
          Latch    : out   std_logic; 
          RGB      : out   std_logic_vector (7 downto 0); 
          VSYNC    : out   std_logic);
end Top;

architecture BEHAVIORAL of Top is
   signal XLXN_7   : std_logic;
   signal XLXN_24  : std_logic_vector (9 downto 0);
   signal XLXN_25  : std_logic_vector (9 downto 0);
   signal XLXN_26  : std_logic;
   signal XLXN_31  : std_logic_vector (7 downto 0);
   signal XLXN_32  : std_logic;
   component Eingabe
      port ( readclk : in    std_logic; 
             Data    : in    std_logic; 
             Clk     : out   std_logic; 
             Latch   : out   std_logic; 
             buttons : out   std_logic_vector (7 downto 0); 
             leds    : out   std_logic_vector (7 downto 0));
   end component;
   
   component FARBEN
      port ( VIDEO_ON : in    std_logic; 
             PIXEL_X  : in    std_logic_vector (9 downto 0); 
             PIXEL_Y  : in    std_logic_vector (9 downto 0); 
             FARBE    : out   std_logic_vector (7 downto 0));
   end component;
   
   component farb_tackt
      port ( p_Tick : in    std_logic; 
             CLK    : in    std_logic; 
             farben : in    std_logic_vector (7 downto 0); 
             rgb    : out   std_logic_vector (7 downto 0));
   end component;
   
   component Taktteiler
      port ( mclk : in    std_logic; 
             led  : out   std_logic);
   end component;
   
   component VGA_SYNC
      port ( CLK      : in    std_logic; 
             RESET    : in    std_logic; 
             HSYNC    : out   std_logic; 
             VSYNC    : out   std_logic; 
             VIDEO_ON : out   std_logic; 
             P_TICK   : out   std_logic; 
             PIXEL_X  : out   std_logic_vector (9 downto 0); 
             PIXEL_Y  : out   std_logic_vector (9 downto 0));
   end component;
   
begin
   Eingabe1 : Eingabe
      port map (Data=>Data,
                readclk=>XLXN_7,
                buttons=>open,
                Clk=>Clk_cont,
                Latch=>Latch,
                leds(7 downto 0)=>buttons(7 downto 0));
   
   Farben1 : FARBEN
      port map (PIXEL_X(9 downto 0)=>XLXN_25(9 downto 0),
                PIXEL_Y(9 downto 0)=>XLXN_24(9 downto 0),
                VIDEO_ON=>XLXN_26,
                FARBE(7 downto 0)=>XLXN_31(7 downto 0));
   
   farb_tackt1 : farb_tackt
      port map (CLK=>mclk,
                farben(7 downto 0)=>XLXN_31(7 downto 0),
                p_Tick=>XLXN_32,
                rgb(7 downto 0)=>RGB(7 downto 0));
   
   Taktteiler1 : Taktteiler
      port map (mclk=>mclk,
                led=>XLXN_7);
   
   VGA_SYNC1 : VGA_SYNC
      port map (CLK=>mclk,
                RESET=>Reset,
                HSYNC=>HSYNC,
                PIXEL_X(9 downto 0)=>XLXN_25(9 downto 0),
                PIXEL_Y(9 downto 0)=>XLXN_24(9 downto 0),
                P_TICK=>XLXN_32,
                VIDEO_ON=>XLXN_26,
                VSYNC=>VSYNC);
   
end BEHAVIORAL;


