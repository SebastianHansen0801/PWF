----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2022 11:51:31 AM
-- Design Name: 
-- Module Name: Datapath - Behavioral
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

entity Datapath is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RW : in STD_LOGIC;
           DA, AA, BA : in STD_LOGIC_VECTOR (3 downto 0);
           Constant_In : in STD_LOGIC_VECTOR (7 downto 0);
           MB : in STD_LOGIC;
           FS3, FS2, FS1, FS0 : in STD_LOGIC;
           Data_In : in STD_LOGIC_VECTOR(7 downto 0);
           MD : in STD_LOGIC;
           Address_Out : out STD_LOGIC_VECTOR (7 downto 0);
           Data_Out : out STD_LOGIC_VECTOR (7 downto 0);
           V, C, N, Z : out STD_LOGIC);
end Datapath;

architecture Behavioral of Datapath is

    component RegisterFile is
        Port ( RESET : in STD_LOGIC;
               CLK : in STD_LOGIC;
               RW : in STD_LOGIC;
               DA, AA, BA : in STD_LOGIC_VECTOR (3 downto 0);
               D_Data : in STD_LOGIC_VECTOR (7 downto 0);
               A_Data, B_Data : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component function_unit is
        generic (width:integer :=7);
        Port ( Adata,Bdata : in STD_LOGIC_VECTOR(width downto 0);
               Fs: in STD_LOGIC_VECTOR(3 downto 0);
               V,C,N,Z : out STD_LOGIC;
               F: out STD_LOGIC_VECTOR(width downto 0));
    end component;
    
    component MUX2x1x8 is 
        generic (width:integer :=7);
        Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
               I1 : in STD_LOGIC_VECTOR (width downto 0);
               Sx : in STD_LOGIC;
               Jx : out STD_LOGIC_VECTOR (width downto 0));
    end component;

    signal muxb_in1, muxb_in2, muxd_in1, muxd_in2, muxb_out, muxd_out, Adata_int: STD_LOGIC_VECTOR(7 downto 0);

begin

    RF: RegisterFile port map (RESET => RESET, CLK => CLK, RW => RW, DA => DA, AA => AA, BA => BA, D_Data => muxd_out, A_Data => Adata_int, B_Data => muxb_in1);
    FU: function_unit port map (Adata => Adata_int, Bdata => muxb_out, Fs(0) => FS0, Fs(1) => FS1,Fs(2) => FS2, Fs(3) => FS3, V => V, C => C, N => N, Z => Z, F => muxd_in1); 
    MUXB: MUX2x1x8 port map (I0 => muxb_in1, I1 => Constant_In, Sx => MB, Jx => muxb_out);
    MUXD: MUX2x1x8 port map (I0 => muxd_in1, I1 => Data_In, Sx => MD, Jx => muxd_out);
    
    Address_Out <= Adata_int;
    Data_Out <= muxb_out;

end Behavioral;
