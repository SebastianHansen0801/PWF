----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2022 01:43:51 PM
-- Design Name: 
-- Module Name: PortReg8x8 - Behavioral
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

entity PortReg8x8 is
Port (
    CLK,MW : in STD_LOGIC;
    Data_In : in STD_LOGIC_VECTOR (7 downto 0);
    Address_in : in STD_LOGIC_VECTOR (7 downto 0);
    SW : in STD_LOGIC_VECTOR (7 downto 0);
    BTNC: in STD_LOGIC; --BTN1
    BTNU: in STD_LOGIC; --BTN2
    BTNL : in STD_LOGIC; --BTN3
    BTNR : in STD_LOGIC; --BTN4
    BTND : in STD_LOGIC;--BTN5
    MMR: out STD_LOGIC;
    Data_outR : out std_logic_vector(15 downto 0);
    LED: out STD_LOGIC_VECTOR (7 downto 0);
    RESET : in STD_LOGIC;
    Anode : out STD_LOGIC_VECTOR(3 downto 0);
    segments : out STD_LOGIC_VECTOR(6 downto 0)
);

end PortReg8x8;

architecture Behavioral of PortReg8x8 is

    component SevenSeg4 is 
        Port ( Rst, clk : in  std_logic;    
               Data :   in  std_logic_vector (15 downto 0); -- Binary data
               cat :    out std_logic_vector(6 downto 0);  -- Common cathodes
               an :     out std_logic_vector(3 downto 0)); -- Common Anodes
    end component;

    signal MR0, MR1, MR2, MR3, MR4, MR5, MR6, MR7: std_logic_vector(7 downto 0);
    signal input_buttons: std_logic_vector(4 downto 0);
    signal d_word_sig: std_logic_vector(15 downto 0);
    
begin

    U0: SevenSeg4 port map (Rst => RESET, clk => clk, Data => d_word_sig, cat => segments, an => anode);
    
    input_buttons <= BTNR & BTNL & BTND & BTNU & BTNC;
    d_word_sig <= MR1 & MR0;
    LED <= MR2;



    process(Address_In, MW) is
    begin
       if Address_In >= x"f8" and MW = '0' then MMR <= '1';
       else MMR <= '0';
       end if;
   end process;

    write: process (clk) is
    begin
        if (clk'event and clk = '1' and MW = '1') then -- on rising edge       
            case Address_in is
                when "11111000" =>
                    MR0 <= Data_in;   
                when "11111001" =>
                    MR1 <= Data_in;
                when "11111010" =>
                    MR2 <= Data_in;
                when others => NULL;
            end case; 
        end if;   
    end process;

    read: process (clk, Address_In, MW) is
    begin
        if(rising_edge(clk) and MW = '0' and Address_in >= x"F8") then
           case Address_in is
              when "11111000" =>
                Data_outR <= X"00" & MR0;
              when "11111001" =>
                Data_outR <= X"00" & MR1;
              when "11111010" =>
                Data_outR <= X"00" & MR2;
              when "11111011" =>
                Data_outR <= X"00" & MR3;
              when "11111100" =>
                Data_outR <= X"00" & MR4;
              when "11111101" =>
                Data_outR <= X"00" & MR5;
              when "11111110" =>
                Data_outR <= X"00" & MR6;
              when "11111111" =>
                Data_outR <= X"00" & MR7;
              when others => NULL;
            end case;
        end if;
    end process;
    
    write_from_switch: process (clk) is
    begin
        if (clk'event and clk = '1') then
            if input_buttons = "10000" then MR3 <= SW;
            elsif input_buttons = "01000" then MR4 <= SW;
            elsif input_buttons = "00100" then MR5 <= SW;
            elsif input_buttons = "00010" then MR6 <= SW;
            elsif input_buttons = "00001" then MR7 <= SW;
            end if;
        end if;
    end process;
    
end Behavioral;
