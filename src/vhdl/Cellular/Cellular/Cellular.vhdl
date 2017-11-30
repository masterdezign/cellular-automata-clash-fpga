-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.cellular_types.all;

entity Cellular is
  port(-- clock
       \#$d(%,%)_0\  : in std_logic;
       -- asynchronous reset: active high
       \#$d(%,%)_1\  : in std_logic;
       current_state : out std_logic_vector(15 downto 0));
end;

architecture structural of Cellular is
  signal \#result_rec\  : std_logic_vector(15 downto 0);
  signal \#r_app_arg\   : cellular_types.gatedclock;
  signal \#r_app_arg_0\ : std_logic_vector(15 downto 0);
  signal cnt            : unsigned(23 downto 0);
  signal \$d(%,%)\      : cellular_types.product;
begin
  \$d(%,%)\ <= (product_sel0 => \#$d(%,%)_0\
               ,product_sel1 => \#$d(%,%)_1\);

  -- register begin
  cellular_register : block
    signal clk : std_logic;
    signal ce : boolean;
  begin
    (clk,ce) <= \#r_app_arg\;
    cellular_reg : process(clk,\$d(%,%)\.product_sel1)
    begin
      if \$d(%,%)\.product_sel1 = '1' then
        \#result_rec\ <= std_logic_vector'(x"0000");
      elsif rising_edge(clk) then
        if ce then
          \#result_rec\ <= \#r_app_arg_0\
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  -- clockGate begin
  \#r_app_arg\ <= (\$d(%,%)\.product_sel0,(cnt = to_unsigned(0,24)));
  -- clockGate end

  cellular_carray3t_r_app_arg_0 : entity cellular_carray3t
    port map
      (eta2     => \#r_app_arg_0\
      ,\#pTS\   => \$d(%,%)\.product_sel0
      ,\#pTS_0\ => \$d(%,%)\.product_sel1
      ,i1       => \#result_rec\);

  -- register begin 
  cellular_register_0 : process(\$d(%,%)\.product_sel0,\$d(%,%)\.product_sel1)
  begin
    if \$d(%,%)\.product_sel1 = '1' then
      cnt <= to_unsigned(0,24)
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(\$d(%,%)\.product_sel0) then
      cnt <= (cnt + to_unsigned(1,24))
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  current_state <= \#result_rec\;
end;

