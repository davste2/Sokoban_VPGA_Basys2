----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:31 03/16/2017 
-- Design Name: 
-- Module Name:    farb_tackt - Behavioral 
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

entity farb_tackt is
    Port ( p_Tick : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           farben : in  STD_LOGIC_VECTOR (7 downto 0);
           rgb : out  STD_LOGIC_VECTOR (7 downto 0));
end farb_tackt;

architecture Behavioral of farb_tackt is

begin



process (CLK)
 begin
   if (CLK'event and CLK='1') then
      if (p_Tick='1') then
         rgb <= farben;
      end if;
   end if;
end process;


end Behavioral;

