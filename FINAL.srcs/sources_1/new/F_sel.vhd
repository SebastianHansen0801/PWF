

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity F_sel is
    Port ( FS2 : in STD_LOGIC;
           FS3 : in STD_LOGIC;
           MF : out STD_LOGIC);
end F_sel;

architecture Behavioral of F_sel is

begin

MF <= FS2 AND FS3;

end Behavioral;
