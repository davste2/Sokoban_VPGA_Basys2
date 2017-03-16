----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:09:53 11/24/2016 
-- Design Name: 
-- Module Name:    Taktteiler - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Taktteiler is
generic (Teiler: integer :=149); -- 24999999 ist periode von 1s  //  149 von 6us
    Port ( mclk : in  STD_LOGIC;
           led : out  STD_LOGIC);
end Taktteiler;

architecture Behavioral of Taktteiler is
signal counter: integer:=0;
signal led_int: STD_LOGIC:='0';

begin

process(mclk)
begin
if mclk'event and mclk ='1' then 
	counter<=counter+1;
	if counter = teiler then
		counter<=0;
		if led_int='0' then
			led_int <= '1';
		else led_int<='0';
		end if;
	end if;
end if;
end process;

led<=led_int;

end Behavioral;

