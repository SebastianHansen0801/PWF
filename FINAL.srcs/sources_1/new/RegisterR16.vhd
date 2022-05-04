----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 03:17:49 PM
-- Design Name: 
-- Module Name: RegisterR16 - Behavioral
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

entity RegisterR16 is
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           LOAD : in STD_LOGIC_VECTOR (15 downto 0);
           D_Data : in STD_LOGIC_VECTOR (7 downto 0);
           R0, R1, R2, R3, R4, R5, R6, R7 : out STD_LOGIC_VECTOR (7 downto 0);
           R8, R9, R10, R11, R12, R13, R14, R15 : out STD_LOGIC_VECTOR (7 downto 0));
end RegisterR16;

architecture Behavioral of RegisterR16 is

    component Register_8bit is
        Port ( CLK : in STD_LOGIC;
               RST : in STD_LOGIC;
               LOAD : in STD_LOGIC;
               D_Data : in STD_LOGIC_VECTOR (7 downto 0);
               R : out STD_LOGIC_VECTOR (7 downto 0));
     end component;

begin

    U0: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(0), D_Data => D_Data, R => R0);
    U1: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(1), D_Data => D_Data, R => R1);
    U2: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(2), D_Data => D_Data, R => R2);
    U3: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(3), D_Data => D_Data, R => R3);
    U4: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(4), D_Data => D_Data, R => R4);
    U5: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(5), D_Data => D_Data, R => R5);
    U6: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(6), D_Data => D_Data, R => R6);
    U7: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(7), D_Data => D_Data, R => R7);
    U8: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(8), D_Data => D_Data, R => R8);
    U9: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(9), D_Data => D_Data, R => R9);
    U10: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(10), D_Data => D_Data, R => R10);
    U11: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(11), D_Data => D_Data, R => R11);
    U12: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(12), D_Data => D_Data, R => R12);
    U13: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(13), D_Data => D_Data, R => R13);
    U14: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(14), D_Data => D_Data, R => R14);
    U15: Register_8bit port map (RST => RST, CLK => CLK, LOAD => LOAD(15), D_Data => D_Data, R => R15);
    

end Behavioral;
