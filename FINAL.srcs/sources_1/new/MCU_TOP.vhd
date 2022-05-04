----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2022 03:36:25 PM
-- Design Name: 
-- Module Name: MCU_TOP - Behavioral
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

entity MCU_TOP is
    Port ( CLK : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           BTNC, BTNR, BTND, BTNL, BTNU, RESET : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (7 downto 0);
           Anode : out STD_LOGIC_VECTOR (3 downto 0);
           Segments : out STD_LOGIC_VECTOR (6 downto 0));
end MCU_TOP;

architecture Behavioral of MCU_TOP is

    component Datapath is
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
    end component;
       
    component MicroprogramController is
        Port ( RESET : in STD_LOGIC;
               CLK : in STD_LOGIC;
               Address_In : in STD_LOGIC_VECTOR (7 downto 0);
               Address_Out : out STD_LOGIC_VECTOR (7 downto 0);
               Instruction_In : in STD_LOGIC_VECTOR (15 downto 0);
               Constant_Out : out STD_LOGIC_VECTOR (7 downto 0);
               V, C, N, Z : in STD_LOGIC;
               DX, AX, BX, FS : out STD_LOGIC_VECTOR (3 downto 0);
               MB, MD, RW, MM, MW : out STD_LOGIC);
    end component;
      
    component RAM256X16 is
        Port ( clk, RESET: in STD_LOGIC;
               Data_in: in STD_LOGIC_VECTOR(15 downto 0);
               Address_in: in STD_LOGIC_VECTOR(7 downto 0);
               MW: in STD_LOGIC;
               Data_outM: out STD_LOGIC_VECTOR(15 downto 0));         
    end component;
    
    component PortReg8x8 is 
        Port ( CLK,MW : in STD_LOGIC;
               Data_In : in STD_LOGIC_VECTOR (7 downto 0);
               Address_in : in STD_LOGIC_VECTOR (7 downto 0);
               SW : in STD_LOGIC_VECTOR (7 downto 0);
               BTNC: in STD_LOGIC; --BTN1
               BTNU: in STD_LOGIC; --BTN2
               BTNL : in STD_LOGIC; --BTN3
               BTNR : in STD_LOGIC; --BTN4
               BTND : in STD_LOGIC;--BTN5
               MMR: out STD_LOGIC;
               Data_outR : out std_logic_vector(15 downto 0);
               LED: out STD_LOGIC_VECTOR (7 downto 0);
               RESET : in STD_LOGIC;
               Anode : out STD_LOGIC_VECTOR(3 downto 0);
               segments : out STD_LOGIC_VECTOR(6 downto 0));
    end component;
    
    component MUX2x1x8 is
    generic (width:integer :=7);
        Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
               I1 : in STD_LOGIC_VECTOR (width downto 0);
               Sx : in STD_LOGIC;
               Jx : out STD_LOGIC_VECTOR (width downto 0));
    end component;
    
    component MUX2x1x16 is
    generic (width:integer :=15);
        Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
               I1 : in STD_LOGIC_VECTOR (width downto 0);
               Sx : in STD_LOGIC;
               Jx : out STD_LOGIC_VECTOR (width downto 0));
    end component;
    
    component DivClk is 
        port ( Reset: in STD_LOGIC;   -- Global Reset
               Clk: in STD_LOGIC;     -- Master Clock
               TimeP: in integer;     -- Time periode of the divided clock
               Clk1: out STD_LOGIC);  -- Divided clock1 (Freq_Clk1 = Freq_Clk / TimeP)
    end component;
    
    signal RW_sig, MB_sig, MD_sig, V_sig, C_sig, N_sig, Z_sig, MM_sig, MW_sig, MMR_sig: std_logic;
    signal DA_sig, AA_sig, BA_sig, FS_sig: std_logic_vector(3 downto 0);
    signal Constant_sig, Address_Out_MCP_sig, Address_Out_DP_sig, Data_Out_sig, Address_In_MCP_sig, Address_In_RAMPRM_sig: std_logic_vector(7 downto 0);
    signal Data_Bus_sig, Data_in_RAM_sig, Data_OutM_sig, Data_OutR_sig: std_logic_vector(15 downto 0);

    signal slow_clk: std_logic;

begin


    DP: Datapath port map ( RESET => RESET, CLK => slow_CLK, RW => RW_sig, DA => DA_sig, AA => AA_sig, BA => BA_sig,
                            Constant_In => Constant_sig, MB => MB_sig, FS0 => FS_sig(0), FS1 => FS_sig(1), FS2 => FS_sig(2), FS3 => FS_sig(3),
                            Data_In => Data_Bus_sig(7 downto 0), MD => MD_sig, Address_Out => Address_Out_DP_sig, Data_Out => Data_Out_sig, 
                            V => V_sig, C =>C_sig, N => N_sig, Z => Z_sig);
                   
    MCP: MicroprogramController port  map ( RESET => RESET, CLK => slow_CLK, Address_In => Address_In_MCP_sig, Address_out => Address_Out_MCP_sig, 
                                            Instruction_In => data_Bus_sig, Constant_Out => Constant_sig, V => V_sig, C => C_sig, N => N_sig, Z => Z_sig, 
                                            DX => DA_sig, AX => AA_sig, BX => BA_sig, FS => FS_sig, 
                                            MB => MB_sig, MD => MD_sig, RW => RW_sig, MM => MM_sig, MW => MW_sig);
                                            
    RAM: RAM256X16 port map ( RESET => RESET, CLK => CLK, Data_In => Data_In_RAM_sig, Address_In => Address_In_RAMPRM_sig, MW => MW_sig, Data_OutM => Data_OutM_sig);
    
    PRM: PortReg8x8 port map ( RESET => RESET, CLK => CLK, MW => MW_sig, Data_In => Data_Out_sig, Address_In => Address_In_RAMPRM_sig, SW => SW, 
                               BTNC => BTNC, BTNU => BTNU, BTNL => BTNL, BTNR => BTNR, BTND => BTND, MMR => MMR_sig, Data_OutR => Data_OutR_sig, LED => LED,
                               Anode => Anode, Segments => Segments);
    
    MUXM: MUX2x1x8 port map ( I0 => Address_Out_DP_sig, I1 => Address_Out_MCP_sig, Jx => Address_In_RAMPRM_sig, Sx => MM_sig);
    
    MUXMR : MUX2x1x16 port map ( I0 => Data_OutM_sig, I1 => Data_OutR_sig, Jx => Data_Bus_sig, Sx => MMR_sig);
    
    ZF2: Data_In_RAM_sig <= x"00" & Data_Out_sig;
    
    SClk: DivClk port map ( Reset => Reset, Clk => CLK, TimeP => 4, Clk1 => slow_clk);
    

end Behavioral;
