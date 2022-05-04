

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX2x1x8 is
generic (width:integer :=7);
    Port ( I0 : in STD_LOGIC_VECTOR (width downto 0);
           I1 : in STD_LOGIC_VECTOR (width downto 0);
           Sx : in STD_LOGIC;
           Jx : out STD_LOGIC_VECTOR (width downto 0));
end MUX2x1x8;

architecture Behavioral of MUX2x1x8 is

begin

with Sx select
Jx <= I0 when '0',
      I1 when '1',
      x"00" when others;

end Behavioral;
