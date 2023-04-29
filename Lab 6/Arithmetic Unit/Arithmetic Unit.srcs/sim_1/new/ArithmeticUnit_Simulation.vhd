----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 29.04.2023 10:06:10
-- Design Name: Arithmetic Unit(Simulation)
-- Module Name: ArithmeticUnit_Simulation - Behavioral
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

entity ArithmeticUnit_Simulation is
--  Port ( );
end ArithmeticUnit_Simulation;

architecture Behavioral of ArithmeticUnit_Simulation is
    component ArithmeticUnit
        Port ( 
            inputWord : in STD_LOGIC_VECTOR (3 downto 0); 
            clockSignal, registerSelect : in STD_LOGIC;
             
            sum : out STD_LOGIC_VECTOR (3 downto 0);
            carryFlag, zeroFlag : out STD_LOGIC 
        );
    end component;
    
    signal inputWord, sum : STD_LOGIC_VECTOR (3 downto 0);
    signal registerSelect, clockSignal, zeroFlag, carryFlag : STD_LOGIC;
    begin
        UUT : ArithmeticUnit port map (
                inputWord => inputWord,
                clockSignal => clockSignal,
                registerSelect => registerSelect,
                
                sum => sum,
                carryFlag => carryFlag,
                zeroFlag => zeroFlag    
        );
    
    process begin
        registerSelect <= '0';
        inputWord <= "0000";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0000";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "0001";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0010";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "0110";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0011";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "1101";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "1100";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "1010";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0111";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "1100";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0110";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '0';
        inputWord <= "1111";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        
        registerSelect <= '1';
        inputWord <= "0101";
        for i in 0 to 9 loop
            clockSignal <= '1';
            wait for 5 ns;
            clockSignal <= '0';
            wait for 5 ns;
        end loop;
        wait;    
    end process;
end Behavioral;
