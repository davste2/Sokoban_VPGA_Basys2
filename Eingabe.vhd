----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:20 02/28/2017 
-- Design Name: 
-- Module Name:    Eingabe - Behavioral 
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
--library UNISIM;s
--use UNISIM.VComponents.all;

entity Eingabe is
    Port ( readclk: in STD_Logic;  -- 6us
			  Data 	: in  STD_LOGIC;
           Clk 	: out  STD_LOGIC;
           Latch 	: out  STD_LOGIC;
           buttons : out  STD_LOGIC_VECTOR (7 downto 0);
			  leds : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Eingabe;

architecture Behavioral of Eingabe is

signal data_in: STD_LOGIC_VECTOR (7 downto 0) := "11111111";
signal latch_int: STD_LOGIC := '0';
signal clk_int: STD_LOGIC := '0';
signal is_receiving: boolean := false;

shared variable button: integer range 0 to 7 := 0;

begin

process (readclk)
begin
if rising_edge(readclk) then
	if is_receiving = false and latch_int ='0' then
		latch_int <= '1';
	elsif latch_int = '1' then
		latch_int <= '0';
		is_receiving <= true;
		button := 0;
		data_in(0) <= Data;	
		end if;

	if is_receiving = true then
		clk_int <= not clk_int;
		if clk_int = '1' then
			button := button + 1;
			data_in(button) <= Data;
		end if;
		if button = 7 then  
			is_receiving <= false;
		end if;
	end if;
end if;
end process;

Clk <= clk_int;
Latch <= latch_int;
buttons <= not data_in;
leds <= not data_in;

end Behavioral;

