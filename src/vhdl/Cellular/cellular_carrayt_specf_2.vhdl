-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf_2 is
  port(ds2    : in signed(63 downto 0);
       xs     : in cellular_types.array_of_array_of_3_signed_64(0 to 15);
       x      : in signed(63 downto 0);
       result : out cellular_types.array_of_signed_64(0 to 2));
end;

architecture structural of cellular_carrayt_specf_2 is
  signal app_arg    : signed(63 downto 0);
  signal ww2        : signed(63 downto 0);
  signal result_0   : cellular_types.array_of_signed_64(0 to 2);
  signal x1         : signed(63 downto 0);
  signal case_alt   : cellular_types.array_of_signed_64(0 to 2);
  signal case_alt_0 : cellular_types.array_of_signed_64(0 to 2);
  signal case_alt_1 : cellular_types.array_of_signed_64(0 to 2);
  signal ww1        : signed(63 downto 0);
begin
  app_arg <= ww2;
  
  ww2 <= x1 mod ww1;
  
  -- index begin
  indexvec : block 
    signal vec_index : integer range 0 to 16-1;
  begin
    vec_index <= to_integer(app_arg)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_0 <= (xs(vec_index)(191 downto 128),xs(vec_index)(127 downto 64),xs(vec_index)(63 downto 0));
  end block;
  -- index end
  
  x1 <= x;
  
  case_alt <= result_0;
  
  -- index begin
  indexvec_0 : block 
    signal vec_index_0 : integer range 0 to 16-1;
  begin
    vec_index_0 <= to_integer(to_signed(0,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    case_alt_0 <= (xs(vec_index_0)(191 downto 128),xs(vec_index_0)(127 downto 64),xs(vec_index_0)(63 downto 0));
  end block;
  -- index end
  
  with (ww1) select
    case_alt_1 <= case_alt_0 when x"FFFFFFFFFFFFFFFF",
                  cellular_types.array_of_signed_64'(0 to 2 => std_logic_vector'(0 to 63 => 'X')) when x"0000000000000000",
                  case_alt when others;
  
  ww1 <= ds2;
  
  result <= case_alt_1;
end;
