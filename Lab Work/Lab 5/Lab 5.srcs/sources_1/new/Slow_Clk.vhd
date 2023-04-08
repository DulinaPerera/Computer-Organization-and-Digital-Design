----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 08.04.2023 12:08:10
-- Design Name: Slowed-down Clock
-- Module Name: Slow_Clk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Slow_Clk is
    port ( 
        Clk_in : in STD_LOGIC;
        Clk_out : out STD_LOGIC := '0'
        );
end Slow_Clk;

architecture Behavioral of Slow_Clk is
    signal Count : integer := 1;
    signal Clk_status : STD_LOGIC := '0';

begin
    -- Generate a 1 Hz clock from 100 MHz input clock.
    process(Clk_in) begin
        -- Count the number of rising edges.
        if (rising_edge(Clk_in)) then
            Count <= Count + 1;
            -- If 'Count' exceeds 50 million then invert 'Clk_status'.
            if (Count = 5) then
                Clk_out <= NOT Clk_status;
                Clk_status <= NOT Clk_status;
                Count <= 1; -- reset counter
            end if;
        end if;
    end process;

end Behavioral;
