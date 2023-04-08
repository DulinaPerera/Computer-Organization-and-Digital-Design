----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 01.04.2023 09:04:53
-- Design Name: D Flip-Flop(Simulation)
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  port ( );
end D_FF_Sim;

architecture behavioral of D_FF_Sim is
    component D_FF
        port (
            D, Res, Clk : in STD_LOGIC;
            Q, Qbar : out STD_LOGIC
        );
    end component;
    
    signal D, Res, Clk : STD_LOGIC; -- Initialize inputs
    signal Q, Qbar: STD_LOGIC;
    
    begin
        UUT: D_FF port map(
            D => D,
            Res => Res,
            Clk => Clk,
            Q => Q,
            Qbar => Qbar
        );
     
    -- Clock generator process
    process begin
        D <= '1';
        Res <= '1';
        Clk <= '0';
    wait for 100ns;
        Clk <= '1';
    wait for 100ns;
        Clk <= '0';       
        Res <= '0';
    wait for 100ns;
        Clk <= '1';
    wait for 100ns;
        Clk <= '0';
        D <= '0';
        Res <= '1';
    wait for 100ns;
        Clk <= '1'; 
    wait for 100ns;
        Clk <= '0';
        Res <= '0';
    wait for 100ns;
        Clk <= '1';   
    wait;    
    end process;

end behavioral;
