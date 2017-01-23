-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf_0 is
  port(newinput : in std_logic_vector(15 downto 0);
       ix       : in cellular_types.array_of_signed_64(0 to 2);
       result   : out std_logic_vector(2 downto 0));
end;

architecture structural of cellular_carrayt_specf_0 is
  signal app_arg   : cellular_types.array_of_std_logic_vector_1(0 to 2);
  signal app_arg_0 : cellular_types.array_of_std_logic_vector_1(0 to 2);
begin
  -- map begin
  map_r : for i in app_arg'range generate
    signal map_in : signed(63 downto 0);
    signal map_out : std_logic_vector(0 downto 0);
  begin
    map_in <= signed(ix(i)(63 downto 0));
    cellular_component_0_0 : entity cellular_component_0
  port map
  (result => map_out
  ,v => newinput
  ,i1 => map_in);
    app_arg(i) <= cellular_types.toSLV(map_out);
  end generate;
  -- map end
  
  -- map begin
  map_r_1 : for i_0 in app_arg_0'range generate
    signal map_in_0 : std_logic_vector(0 downto 0);
    signal map_out_0 : std_logic_vector(0 downto 0);
  begin
    map_in_0 <= app_arg(i_0)(0 downto 0);
    cellular_bitpackbitvector2_1 : entity cellular_bitpackbitvector2
  port map
  (result => map_out_0
  ,v => map_in_0);
    app_arg_0(i_0) <= cellular_types.toSLV(map_out_0);
  end generate;
  -- map end
  
  -- concatBitVector begin
  concatbitvector : block
    signal vec_1 : cellular_types.array_of_std_logic_vector_1(0 to 2);
  begin
    vec_1 <= app_arg_0;
    concatbitvectoriter_loop : for i_1 in vec_1'range generate
      result(((i_1 * 1) + 1 - 1) downto (i_1 * 1)) <= std_logic_vector'(vec_1(vec_1'high - i_1));
    end generate;
  end block;
  -- concatBitVector end
end;
