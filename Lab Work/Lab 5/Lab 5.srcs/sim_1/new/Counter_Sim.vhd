----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 08.04.2023 16:51:32
-- Design Name: Counter(Simulation)
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
    component Counter
        port (
            Dir, Res, Clk : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    signal Dir, Res, Clk : STD_LOGIC;
    signal Q : STD_LOGIC_VECTOR(2 downto 0);
    
    begin
        UUT: Counter port map(
				Dir => Dir,
				Res => Res,
				Clk => Clk,
				Q => Q
            );

    
    process begin
        Res <= '0';
        
        Dir <= '0';
        for i in 0 to 5 loop    
            for i in 0 to 9 loop
                Clk <= '1';
                wait for 5 ns;
            
                Clk <= '0';
                wait for 5 ns;
            end loop;
        end loop;
        
        Dir <= '1';
        for i in 0 to 5 loop
            for i in 0 to 9 loop
                Clk <= '1';
                wait for 5 ns;
            
                Clk <= '0';
                wait for 5 ns;
            end loop;
        end loop;
        wait;
    end process;
end Behavioral;
