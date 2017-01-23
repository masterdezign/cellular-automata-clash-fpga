-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_mealy is
  port(w2              : in std_logic_vector(15 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       result          : out std_logic_vector(15 downto 0));
end;

architecture structural of cellular_mealy is
  signal y         : std_logic_vector(15 downto 0);
  signal result_0  : cellular_types.tup2;
  signal x         : std_logic_vector(15 downto 0);
  signal x_app_arg : std_logic_vector(15 downto 0);
  signal x_0       : std_logic_vector(15 downto 0);
begin
  result <= y;
  
  y <= result_0.tup2_sel1;
  
  cellular_carray3t_result_0 : entity cellular_carray3t
    port map
      (result   => result_0
      ,prev     => x
      ,newinput => w2);
  
  -- register begin
  cellular_mealy_register : process(system1000,system1000_rstn)
  begin
    if system1000_rstn = '0' then
      x <= std_logic_vector'(x"0001");
    elsif rising_edge(system1000) then
      x <= x_app_arg;
    end if;
  end process;
  -- register end
  
  x_app_arg <= x_0;
  
  x_0 <= result_0.tup2_sel0;
end;
