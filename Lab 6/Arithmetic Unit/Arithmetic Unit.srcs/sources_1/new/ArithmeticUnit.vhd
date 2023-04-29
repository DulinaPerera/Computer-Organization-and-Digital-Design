----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 25.04.2023 10:43:05
-- Design Name: Arithmetic Unit
-- Module Name: ArithmeticUnit - Behavioral
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

entity ArithmeticUnit is
    Port ( 
        inputWord : in STD_LOGIC_VECTOR (3 downto 0); -- Binary word to be stored in a register
        registerSelect : in STD_LOGIC; -- Selector input to choose a register to store the binary word
        clockSignal : in STD_LOGIC; -- Clock signal
        sum : out STD_LOGIC_VECTOR (3 downto 0); -- Result from the arithmetic unit
        zeroFlag : out STD_LOGIC; -- "Is the result zero?"
        carryFlag : out STD_LOGIC -- "Is there a carry bit?"
    );
end ArithmeticUnit;

architecture Behavioral of ArithmeticUnit is
    component RCA
        Port ( 
            firstWord, secondWord : in STD_LOGIC_VECTOR (3 downto 0);
            carryIn : in STD_LOGIC;
            sum : out STD_LOGIC_VECTOR (3 downto 0);
            carryOut : out STD_LOGIC
        );
    end component;
    
    component Slow_Clk
        Port ( 
            Clk_in : in STD_LOGIC;
            Clk_out : out STD_LOGIC := '0'
        );
    end component;
    
    component StorageRegister
        Port ( 
            inputWord : in STD_LOGIC_VECTOR (3 downto 0);
            enableSignal : in STD_LOGIC;
            clockSignal : in STD_LOGIC;
            storedWord : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;
    
    signal RegisterA_out, RegisterB_out, sum_out : STD_LOGIC_VECTOR (3 downto 0);
    signal enableA, Clk_out, carry_out : STD_LOGIC;
begin
    enableA <= NOT registerSelect;

    Clock : Slow_Clk
        port map (
            Clk_in => clockSignal,
            Clk_out => Clk_out
        );

    RegisterA : StorageRegister
        port map (
            inputWord => inputWord,
            enableSignal => enableA,
            clockSignal => Clk_out,
            storedWord => RegisterA_out
        );
        
    RegisterB : StorageRegister
        port map (
            inputword => inputWord,
            enableSignal => registerSelect,
            clockSignal => Clk_out,
            storedWord => RegisterB_out
        );
        
    Adder : RCA
        port map (
            firstWord => RegisterA_out,
            secondWord => RegisterB_out,
            carryIn => '0',
            sum => sum_out,
            carryOut => carry_out
        );
    
    process (sum_out) begin
        if sum_out = "0000" then
            zeroFlag <= '1';
        else
            zeroFlag <= '0';
        end if;
    end process;
    
    sum <= Sum_out;
    carryFlag <= carry_out;
end Behavioral;