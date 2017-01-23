-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carray3t is
  port(prev     : in std_logic_vector(15 downto 0);
       newinput : in std_logic_vector(15 downto 0);
       result   : out cellular_types.tup2);
end;

architecture structural of cellular_carray3t is
  signal app_arg      : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal app_arg_0    : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal xs_app_arg   : std_logic_vector(15 downto 0);
  signal xs_app_arg_0 : cellular_types.array_of_std_logic_vector_16(0 to 15);
  signal xs_app_arg_1 : cellular_types.array_of_std_logic_vector_16(0 to 15);
  signal xs_app_arg_2 : cellular_types.array_of_std_logic_vector_16(0 to 16);
  signal xs           : cellular_types.array_of_std_logic_vector_16(0 to 15);
  signal result_0     : std_logic_vector(15 downto 0);
begin
  -- map begin
  map_r : for i in app_arg'range generate
    signal map_in : std_logic_vector(15 downto 0);
    signal map_out : std_logic_vector(0 downto 0);
  begin
    map_in <= xs(i)(15 downto 0);
    cellular_carray3t_specf_0 : entity cellular_carray3t_specf
  port map
  (result => map_out
  ,x => map_in);
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
  
  xs_app_arg <= std_logic_vector(rotate_left(unsigned(newinput),to_integer(to_signed(2,64))));
  
  xs_app_arg_0 <= xs;
  
  -- map begin
  map_r_3 : for i_1 in xs_app_arg_1'range generate
    signal map_in_1 : std_logic_vector(15 downto 0);
    signal map_out_1 : std_logic_vector(15 downto 0);
  begin
    map_in_1 <= xs_app_arg_0(i_1)(15 downto 0);
    cellular_carray3t_specf_0_2 : entity cellular_carray3t_specf_0
  port map
  (result => map_out_1
  ,y => map_in_1);
    xs_app_arg_1(i_1) <= cellular_types.toSLV(map_out_1);
  end generate;
  -- map end
  
  xs_app_arg_2 <= cellular_types.array_of_std_logic_vector_16'(std_logic_vector'(xs_app_arg) & xs_app_arg_1);
  
  -- init begin
  xs <= xs_app_arg_2(0 to xs_app_arg_2'high - 1);
  -- init end
  
  -- concatBitVector begin
  concatbitvector : block
    signal vec_3 : cellular_types.array_of_std_logic_vector_1(0 to 15);
  begin
    vec_3 <= app_arg_0;
    concatbitvectoriter_loop : for i_2 in vec_3'range generate
      result_0(((i_2 * 1) + 1 - 1) downto (i_2 * 1)) <= std_logic_vector'(vec_3(vec_3'high - i_2));
    end generate;
  end block;
  -- concatBitVector end
  
  result <= (tup2_sel0 => result_0
            ,tup2_sel1 => prev);
end;
