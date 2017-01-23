-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_component_0 is
  port(v      : in std_logic_vector(15 downto 0);
       i1     : in signed(63 downto 0);
       result : out std_logic_vector(0 downto 0));
end;

architecture structural of cellular_component_0 is
  signal wild     : signed(63 downto 0);
  signal result_0 : signed(63 downto 0);
begin
  wild <= i1;
  
  result_0 <= wild;
  
  -- indexBitVector begin
  indexbitvector : block
    signal vec_index : integer range 0 to 16-1;
  begin
    vec_index <= to_integer(result_0)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
  
    result(0) <= v(vec_index);
  end block;
  -- indexBitVector end
end;
