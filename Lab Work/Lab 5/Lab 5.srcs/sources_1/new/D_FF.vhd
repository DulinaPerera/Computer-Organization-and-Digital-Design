----------------------------------------------------------------------------------
-- Company: University of Moratuwa 
-- Engineer: Dulina Perera
-- 
-- Create Date: 01.04.2023 09:00:16
-- Design Name: D Flip-Flop
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    port ( 
        D, Res, Clk : in STD_LOGIC;
        Q : out STD_LOGIC := '0';
        Qbar : out STD_LOGIC := '1'
        );
end D_FF;

architecture behavioral of D_FF is begin
    process (Clk) begin       
        if (rising_edge(Clk)) then
            if (Res = '1') then
                Q <= '0';
                Qbar <= '1';
            else
                Q <= D;
                Qbar <= NOT D;
            end if;
        end if;
    end process;
end behavioral;
