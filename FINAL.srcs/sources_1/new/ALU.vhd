

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity ALU is
generic (width:integer :=7);
    Port ( inA : in STD_LOGIC_VECTOR (width downto 0);
           inB : in STD_LOGIC_VECTOR (width downto 0);
           Jselect : in STD_LOGIC_VECTOR (3 downto 0);
           Vv,Cc : out STD_LOGIC;
           J : out STD_LOGIC_VECTOR (width downto 0));
end ALU;


architecture Behavioral of ALU is


component arith_circuit is
--generic (width:integer :=7);
     Port (  Aa : in STD_LOGIC_VECTOR (width downto 0);
             Bb : in STD_LOGIC_VECTOR (width downto 0);
             Ci : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (1 downto 0);
             Gout : out STD_LOGIC_VECTOR (width downto 0); -- skift navn til G
             Cout : out STD_LOGIC;
             Cco : out STD_LOGIC);
end component;

component logic_unit is
--generic (width:integer :=7);
  Port (Ai: in STD_LOGIC_VECTOR (width downto 0);
        Bi: in STD_LOGIC_VECTOR (width downto 0);
        Ss: in STD_LOGIC_VECTOR (1 downto 0);
        Go: out STD_LOGIC_VECTOR (width downto 0)
         );
end component;

component MUX2x1x8 is
    Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
           I1 : in STD_LOGIC_VECTOR (width downto 0);
           Sx : in STD_LOGIC;
           Jx : out STD_LOGIC_VECTOR (width downto 0));
end component;

signal Ax,Lx: STD_LOGIC_VECTOR (width downto 0);
signal Cx,Ccx: STD_LOGIC;
begin

AU: arith_circuit PORT MAP(inA,inB,Jselect(0),S(0)=>Jselect(1),S(1)=>Jselect(2),Gout=>Ax,Cout=>Cx,Cco=>Ccx);
LU: logic_unit PORT MAP(inA,inB,Ss(0)=>Jselect(0),Ss(1)=>Jselect(1),Go=>Lx);
MUXS: MUX2x1x8 PORT MAP(Ax,Lx,Jselect(3),J);

Cc<= Cx;
Vv<= Cx XOR Ccx;
end Behavioral;
