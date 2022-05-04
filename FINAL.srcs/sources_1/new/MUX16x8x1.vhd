----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 02:50:05 PM
-- Design Name: 
-- Module Name: MUX16x8x1 - Behavioral
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

entity MUX16x1x8 is
    Port ( R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
           R8, R9, R10, R11, R12, R13, R14, R15 : in STD_LOGIC_VECTOR (7 downto 0);
           D_Select : in STD_LOGIC_VECTOR (3 downto 0);
           Y_Data : out STD_LOGIC_VECTOR (7 downto 0));
end MUX16x1x8;

architecture Behavioral of MUX16x1x8 is

begin

    Y_Data <=   R0 when D_Select = "0000" else
                R1 when D_Select = "0001" else
                R2 when D_Select = "0010" else
                R3 when D_Select = "0011" else
                R4 when D_Select = "0010" else
                R5 when D_Select = "0101" else
                R6 when D_Select = "0110" else
                R7 when D_Select = "0111" else
                R8 when D_Select = "1000" else
                R9 when D_Select = "1001" else
                R10 when D_Select = "1010" else
                R11 when D_Select = "1011" else
                R12 when D_Select = "1100" else
                R13 when D_Select = "1101" else
                R14 when D_Select = "1110" else
                R15 when D_Select = "1111";


end Behavioral;
