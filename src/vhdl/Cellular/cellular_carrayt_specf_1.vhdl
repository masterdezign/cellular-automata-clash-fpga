-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carrayt_specf_1 is
  port(spos0  : in cellular_types.array_of_signed_64(0 to 15);
       i      : in signed(63 downto 0);
       result : out cellular_types.array_of_signed_64(0 to 2));
end;

architecture structural of cellular_carrayt_specf_1 is
  signal case_scrut    : cellular_types.tup2_0;
  signal result_0      : cellular_types.array_of_signed_64(0 to 15);
  signal x             : cellular_types.array_of_signed_64(0 to 2);
  signal xs3           : cellular_types.array_of_signed_64(0 to 15);
  signal xs3_app_arg   : cellular_types.array_of_signed_64(0 to 16);
  signal result_1      : signed(63 downto 0);
  signal xs3_app_arg_0 : cellular_types.array_of_signed_64(0 to 15);
  signal wild          : signed(63 downto 0);
  signal xs3_app_arg_1 : cellular_types.array_of_signed_64(0 to 15);
begin
  -- splitAt begin
  case_scrut <= (result_0(0 to (3)-1)
             ,result_0((3) to result_0'high));
  -- splitAt end
  
  -- map begin
  map_r : for i_0 in result_0'range generate
    signal map_in : signed(63 downto 0);
    signal map_out : signed(63 downto 0);
  begin
    map_in <= signed(xs3(i_0)(63 downto 0));
    cellular_carrayt_specf_specf_0 : entity cellular_carrayt_specf_specf
  port map
  (result => map_out
  ,spos0 => spos0
  ,x => map_in);
    result_0(i_0) <= cellular_types.toSLV(map_out);
  end generate;
  -- map end
  
  x <= case_scrut.tup2_0_sel0;
  
  -- init begin
  xs3 <= xs3_app_arg(0 to xs3_app_arg'high - 1);
  -- init end
  
  xs3_app_arg <= cellular_types.array_of_signed_64'(std_logic_vector'(std_logic_vector(result_1)) & xs3_app_arg_0);
  
  result_1 <= wild;
  
  -- map begin
  map_r_1 : for i_1 in xs3_app_arg_0'range generate
    signal map_in_0 : signed(63 downto 0);
    signal map_out_0 : signed(63 downto 0);
  begin
    map_in_0 <= signed(xs3_app_arg_1(i_1)(63 downto 0));
    cellular_carrayt_specf_1 : entity cellular_carrayt_specf
  port map
  (result => map_out_0
  ,ds1 => map_in_0);
    xs3_app_arg_0(i_1) <= cellular_types.toSLV(map_out_0);
  end generate;
  -- map end
  
  wild <= i;
  
  xs3_app_arg_1 <= xs3;
  
  result <= x;
end;
