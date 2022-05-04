----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 07:43:39 PM
-- Design Name: 
-- Module Name: RegsiterFile - Behavioral
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

entity RegisterFile is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RW : in STD_LOGIC;
           DA, AA, BA : in STD_LOGIC_VECTOR (3 downto 0);
           D_Data : in STD_LOGIC_VECTOR (7 downto 0);
           A_Data, B_Data : out STD_LOGIC_VECTOR (7 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

    component DestinationDecoder is
        Port ( D_Address : in STD_LOGIC_VECTOR (3 downto 0);
               WRITE : in STD_LOGIC;
               LOAD : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    component RegisterR16 is
        Port ( CLK : in STD_LOGIC;
               RST : in STD_LOGIC;
               LOAD : in STD_LOGIC_VECTOR (15 downto 0);
               D_Data : in STD_LOGIC_VECTOR (7 downto 0);
               R0, R1, R2, R3, R4, R5, R6, R7 : out STD_LOGIC_VECTOR (7 downto 0);
               R8, R9, R10, R11, R12, R13, R14, R15 : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component MUX16x1x8 is
        Port ( R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
               R8, R9, R10, R11, R12, R13, R14, R15 : in STD_LOGIC_VECTOR (7 downto 0);
               D_Select : in STD_LOGIC_VECTOR (3 downto 0);
               Y_Data : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal LOAD_int: STD_LOGIC_VECTOR(15 downto 0);
    signal R0_int, R1_int, R2_int, R3_int, R4_int, R5_int, R6_int, R7_int: STD_LOGIC_VECTOR(7 downto 0);
    signal R8_int, R9_int, R10_int, R11_int, R12_int, R13_int, R14_int, R15_int: STD_LOGIC_VECTOR(7 downto 0);

begin

    U0: DestinationDecoder port map (D_Address => DA, WRITE => RW, LOAD => LOAD_int);
    U1: RegisterR16 port map (CLK => CLK, RST => RESET, LOAD => LOAD_int, D_Data => D_Data, 
        R0 => R0_int, R1 => R1_int, R2 => R2_int, R3 => R3_int, R4 => R4_int, R5 => R5_int, R6 => R6_int, R7 => R7_int,
        R8 => R8_int, R9 => R9_int, R10 => R10_int, R11 => R11_int, R12 => R12_int, R13 => R13_int, R14 => R14_int, R15 => R15_int);
    U2: MUX16x1x8 port map (D_Select => AA, Y_Data => A_Data,
        R0 => R0_int, R1 => R1_int, R2 => R2_int, R3 => R3_int, R4 => R4_int, R5 => R5_int, R6 => R6_int, R7 => R7_int,
        R8 => R9_int, R9 => R9_int, R10 => R10_int, R11 => R11_int, R12 => R12_int, R13 => R13_int, R14 => R14_int, R15 => R15_int);
    U3: MUX16x1x8 port map (D_Select => BA, Y_Data => B_Data,
        R0 => R0_int, R1 => R1_int, R2 => R2_int, R3 => R3_int, R4 => R4_int, R5 => R5_int, R6 => R6_int, R7 => R7_int,
        R8 => R8_int, R9 => R9_int, R10 => R10_int, R11 => R11_int, R12 => R12_int, R13 => R13_int, R14 => R14_int, R15 => R15_int);

end Behavioral;
