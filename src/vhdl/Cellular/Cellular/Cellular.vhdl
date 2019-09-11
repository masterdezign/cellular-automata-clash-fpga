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
       CLOCK         : in cellular_types.clk_system;
       -- reset
       RST           : in cellular_types.rst_system;
       en            : in boolean;
       current_state : out std_logic_vector(15 downto 0));
end;

architecture structural of Cellular is
  -- Cellular.hs:18:1-9
  signal \c$r_rec\       : std_logic_vector(15 downto 0);
  -- FPGA/CellularArray2.hs:(21,1)-(29,29)
  signal prev            : std_logic_vector(15 downto 0);
  signal result          : std_logic_vector(15 downto 0);
  signal \c$tup_app_arg\ : cellular_types.array_of_std_logic_vector_1(0 to 15);
  signal result_0        : cellular_types.array_of_std_logic(0 to 15);
  -- FPGA/CellularArray2.hs:(21,1)-(29,29)
  signal xs              : cellular_types.array_of_std_logic_vector_16(0 to 15);
  -- FPGA/CellularArray2.hs:(21,1)-(29,29)
  signal \c$xs_app_arg\  : cellular_types.array_of_std_logic_vector_16(0 to 15);
  -- Cellular.hs:18:1-9
  signal cnt             : unsigned(23 downto 0);
  signal \c$vec\         : cellular_types.array_of_std_logic_vector_16(0 to 16);
  signal \c$vec_0\       : cellular_types.array_of_std_logic_vector_16(0 to 15);

begin
  -- register begin
  cellular_register : block
    signal cr_rec_reg : std_logic_vector(15 downto 0)  := std_logic_vector'(x"0000") ;
  begin
    \c$r_rec\ <= cr_rec_reg; 
    cr_rec_r : process(CLOCK,RST)
    begin
      if RST =  '1'  then
        cr_rec_reg <= std_logic_vector'(x"0000");
      elsif rising_edge(CLOCK) then
        if (en and (cnt = to_unsigned(0,24))) then
          cr_rec_reg <= prev
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  -- register begin
  cellular_register_0 : block
    signal prev_reg : std_logic_vector(15 downto 0)  := std_logic_vector'(x"0001") ;
  begin
    prev <= prev_reg; 
    prev_r : process(CLOCK,RST)
    begin
      if RST =  '1'  then
        prev_reg <= std_logic_vector'(x"0001");
      elsif rising_edge(CLOCK) then
        if en then
          prev_reg <= result
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  -- concatBitVector begin
  concatbitvectoriter_loop : for i in 0 to (16 - 1) generate
    result(((i * 1) + 1 - 1) downto (i * 1)) <= std_logic_vector'(\c$tup_app_arg\(\c$tup_app_arg\'high - i));
  end generate;
  -- concatBitVector end

  -- map begin
  map_r : for i_0 in \c$tup_app_arg\'range generate
  begin
    \c$tup_app_arg\(i_0) <= std_logic_vector'(0 => result_0(i_0));


  end generate;
  -- map end

  -- map begin
  map_r_0 : for i_1 in result_0'range generate
  begin
    fun : block
      -- FPGA/CellularArray2.hs:(21,1)-(29,29)
      signal wild1  : signed(63 downto 0);
      signal \c$bv\ : std_logic_vector(7 downto 0);
    begin
      wild1 <= (signed(std_logic_vector(resize(unsigned((xs(i_1)(2 downto 0))),64))));

      \c$bv\ <= std_logic_vector'(x"6E");

      -- indexBitVector begin 
      indexbitvector : block
        signal vec_index : integer range 0 to 8-1;
      begin
        vec_index <= to_integer((wild1))
        -- pragma translate_off
                     mod 8
        -- pragma translate_on
                     ;

        result_0(i_1) <= \c$bv\(vec_index);
      end block;
      -- indexBitVector end


    end block;
  end generate;
  -- map end

  \c$vec\ <= cellular_types.array_of_std_logic_vector_16'(std_logic_vector'(std_logic_vector(rotate_left(unsigned(\c$r_rec\),to_integer(to_signed(2,64))))) & \c$xs_app_arg\);

  xs <= \c$vec\(0 to \c$vec\'high - 1);

  \c$vec_0\ <= (xs);

  -- map begin
  map_r_1 : for i_2 in \c$xs_app_arg\'range generate
  begin
    \c$xs_app_arg\(i_2) <= std_logic_vector(rotate_left(unsigned(\c$vec_0\(i_2)),to_integer(to_signed(1,64))));


  end generate;
  -- map end

  -- register begin
  cellular_register_1 : block
    signal cnt_reg : unsigned(23 downto 0)  := to_unsigned(0,24) ;
  begin
    cnt <= cnt_reg; 
    cnt_r : process(CLOCK,RST)
    begin
      if RST =  '1'  then
        cnt_reg <= to_unsigned(0,24);
      elsif rising_edge(CLOCK) then
        if en then
          cnt_reg <= (cnt + to_unsigned(1,24))
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  current_state <= \c$r_rec\;


end;

