
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter_8bit is
generic (width:integer :=7);
    Port ( B : in STD_LOGIC_VECTOR (width downto 0);
           H : out STD_LOGIC_VECTOR (width downto 0);
           H_sel : in STD_LOGIC_VECTOR (1 downto 0));
end shifter_8bit;

architecture Behavioral of shifter_8bit is
component MUX3x1 is 
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end component;

begin

GEN_MUXS: for i in 0 to width generate

lsb: if i=0 generate
    U0_MUX3x1: MUX3x1 port map(I0=>B(0),I1=>B(1),I2=>'0',S=>H_sel,O=>H(0));
end generate lsb;

bits: if (i>0 and i<width) generate 
    UX_MUX3x1: MUX3x1 port map(I0=>B(i),I1=>B(i+1),I2=>B(i-1),S=>H_sel,O=>H(i));
end generate bits;

msb: if i=width generate
    UX_MUX3x1: MUX3x1 port map(I0=>B(i),I1=>'0',I2=>B(i-1),S=>H_sel,O=>H(i));
end generate msb;

end generate GEN_MUXS;


end Behavioral;
