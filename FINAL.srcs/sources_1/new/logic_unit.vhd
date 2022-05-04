

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity logic_unit is
generic (width:integer := 7);
  Port (Ai: in STD_LOGIC_VECTOR (width downto 0);
        Bi: in STD_LOGIC_VECTOR (width downto 0);
        Ss: in STD_LOGIC_VECTOR (1 downto 0);
        Go: out STD_LOGIC_VECTOR (width downto 0)
         );
end logic_unit;

architecture Behavioral of logic_unit is

begin

with Ss select
Go<=Ai OR Bi when "00",
    Ai AND Bi when "01",
    Ai XOR Bi when "10",
    NOT Ai when "11",
    x"00" when others;

end Behavioral;
