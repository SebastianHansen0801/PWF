-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MUX2x1_tb is
end;

architecture bench of MUX2x1_tb is

  component MUX2x1
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             S : in STD_LOGIC;
             Q : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal S: STD_LOGIC;
  signal Q: STD_LOGIC;

begin

  uut: MUX2x1 port map ( A => A,
                         B => B,
                         S => S,
                         Q => Q );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= '1';
    B <= '0';
    S <= '0';

    -- Put test bench stimulus code here

    wait;
  end process;


end;