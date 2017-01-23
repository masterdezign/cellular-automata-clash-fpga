-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt is
  port(prev     : in std_logic_vector(15 downto 0);
       newinput : in std_logic_vector(15 downto 0);
       result   : out cellular_types.tup2);
end;

architecture structural of cellular_carrayt is
  signal spos0         : cellular_types.array_of_signed_64(0 to 15);
  signal result_0      : cellular_types.array_of_array_of_3_signed_64(0 to 15);
  signal xs2_app_arg   : cellular_types.array_of_signed_64(0 to 15);
  signal xs2_app_arg_0 : cellular_types.array_of_signed_64(0 to 15);
  signal xs2_app_arg_1 : cellular_types.array_of_signed_64(0 to 16);
  signal xs2           : cellular_types.array_of_signed_64(0 to 15);
  signal app_arg       : cellular_types.array_of_array_of_3_signed_64(0 to 15);
  signal app_arg_0     : cellular_types.array_of_array_of_3_signed_64(0 to 15);
  signal app_arg_1     : cellular_types.array_of_std_logic_vector_3(0 to 15);
  signal app_arg_2     : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal app_arg_3     : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal xs1_app_arg   : cellular_types.array_of_signed_64(0 to 15);
  signal xs1_app_arg_0 : cellular_types.array_of_signed_64(0 to 15);
  signal xs1_app_arg_1 : cellular_types.array_of_signed_64(0 to 16);
  signal xs1           : cellular_types.array_of_signed_64(0 to 15);
  signal result_1      : std_logic_vector(15 downto 0);
begin
  -- reverse begin
  reverse : block
    signal vec : cellular_types.array_of_signed_64(0 to 15);
  begin
    vec <= xs2;
    reverse_loop : for i in vec'range generate
      spos0(vec'high - i) <= vec(i);
    end generate;
  end block;
  -- reverse end
  
  -- map begin
  map_r : for i_0 in result_0'range generate
    signal map_in : signed(63 downto 0);
    signal map_out : cellular_types.array_of_signed_64(0 to 2);
  begin
    map_in <= signed(spos0(i_0)(63 downto 0));
    cellular_carrayt_specf_1_0 : entity cellular_carrayt_specf_1
  port map
  (result => map_out
  ,spos0 => spos0
  ,i => map_in);
    result_0(i_0) <= cellular_types.toSLV(map_out);
  end generate;
  -- map end
  
  xs2_app_arg <= xs2;
  
  -- map begin
  map_r_1 : for i_1 in xs2_app_arg_0'range generate
    signal map_in_0 : signed(63 downto 0);
    signal map_out_0 : signed(63 downto 0);
  begin
    map_in_0 <= signed(xs2_app_arg(i_1)(63 downto 0));
    cellular_carrayt_specf_3_1 : entity cellular_carrayt_specf_3
  port map
  (result => map_out_0
  ,ds3 => map_in_0);
    xs2_app_arg_0(i_1) <= cellular_types.toSLV(map_out_0);
  end generate;
  -- map end
  
  xs2_app_arg_1 <= cellular_types.array_of_signed_64'(std_logic_vector'(std_logic_vector(to_signed(0,64))) & xs2_app_arg_0);
  
  -- init begin
  xs2 <= xs2_app_arg_1(0 to xs2_app_arg_1'high - 1);
  -- init end
  
  -- map begin
  map_r_3 : for i_2 in app_arg'range generate
    signal map_in_1 : signed(63 downto 0);
    signal map_out_1 : cellular_types.array_of_signed_64(0 to 2);
  begin
    map_in_1 <= signed(xs1(i_2)(63 downto 0));
    cellular_carrayt_specf_2_2 : entity cellular_carrayt_specf_2
  port map
  (result => map_out_1
  ,ds2 => (to_signed(16,64))
  ,xs => result_0
  ,x => map_in_1);
    app_arg(i_2) <= cellular_types.toSLV(map_out_1);
  end generate;
  -- map end
  
  -- reverse begin
  reverse_0 : block
    signal vec_4 : cellular_types.array_of_array_of_3_signed_64(0 to 15);
  begin
    vec_4 <= app_arg;
    reverse_loop_0 : for i_3 in vec_4'range generate
      app_arg_0(vec_4'high - i_3) <= vec_4(i_3);
    end generate;
  end block;
  -- reverse end
  
  -- map begin
  map_r_5 : for i_4 in app_arg_1'range generate
    signal map_in_2 : cellular_types.array_of_signed_64(0 to 2);
    signal map_out_2 : std_logic_vector(2 downto 0);
  begin
    map_in_2 <= (app_arg_0(i_4)(191 downto 128),app_arg_0(i_4)(127 downto 64),app_arg_0(i_4)(63 downto 0));
    cellular_carrayt_specf_0_3 : entity cellular_carrayt_specf_0
  port map
  (result => map_out_2
  ,newinput => newinput
  ,ix => map_in_2);
    app_arg_1(i_4) <= cellular_types.toSLV(map_out_2);
  end generate;
  -- map end
  
  -- map begin
  map_r_7 : for i_5 in app_arg_2'range generate
    signal map_in_3 : std_logic_vector(2 downto 0);
    signal map_out_3 : std_logic_vector(0 downto 0);
  begin
    map_in_3 <= app_arg_1(i_5)(2 downto 0);
    cellular_component_4 : entity cellular_component
  port map
  (result => map_out_3
  ,i1 => map_in_3);
    app_arg_2(i_5) <= cellular_types.toSLV(map_out_3);
  end generate;
  -- map end
  
  -- map begin
  map_r_9 : for i_6 in app_arg_3'range generate
    signal map_in_4 : std_logic_vector(0 downto 0);
    signal map_out_4 : std_logic_vector(0 downto 0);
  begin
    map_in_4 <= app_arg_2(i_6)(0 downto 0);
    cellular_bitpackbitvector2_5 : entity cellular_bitpackbitvector2
  port map
  (result => map_out_4
  ,v => map_in_4);
    app_arg_3(i_6) <= cellular_types.toSLV(map_out_4);
  end generate;
  -- map end
  
  xs1_app_arg <= xs1;
  
  -- map begin
  map_r_11 : for i_7 in xs1_app_arg_0'range generate
    signal map_in_5 : signed(63 downto 0);
    signal map_out_5 : signed(63 downto 0);
  begin
    map_in_5 <= signed(xs1_app_arg(i_7)(63 downto 0));
    cellular_carrayt_specf_6 : entity cellular_carrayt_specf
  port map
  (result => map_out_5
  ,ds1 => map_in_5);
    xs1_app_arg_0(i_7) <= cellular_types.toSLV(map_out_5);
  end generate;
  -- map end
  
  xs1_app_arg_1 <= cellular_types.array_of_signed_64'(std_logic_vector'(std_logic_vector(to_signed(1,64))) & xs1_app_arg_0);
  
  -- init begin
  xs1 <= xs1_app_arg_1(0 to xs1_app_arg_1'high - 1);
  -- init end
  
  -- concatBitVector begin
  concatbitvector : block
    signal vec_10 : cellular_types.array_of_std_logic_vector_1(0 to 15);
  begin
    vec_10 <= app_arg_3;
    concatbitvectoriter_loop : for i_8 in vec_10'range generate
      result_1(((i_8 * 1) + 1 - 1) downto (i_8 * 1)) <= std_logic_vector'(vec_10(vec_10'high - i_8));
    end generate;
  end block;
  -- concatBitVector end
  
  result <= (tup2_sel0 => result_1
            ,tup2_sel1 => prev);
end;
