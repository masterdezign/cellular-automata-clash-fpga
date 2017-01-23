-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf is
  port(ds1    : in signed(63 downto 0);
       result : out signed(63 downto 0));
end;

architecture structural of cellular_carrayt_specf is
  signal app_arg  : signed(63 downto 0);
  signal case_alt : signed(63 downto 0);
  signal x        : signed(63 downto 0);
begin
  app_arg <= x + to_signed(1,64);
  
  case_alt <= app_arg;
  
  x <= ds1;
  
  result <= case_alt;
end;
