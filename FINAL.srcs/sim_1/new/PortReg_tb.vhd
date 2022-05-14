-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity PortReg8x8_tb is
end;

architecture bench of PortReg8x8_tb is

  component PortReg8x8
  Port (
      CLK,MW : in STD_LOGIC;
      Data_In : in STD_LOGIC_VECTOR (7 downto 0);
      Address_in : in STD_LOGIC_VECTOR (7 downto 0);
      SW : in STD_LOGIC_VECTOR (7 downto 0);
      BTNC: in STD_LOGIC;
      BTNU: in STD_LOGIC;
      BTNL : in STD_LOGIC;
      BTNR : in STD_LOGIC;
      BTND : in STD_LOGIC;
      MMR: out STD_LOGIC;
      Data_outR : out std_logic_vector(15 downto 0);
      LED: out STD_LOGIC_VECTOR (7 downto 0);
      RESET : in STD_LOGIC;
      Anode : out STD_LOGIC_VECTOR(3 downto 0);
      segments : out STD_LOGIC_VECTOR(6 downto 0)
  );
  end component;

  signal CLK,MW: STD_LOGIC;
  signal Data_In: STD_LOGIC_VECTOR (7 downto 0);
  signal Address_in: STD_LOGIC_VECTOR (7 downto 0);
  signal SW: STD_LOGIC_VECTOR (7 downto 0);
  signal BTNC: STD_LOGIC;
  signal BTNU: STD_LOGIC;
  signal BTNL: STD_LOGIC;
  signal BTNR: STD_LOGIC;
  signal BTND: STD_LOGIC;
  signal MMR: STD_LOGIC;
  signal Data_outR: std_logic_vector(15 downto 0);
  signal LED: STD_LOGIC_VECTOR (7 downto 0);
  signal RESET: STD_LOGIC;
  signal Anode: STD_LOGIC_VECTOR(3 downto 0);
  signal segments: STD_LOGIC_VECTOR(6 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: PortReg8x8 port map ( CLK        => CLK,
                             MW         => MW,
                             Data_In    => Data_In,
                             Address_in => Address_in,
                             SW         => SW,
                             BTNC       => BTNC,
                             BTNU       => BTNU,
                             BTNL       => BTNL,
                             BTNR       => BTNR,
                             BTND       => BTND,
                             MMR        => MMR,
                             Data_outR  => Data_outR,
                             LED        => LED,
                             RESET      => RESET,
                             Anode      => Anode,
                             segments   => segments );

  stimulus: process
  begin
  
    -- Put initialisation code here
    Reset <= '1';
    BTNC <= '0';
    BTNU <= '0';
    BTNL <= '0';
    BTND <= '0';
    BTNR <= '0';
    SW <= x"00";
    Data_In <= x"00";
    Address_In <= x"00";
    MW <= '0';
    wait for clock_period;
    Reset <= '0';
    wait for clock_period;
    

    -- Put test bench stimulus code here
    SW <= x"1a";
    BTNR <= '1';
    wait for clock_period;
    SW <= x"2a";
    BTNR <= '0';
    BTNL <= '1';
    wait for clock_period;
    SW <= x"3a";
    BTNL <= '0';
    BTND <= '1';
    wait for clock_period;
    SW <= x"4a";
    BTND <= '0';
    BTNU <= '1';
    wait for clock_period;
    SW <= x"5a";
    BTNU <= '0';
    BTNC <= '1';
    wait for clock_period;
    SW <= x"00";
    BTNC <= '0';
    wait for clock_period*2;
    
    MW <= '1';
    Data_In <= x"b1";
    Address_In <= x"f8";
    wait for clock_period;
    Data_In <= x"b2";
    Address_In <= x"f9";
    wait for clock_period;
    Data_In <= x"b3";
    Address_In <= x"fa";
    wait for clock_period;
    Data_In <= x"00";
    Address_In <= x"00";
    MW <= '0';
    wait for clock_period*2;
    
    
    Address_In <= x"f8";
    wait for clock_period;
    Address_In <= x"f9";
    wait for clock_period;
    Address_In <= x"fa";
    wait for clock_period;
    Address_In <= x"fb";
    wait for clock_period;
    Address_In <= x"fc";
    wait for clock_period;
    Address_In <= x"fd";
    wait for clock_period;
    Address_In <= x"fe";
    wait for clock_period;
    Address_In <= x"ff";
    wait for clock_period;
    wait for clock_period*2;
            
    

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