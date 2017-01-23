-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity Cellular is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       current_state   : out std_logic_vector(15 downto 0));
end;

architecture structural of Cellular is
begin
  cellular_topentity_inst : entity cellular_topentity
    port map
      (system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,r               => current_state);
end;
