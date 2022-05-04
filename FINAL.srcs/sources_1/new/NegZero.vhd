
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NegZero is
generic (width:integer :=7);
    Port ( MFin : in STD_LOGIC_VECTOR (width downto 0);
           Nn : out STD_LOGIC;
           Zz : out STD_LOGIC);
end NegZero;

architecture Behavioral of NegZero is

begin

    Nn<=MFin(width);
    with MFin select
    Zz<='1' when "00000000",
    '0' when others;
    

end Behavioral;
