----------------------------------------------------------------------------------
-- Company: University of Moratuwa
-- Engineer: Dulina Perera
-- 
-- Create Date: 08.04.2023 14:32:29
-- Design Name: 3-bit Counter
-- Module Name: Counter - Behavioral
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

entity Counter is
    port ( 
        Dir, Res, Clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(2 downto 0) := "000"
        );
end Counter;

architecture Behavioral of Counter is
    component D_FF
        port (
            D : in STD_LOGIC;
            Res: in STD_LOGIC;
            Clk : in STD_LOGIC;
            Q : out STD_LOGIC;
            Qbar : out STD_LOGIC
        );
    end component;

    component Slow_Clk
        port (
            Clk_in : in STD_LOGIC;
            Clk_out: out STD_LOGIC
        );
    end component;
    
    signal D0, D1, D2: STD_LOGIC;
    signal Q0, Q1, Q2 : STD_LOGIC;
    signal Clk_slow : STD_LOGIC; 

    begin
        Slow_Clk0 : Slow_Clk
            port map (
                Clk_in => Clk,
                Clk_out => Clk_slow
            );
        
        D0 <= (Q1 AND Dir) OR ((NOT Q2) AND (NOT Dir));
        D1 <= (Q2 AND Dir) OR (Q0 AND (NOT Dir));
        D2 <= ((NOT Q0) AND Dir) OR (Q1 AND (NOT Dir));

        D_FF0 : D_FF
            port map (
                D => D0,
                Res => Res,
                Clk => Clk_slow,
                Q => Q0,
                Qbar => open
            );
        D_FF1 : D_FF
            port map (
                D => D1,
                Res => Res,
                Clk => Clk_slow,
                Q => Q1,
                Qbar => open
            );
        D_FF2 : D_FF
            port map (
                D => D2,
                Res => Res,
                Clk => Clk_slow,
                Q => Q2,
                Qbar => open
            ); 
        
        Q <= Q2 & Q1 & Q0; -- Concatenate 'Q2', 'Q1', 'Q0' to form 'Q'.
end Behavioral;
