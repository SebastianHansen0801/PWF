----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2022 09:23:31 AM
-- Design Name: 
-- Module Name: MUX2x1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX2x1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Q : out STD_LOGIC);
end MUX2x1;

architecture Behavioral of MUX2x1 is

    component AND2 is
        Port ( in1 : in STD_LOGIC;
               in2 : in STD_LOGIC;
               out1 : out STD_LOGIC);
    end component;
    
    component OR2 is
            Port ( in1 : in STD_LOGIC;
                   in2 : in STD_LOGIC;
                   out1 : out STD_LOGIC);
    end component;

    component NOT1 is
            Port ( in1 : in STD_LOGIC;
                   out1 : out STD_LOGIC);
    end component;

    signal S_not, and0, and1: STD_LOGIC;

begin

    U0: AND2 port map (in1 => A, in2 => S_not, out1 => and0);
    U1: AND2 port map (in1 => B, in2 => S, out1 => and1);
    U2: NOT1 port map (in1 => S, out1 => S_not);
    U3: OR2 port map (in1 => and0, in2 => and1, out1 => Q);

end Behavioral;
