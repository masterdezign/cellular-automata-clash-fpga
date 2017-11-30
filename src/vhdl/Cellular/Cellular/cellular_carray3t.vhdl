-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity cellular_carray3t is
  port(-- clock
       \#pTS\   : in std_logic;
       -- asynchronous reset: active high
       \#pTS_0\ : in std_logic;
       i1       : in std_logic_vector(15 downto 0);
       eta2     : out std_logic_vector(15 downto 0));
end;

architecture structural of cellular_carray3t is
  signal result           : std_logic_vector(15 downto 0);
  signal \#tup_app_arg\   : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal \#tup_app_arg_0\ : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal xs               : cellular_types.array_of_std_logic_vector_16(0 to 15);
  signal \#xs_app_arg\    : cellular_types.array_of_std_logic_vector_16(0 to 15);
  signal \#vec\           : cellular_types.array_of_std_logic_vector_16(0 to 16);
  signal \#vec_0\         : cellular_types.array_of_std_logic_vector_16(0 to 15);
begin
  -- concatBitVector begin
  concatbitvectoriter_loop : for i in \#tup_app_arg\'range generate
    result(((i * 1) + 1 - 1) downto (i * 1)) <= std_logic_vector'(\#tup_app_arg\(\#tup_app_arg\'high - i));
  end generate;
  -- concatBitVector end

  -- register begin 
  cellular_carray3t_register : process(\#pTS\,\#pTS_0\)
  begin
    if \#pTS_0\ = '1' then
      eta2 <= std_logic_vector'(x"0001")
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(\#pTS\) then
      eta2 <= result
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  -- map begin
  map_r : for i_0 in \#tup_app_arg\'range generate
  begin
    \#tup_app_arg\(i_0) <= \#tup_app_arg_0\(i_0);
  end generate;
  -- map end

  -- map begin
  map_r_0 : for i_1 in \#tup_app_arg_0\'range generate
  begin
    fun : block
  signal wild1 : signed(63 downto 0);
  signal \#bv\ : std_logic_vector(2 downto 0);
  begin
  wild1 <= (signed(std_logic_vector(resize(unsigned((xs(i_1)(2 downto 0))),64))));

  \#bv\ <= std_logic_vector'("110");

  -- indexBitVector begin
  indexbitvector : block
    signal vec_index : integer range 0 to 3-1;
  begin
    vec_index <= to_integer((wild1))
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;

    \#tup_app_arg_0\(i_1)(0) <= \#bv\(vec_index);
  end block;
  -- indexBitVector end
  end block;
  end generate;
  -- map end

  \#vec\ <= cellular_types.array_of_std_logic_vector_16'(std_logic_vector'(std_logic_vector(rotate_left(unsigned(i1),to_integer(to_signed(2,64))))) & \#xs_app_arg\);

  xs <= \#vec\(0 to \#vec\'high - 1);

  \#vec_0\ <= (xs);

  -- map begin
  map_r_1 : for i_2 in \#xs_app_arg\'range generate
  begin
    \#xs_app_arg\(i_2) <= std_logic_vector(rotate_left(unsigned(\#vec_0\(i_2)),to_integer(to_signed(1,64))));
  end generate;
  -- map end
end;

