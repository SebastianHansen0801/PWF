
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HalfAdder is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin

S <= X XOR Y;
C <= X AND Y;

end Behavioral;
