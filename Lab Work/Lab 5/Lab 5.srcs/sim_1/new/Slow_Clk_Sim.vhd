----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 08.04.2023 12:23:56
-- Design Name: Slowed-down Clock(Simulation)
-- Module Name: Slow_Clk_Sim - Behavioral
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

entity Slow_Clk_Sim is
--  port ( );
end Slow_Clk_Sim;

architecture Behavioral of Slow_Clk_Sim is
	component Slow_Clk
        port (
			Clk_in : in STD_LOGIC;
			Clk_out : out STD_LOGIC
        );
    end component;
	
    signal Clk_in: STD_LOGIC;
    signal Clk_out : STD_LOGIC;

	begin
		UUT: Slow_Clk port map(
				Clk_in => Clk_in,
				Clk_out => Clk_out
            );
        
    process begin
        for i in 0 to 49 loop
            Clk_in <= '1';
            wait for 10 ns;
            
            Clk_in <= '0';
            wait for 10 ns;
        end loop;
        wait;
    end process;
end Behavioral;
