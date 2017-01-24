-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carray3t_specf is
  port(y      : in std_logic_vector(15 downto 0);
       result : out std_logic_vector(15 downto 0));
end;

architecture structural of cellular_carray3t_specf is
begin
  result <= std_logic_vector(rotate_left(unsigned(y),to_integer(to_signed(1,64))));
end;
