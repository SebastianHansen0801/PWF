
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity function_unit is
generic (width:integer :=7);
  Port ( Adata,Bdata : in STD_LOGIC_VECTOR(width downto 0);
         Fs: in STD_LOGIC_VECTOR(3 downto 0);
         V,C,N,Z : out STD_LOGIC;
         F: out STD_LOGIC_VECTOR(width downto 0));
end function_unit;


 architecture Behavioral of function_unit is

component F_sel is
    Port ( FS2 : in STD_LOGIC;
           FS3 : in STD_LOGIC;
           MF : out STD_LOGIC);
end component;


component  shifter_8bit is

    Port ( B : in STD_LOGIC_VECTOR (width downto 0);
           H : out STD_LOGIC_VECTOR (width downto 0);
           H_sel : in STD_LOGIC_VECTOR (1 downto 0));
end component;

component ALU is

    Port ( inA : in STD_LOGIC_VECTOR (width downto 0);
           inB : in STD_LOGIC_VECTOR (width downto 0);
           Jselect : in STD_LOGIC_VECTOR (3 downto 0);
           Vv,Cc : out STD_LOGIC;
           J : out STD_LOGIC_VECTOR (width downto 0));
end component;

component MUX2x1x8 is
    Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
           I1 : in STD_LOGIC_VECTOR (width downto 0);
           Sx : in STD_LOGIC;
           Jx : out STD_LOGIC_VECTOR (width downto 0));
end component;

component NegZero is
    Port (MFin: in STD_LOGIC_VECTOR (width downto 0);
            Nn: out STD_LOGIC;
            Zz: out STD_LOGIC);

end component;

signal Jj,Hh,Ff: STD_LOGIC_VECTOR (width downto 0);
signal MF: STD_LOGIC;
begin

ALUU: ALU PORT MAP(Adata,Bdata,Fs,Vv=>V,Cc=>C,J=>Jj);
FSEL: F_sel PORT MAP(Fs(2),Fs(3),MF);
SHIFT: shifter_8bit PORT MAP(Bdata,Hh,H_sel(0)=>Fs(0),H_sel(1)=>Fs(1));
MUXF: MUX2x1x8 PORT MAP(Jj,Hh,MF,Ff);
NZ: NegZero PORT MAP(Ff,Nn=>N,Zz=>Z);

F<=Ff;
end Behavioral;
