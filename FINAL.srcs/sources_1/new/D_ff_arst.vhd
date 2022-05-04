----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 12:50:00 PM
-- Design Name: 
-- Module Name: D_flip_flop_w_async_reset - Behavioral
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

entity D_ff_arst is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Load : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC);
end D_ff_arst;

architecture Behavioral of D_ff_arst is

    signal Q_int: STD_LOGIC;

begin

    Q <= Q_int;
    
    Q_int <=    '0' when Rst  = '1' else
            D when CLK'event and CLK = '1' and Load = '1' else
            Q_int when CLK'event and CLK = '1';
            
    Q_not <= not(Q_int);

end Behavioral;
