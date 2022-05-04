----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 03:05:15 PM
-- Design Name: 
-- Module Name: 8bit_Register - Behavioral
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

entity Register_8bit is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           D_Data : in STD_LOGIC_VECTOR (7 downto 0);
           R : out STD_LOGIC_VECTOR (7 downto 0));
end Register_8bit;

architecture Behavioral of Register_8bit is

    component D_ff_arst is
        Port ( D : in STD_LOGIC;
               CLK : in STD_LOGIC;
               Rst : in STD_LOGIC;
               Load : in STD_LOGIC;
               Q : out STD_LOGIC;
               Q_not : out STD_LOGIC);
   end component;

begin

    gen: for i in 0 to 7 generate
        U0: D_ff_arst port map(CLK => CLK, RST => RST, LOAD => LOAD, D => D_Data(i), Q => R(i));
    end generate;

end Behavioral;
