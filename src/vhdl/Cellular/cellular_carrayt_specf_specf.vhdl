-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf_specf is
  port(spos0  : in cellular_types.array_of_signed_64(0 to 15);
       x      : in signed(63 downto 0);
       result : out signed(63 downto 0));
end;

architecture structural of cellular_carrayt_specf_specf is
  signal app_arg  : signed(63 downto 0);
  signal ww2      : signed(63 downto 0);
  signal result_0 : signed(63 downto 0);
  signal x1       : signed(63 downto 0);
begin
  app_arg <= ww2;
  
  ww2 <= x1 mod to_signed(16,64);
  
  -- index begin
  indexvec : block 
    signal vec_index : integer range 0 to 16-1;
  begin
    vec_index <= to_integer(app_arg)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_0 <= signed(spos0(vec_index)(63 downto 0));
  end block;
  -- index end
  
  x1 <= x;
  
  result <= result_0;
end;
