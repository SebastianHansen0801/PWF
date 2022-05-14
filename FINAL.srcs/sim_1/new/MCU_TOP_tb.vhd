-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MCU_TOP_tb is
end;

architecture bench of MCU_TOP_tb is

  component MCU_TOP
      Port ( CLK : in STD_LOGIC;
             LED : out STD_LOGIC_VECTOR (7 downto 0);
             BTNC, BTNR, BTND, BTNL, BTNU, RESET : in STD_LOGIC;
             SW : in STD_LOGIC_VECTOR (7 downto 0);
             Anode : out STD_LOGIC_VECTOR (3 downto 0);
             Segments : out STD_LOGIC_VECTOR (6 downto 0));
  end component;

  signal CLK: STD_LOGIC;
  signal LED: STD_LOGIC_VECTOR (7 downto 0);
  signal BTNC, BTNR, BTND, BTNL, BTNU, RESET: STD_LOGIC;
  signal SW: STD_LOGIC_VECTOR (7 downto 0);
  signal Anode: STD_LOGIC_VECTOR (3 downto 0);
  signal Segments: STD_LOGIC_VECTOR (6 downto 0);
  
  constant clk_period: time:= 10ns;
  signal end_test: std_logic:='1';

begin

  uut: MCU_TOP port map ( CLK      => CLK,
                          LED      => LED,
                          BTNC     => BTNC,
                          BTNR     => BTNR,
                          BTND     => BTND,
                          BTNL     => BTNL,
                          BTNU     => BTNU,
                          RESET    => RESET,
                          SW       => SW,
                          Anode    => Anode,
                          Segments => Segments );

  stimulus: process
  begin
  
    -- Put initialisation code here
    SW <= x"00";
    BTNC <= '0';
    BTND <= '0';
    BTNL <= '0';
    BTNR <= '0';
    BTNU <= '0';
  
    RESET <= '0';
    wait for clk_period*3;
    RESET <= '1';
    wait for clk_period*20;
    
    BTNC <= '1';
    SW <= x"06";
    wait for clk_period*2;
    BTNC <= '0';
    wait for clk_period*2;
    
    BTNU <= '1';
    SW <= x"1a";
    wait for clk_period*2;
    BTNU <= '0';
    wait for clk_period*2;

    
    wait for clk_period*300;


    -- Put test bench stimulus code here

    END_TEST <= '0';
    wait;
  end process;
  
  
  
  clock: process
                             begin
                             while end_test='1'loop
                             CLK<='0';
                             wait for clk_period*0.5;
                             CLK<='1';
                             wait for clk_period*0.5;
                             end loop;
                             wait;
                             end  process;


end;