
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity arith_circuit is
generic (width:integer :=7);
     Port (  Aa : in STD_LOGIC_VECTOR (width downto 0);
             Bb : in STD_LOGIC_VECTOR (width downto 0);
             Ci : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (1 downto 0);
             Gout : out STD_LOGIC_VECTOR (width downto 0); -- skift navn til G
             Cout : out STD_LOGIC;
             Cco : out STD_LOGIC);
             
end arith_circuit;


architecture Behavioral of arith_circuit is

component FullAdder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sout : out STD_LOGIC;
           Co : out STD_LOGIC);
           
end component;

component MUX2x1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal cc: std_logic_vector(width downto 0); 
signal bx: STD_LOGIC_VECTOR(width downto 0);
signal V: STD_LOGIC;
       
 begin
 
 GEN_MUX: for j in 0 to width generate
    MX: MUX2x1 PORT MAP(S(1),S(0),Bb(j),Bx(j));
    end generate GEN_MUX;

 
GEN_ADD: for i in 0 to width generate
 
Low_bit: if i=0 generate

        U0:    FullAdder port map (Aa(i),Bx(i),Ci,Gout(i),cc(0));
     
       end generate Low_bit;
Upper_bits: if (i>0 and i<width) generate 
        UX: FullAdder port map (Aa(i),Bx(i),cc(i-1),Gout(i),cc(i)); 
    -- (y(i),cc(i-1),x(i),cc(0),sum(i));  
         end generate upper_bits; 
msb: if i=width  generate
       Umsb: FullAdder port map (Aa(i),Bx(i),cc(i-1),Gout(i),cc(i));   
      -- (y(i),cc(i-1),x(i),co,sum(i));  
        end generate msb;
end generate GEN_ADD;
Cout<= cc(7);
Cco<= cc(6);

end Behavioral;
