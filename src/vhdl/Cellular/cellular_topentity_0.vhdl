-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_topentity_0 is
  port(w               : in unsigned(0 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       result          : out std_logic_vector(15 downto 0));
end;

architecture structural of cellular_topentity_0 is
begin
  cellular_topentity_result : entity cellular_topentity
    port map
      (r               => result
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn);
end;
