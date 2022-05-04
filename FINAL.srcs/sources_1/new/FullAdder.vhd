

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FullAdder is


    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sout : out STD_LOGIC;
           Co : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

component HalfAdder is
    Port( X: in STD_LOGIC;
          Y: in STD_LOGIC;
          S : out STD_LOGIC;
          C : out STD_LOGIC);          
        end component;
        
        
signal G1,G2,P1 : STD_LOGIC ;
begin 
u1: HalfAdder port map (X=>A, Y=>B, S=>P1, C=>G1);
u2: HalfAdder port map (X=>P1, Y=>Cin, S=>Sout, C=>G2);
Co<= G1 OR G2;

end Behavioral;
