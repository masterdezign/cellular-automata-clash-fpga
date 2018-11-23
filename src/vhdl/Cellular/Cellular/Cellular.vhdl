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
       CLOCK         : in std_logic;
       -- asynchronous reset: active high
       RST           : in std_logic;
       current_state : out std_logic_vector(15 downto 0));
end;

architecture structural of Cellular is
  signal cnt            : unsigned(23 downto 0);
  signal \#r_app_arg\   : cellular_types.gatedclock;
  signal \#r_app_arg_0\ : std_logic_vector(15 downto 0);
  signal \#r_rec\       : std_logic_vector(15 downto 0);
begin
  -- register begin 
  cellular_register : process(CLOCK,RST)
  begin
    if RST = '1' then
      cnt <= to_unsigned(0,24)
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(CLOCK) then
      cnt <= (cnt + to_unsigned(1,24))
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  -- clockGate begin
  \#r_app_arg\ <= (CLOCK,(cnt = to_unsigned(0,24)));
  -- clockGate end

  cellular_carray3t_r_app_arg_0 : entity cellular_carray3t
    port map
      ( eta2 => \#r_app_arg_0\
      , clk  => CLOCK
      , rst  => RST
      , i1   => \#r_rec\ );

  -- register begin
  cellular_register_0 : block
    signal clk_0 : std_logic;
    signal ce_0 : boolean;
  begin
    (clk_0,ce_0) <= \#r_app_arg\;
    cellular_reg_0 : process(clk_0,RST)
    begin
      if RST = '1' then
        \#r_rec\ <= std_logic_vector'(x"0000");
      elsif rising_edge(clk_0) then
        if ce_0 then
          \#r_rec\ <= \#r_app_arg_0\
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  current_state <= \#r_rec\;
end;

