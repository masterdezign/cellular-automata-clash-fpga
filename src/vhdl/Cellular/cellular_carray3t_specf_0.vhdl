-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carray3t_specf_0 is
  port(x      : in std_logic_vector(15 downto 0);
       result : out std_logic_vector(0 downto 0));
end;

architecture structural of cellular_carray3t_specf_0 is
  signal app_arg         : signed(63 downto 0);
  signal wild1_app_arg   : std_logic_vector(2 downto 0);
  signal wild1_app_arg_0 : signed(63 downto 0);
  signal wild1           : signed(63 downto 0);
begin
  app_arg <= wild1;
  
  -- slice begin
  wild1_app_arg <= x(2 downto 0);
  -- slice end
  
  wild1_app_arg_0 <= signed(std_logic_vector(resize(unsigned(wild1_app_arg),64)));
  
  wild1 <= wild1_app_arg_0;
  
  -- indexBitVector begin
  indexbitvector : block
    signal bv_0 : std_logic_vector(7 downto 0);
    signal vec_index : integer range 0 to 8-1;
  begin
    bv_0 <= std_logic_vector'(x"6E");
    vec_index <= to_integer(app_arg)
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;
  
    result(0) <= bv_0(vec_index);
  end block;
  -- indexBitVector end
end;
