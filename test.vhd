-- Vhdl test bench created from schematic C:\Users\David\Sokoban_version1\Top.sch - Fri Mar 03 17:06:07 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Top_Top_sch_tb IS
END Top_Top_sch_tb;
ARCHITECTURE behavioral OF Top_Top_sch_tb IS 

   COMPONENT Top
   PORT( mclk	:	IN	STD_LOGIC; 
          Data	:	IN	STD_LOGIC; 
          Clk	:	OUT	STD_LOGIC; 
          Latch	:	OUT	STD_LOGIC; 
          buttons	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL mclk	:	STD_LOGIC;
   SIGNAL Data	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Latch	:	STD_LOGIC;
   SIGNAL buttons	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: Top PORT MAP(
		mclk => mclk, 
		Data => Data, 
		Clk => Clk, 
		Latch => Latch, 
		buttons => buttons
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
