----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 03:28:51 PM
-- Design Name: 
-- Module Name: DestinationDecoder - Behavioral
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

entity DestinationDecoder is
    Port ( D_Address : in STD_LOGIC_VECTOR (3 downto 0);
           WRITE : in STD_LOGIC;
           LOAD : out STD_LOGIC_VECTOR (15 downto 0));
end DestinationDecoder;

architecture Behavioral of DestinationDecoder is

begin

    LOAD <= "0000000000000001" when D_Address = "0000" and WRITE = '1' else
            "0000000000000010" when D_Address = "0001" and WRITE = '1' else
            "0000000000000100" when D_Address = "0010" and WRITE = '1' else
            "0000000000001000" when D_Address = "0011" and WRITE = '1' else
            "0000000000010000" when D_Address = "0100" and WRITE = '1' else
            "0000000000100000" when D_Address = "0101" and WRITE = '1' else
            "0000000001000000" when D_Address = "0110" and WRITE = '1' else
            "0000000010000000" when D_Address = "0111" and WRITE = '1' else
            "0000000100000000" when D_Address = "1000" and WRITE = '1' else
            "0000001000000000" when D_Address = "1001" and WRITE = '1' else
            "0000010000000000" when D_Address = "1010" and WRITE = '1' else
            "0000100000000000" when D_Address = "1011" and WRITE = '1' else
            "0001000000000000" when D_Address = "1100" and WRITE = '1' else
            "0010000000000000" when D_Address = "1101" and WRITE = '1' else
            "0100000000000000" when D_Address = "1110" and WRITE = '1' else
            "1000000000000000" when D_Address = "1111" and WRITE = '1' else
            "0000000000000000";

end Behavioral;
