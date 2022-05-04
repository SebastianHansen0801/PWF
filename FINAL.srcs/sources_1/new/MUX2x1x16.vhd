----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2022 04:24:56 PM
-- Design Name: 
-- Module Name: MUX2x1x16 - Behavioral
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

entity MUX2x1x16 is
generic (width:integer :=15);
    Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
           I1 : in STD_LOGIC_VECTOR (width downto 0);
           Sx : in STD_LOGIC;
           Jx : out STD_LOGIC_VECTOR (width downto 0));
end MUX2x1x16;

architecture Behavioral of MUX2x1x16 is

begin

with Sx select
Jx <= I0 when '0',
      I1 when '1',
      x"0000" when others;

end Behavioral;
