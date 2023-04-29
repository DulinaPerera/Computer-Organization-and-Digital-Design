----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 25.04.2023 07:30:06
-- Design Name: 4-Bit Storage Register
-- Module Name: StorageRegister - Behavioral
-- Project Name: Arithmetic Unit 
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

entity StorageRegister is
    Port ( 
        inputWord : in STD_LOGIC_VECTOR (3 downto 0);
        enableSignal : in STD_LOGIC;
        clockSignal : in STD_LOGIC;
        storedWord : out STD_LOGIC_VECTOR (3 downto 0)
    );
end StorageRegister;

architecture Behavioral of StorageRegister is begin
    process (clockSignal) begin
        if (rising_edge(clockSignal)) then
            if enableSignal = '1' then
                storedWord <= inputWord;
            end if;
        end if;
    end process;    
end Behavioral;
