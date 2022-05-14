-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Ram256X16_tb is
end;

architecture bench of Ram256X16_tb is

  component Ram256X16
    Port (
         clk, RESET: in STD_LOGIC;
         Data_in: in STD_LOGIC_VECTOR(15 downto 0);
         Address_in: in STD_LOGIC_VECTOR(7 downto 0);
         MW: in STD_LOGIC;
         Data_outM: out STD_LOGIC_VECTOR(15 downto 0)
    );
  end component;

  signal clk, RESET: STD_LOGIC;
  signal Data_in: STD_LOGIC_VECTOR(15 downto 0);
  signal Address_in: STD_LOGIC_VECTOR(7 downto 0);
  signal MW: STD_LOGIC;
  signal Data_outM: STD_LOGIC_VECTOR(15 downto 0) ;
  
  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Ram256X16 port map ( clk        => clk,
                            RESET      => RESET,
                            Data_in    => Data_in,
                            Address_in => Address_in,
                            MW         => MW,
                            Data_outM  => Data_outM );

  stimulus: process
  begin
  
    -- Put initialisation code here
    Data_In <= x"0000";
    Address_In <= x"00";
    MW <= '0';
    Reset <= '1';
    wait for clock_period;
    Reset <= '0';
    wait for clock_period;


    -- Put test bench stimulus code here
    Address_In <= x"00";
    wait for clock_period;
    Address_In <= x"01";
    wait for clock_period;
    Address_In <= x"02";
    wait for clock_period;
    Address_In <= x"03";
    wait for clock_period;
    Address_In <= x"04";
    wait for clock_period;    
    Address_In <= x"05";
    wait for clock_period*2;
    
    MW <= '1';
    Data_In <= x"0009";
    Address_In <= x"f7";
    wait for clock_period;
    Data_In <= x"000a";
    Address_In <= x"f6";
    wait for clock_period;
    Data_In <= x"000b";
    Address_In <= x"f5";
    wait for clock_period;
    MW <= '0';




    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;


end;