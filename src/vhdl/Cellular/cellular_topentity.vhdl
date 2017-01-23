-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_topentity is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       r               : out std_logic_vector(15 downto 0));
end;

architecture structural of cellular_topentity is
  signal cnt_app_arg : unsigned(23 downto 0);
  signal cnt         : unsigned(23 downto 0);
  signal result      : boolean;
  signal r_app_arg   : std_logic_vector(15 downto 0);
  signal r_rec       : std_logic_vector(15 downto 0);
begin
  cnt_app_arg <= cnt + to_unsigned(1,24);
  
  -- register begin
  cellular_topentity_register : process(system1000,system1000_rstn)
  begin
    if system1000_rstn = '0' then
      cnt <= to_unsigned(0,24);
    elsif rising_edge(system1000) then
      cnt <= cnt_app_arg;
    end if;
  end process;
  -- register end
  
  result <= cnt = to_unsigned(0,24);
  
  cellular_mealy_r_app_arg : entity cellular_mealy
    port map
      (result          => r_app_arg
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,w2              => r_rec);
  
  -- regEn begin
  cellular_topentity_regen : process(system1000,system1000_rstn,result)
  begin
    if system1000_rstn = '0' then
      r_rec <= std_logic_vector'(x"0000");
    elsif rising_edge(system1000) then
      if result then
        r_rec <= r_app_arg;
      end if;
    end if;
  end process;
  -- regEn end
  
  r <= r_rec;
end;
