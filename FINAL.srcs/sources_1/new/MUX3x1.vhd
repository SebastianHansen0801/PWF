
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX3x1 is
 Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end MUX3x1;

architecture Behavioral of MUX3x1 is

begin

O<=I0 when S="00" else
I1 when S="01" else
I2 when S="10" else 
I0 when S="11"; 


end Behavioral;
