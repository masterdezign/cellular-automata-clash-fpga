-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf_3 is
  port(ds3    : in signed(63 downto 0);
       result : out signed(63 downto 0));
end;

architecture structural of cellular_carrayt_specf_3 is
begin
  result <= ds3 + to_signed(1,64);
end;
