-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_component is
  port(i1     : in std_logic_vector(2 downto 0);
       result : out std_logic_vector(0 downto 0));
end;

architecture structural of cellular_component is
  signal wild_app_arg : signed(63 downto 0);
  signal wild         : signed(63 downto 0);
  signal result_0     : signed(63 downto 0);
begin
  wild_app_arg <= signed(std_logic_vector(resize(unsigned(i1),64)));
  
  wild <= wild_app_arg;
  
  result_0 <= wild;
  
  -- indexBitVector begin
  indexbitvector : block
    signal bv : std_logic_vector(7 downto 0);
    signal vec_index : integer range 0 to 8-1;
  begin
    bv <= std_logic_vector'(x"6E");
    vec_index <= to_integer(result_0)
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;
  
    result(0) <= bv(vec_index);
  end block;
  -- indexBitVector end
end;
