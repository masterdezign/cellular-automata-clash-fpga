-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Sep 11 17:38:44 2019
-- Host        : osboxes running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force ./outCellular/proj_impl_netlist.v
-- Design      : CellularTop
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cellular is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Cellular;

architecture STRUCTURE of Cellular is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cellular_register.cr_rec_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register.cr_rec_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \cellular_register.cr_rec_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \cellular_register.cr_rec_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \cellular_register.cr_rec_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \cellular_register_1.cnt_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cellular_register_1.cnt_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal prev_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal result : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cellular_register_1.cnt_reg_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[0]_i_1\ : label is "SWEEP";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[10]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY : boolean;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[10]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[10]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[11]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[11]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[11]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[12]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[12]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[12]\ : label is "CE=NEW";
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[12]_i_1\ : label is "SWEEP";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[13]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[13]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[13]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[14]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[14]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[14]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[15]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[15]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[15]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[16]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[16]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[16]\ : label is "CE=NEW";
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[16]_i_1\ : label is "SWEEP";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[17]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[17]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[17]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[18]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[18]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[18]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[19]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[19]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[19]\ : label is "CE=NEW";
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[20]_i_1\ : label is "SWEEP";
  attribute IS_CLOCK_GATED of \cellular_register_1.cnt_reg_reg[4]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \cellular_register_1.cnt_reg_reg[4]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cellular_register_1.cnt_reg_reg[4]\ : label is "CE=NEW";
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \cellular_register_1.cnt_reg_reg[8]_i_1\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of result_0_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of result_0_10 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of result_0_11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of result_0_12 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of result_0_13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of result_0_14 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of result_0_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of result_0_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of result_0_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of result_0_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of result_0_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of result_0_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of result_0_8 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of result_0_9 : label is "soft_lutpair4";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\cellular_register.cr_rec_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \cellular_register.cr_rec_reg[15]_i_2_n_0\,
      I1 => \cellular_register.cr_rec_reg[15]_i_3_n_0\,
      I2 => \cellular_register.cr_rec_reg[15]_i_4_n_0\,
      I3 => \cellular_register.cr_rec_reg[15]_i_5_n_0\,
      O => \cellular_register.cr_rec_reg[15]_i_1_n_0\
    );
\cellular_register.cr_rec_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(14),
      I1 => \cellular_register_1.cnt_reg_reg\(15),
      I2 => \cellular_register_1.cnt_reg_reg\(12),
      I3 => \cellular_register_1.cnt_reg_reg\(13),
      I4 => \cellular_register_1.cnt_reg_reg\(17),
      I5 => \cellular_register_1.cnt_reg_reg\(16),
      O => \cellular_register.cr_rec_reg[15]_i_2_n_0\
    );
\cellular_register.cr_rec_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(2),
      I1 => \cellular_register_1.cnt_reg_reg\(3),
      I2 => \cellular_register_1.cnt_reg_reg\(0),
      I3 => \cellular_register_1.cnt_reg_reg\(1),
      I4 => \cellular_register_1.cnt_reg_reg\(5),
      I5 => \cellular_register_1.cnt_reg_reg\(4),
      O => \cellular_register.cr_rec_reg[15]_i_3_n_0\
    );
\cellular_register.cr_rec_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(8),
      I1 => \cellular_register_1.cnt_reg_reg\(9),
      I2 => \cellular_register_1.cnt_reg_reg\(6),
      I3 => \cellular_register_1.cnt_reg_reg\(7),
      I4 => \cellular_register_1.cnt_reg_reg\(11),
      I5 => \cellular_register_1.cnt_reg_reg\(10),
      O => \cellular_register.cr_rec_reg[15]_i_4_n_0\
    );
\cellular_register.cr_rec_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(20),
      I1 => \cellular_register_1.cnt_reg_reg\(21),
      I2 => \cellular_register_1.cnt_reg_reg\(18),
      I3 => \cellular_register_1.cnt_reg_reg\(19),
      I4 => \cellular_register_1.cnt_reg_reg\(23),
      I5 => \cellular_register_1.cnt_reg_reg\(22),
      O => \cellular_register.cr_rec_reg[15]_i_5_n_0\
    );
\cellular_register.cr_rec_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(0),
      Q => \^q\(0)
    );
\cellular_register.cr_rec_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(10),
      Q => \^q\(10)
    );
\cellular_register.cr_rec_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(11),
      Q => \^q\(11)
    );
\cellular_register.cr_rec_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(12),
      Q => \^q\(12)
    );
\cellular_register.cr_rec_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(13),
      Q => \^q\(13)
    );
\cellular_register.cr_rec_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(14),
      Q => \^q\(14)
    );
\cellular_register.cr_rec_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(15),
      Q => \^q\(15)
    );
\cellular_register.cr_rec_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(1),
      Q => \^q\(1)
    );
\cellular_register.cr_rec_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(2),
      Q => \^q\(2)
    );
\cellular_register.cr_rec_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(3),
      Q => \^q\(3)
    );
\cellular_register.cr_rec_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(4),
      Q => \^q\(4)
    );
\cellular_register.cr_rec_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(5),
      Q => \^q\(5)
    );
\cellular_register.cr_rec_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(6),
      Q => \^q\(6)
    );
\cellular_register.cr_rec_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(7),
      Q => \^q\(7)
    );
\cellular_register.cr_rec_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(8),
      Q => \^q\(8)
    );
\cellular_register.cr_rec_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register.cr_rec_reg[15]_i_1_n_0\,
      CLR => AR(0),
      D => prev_reg(9),
      Q => \^q\(9)
    );
\cellular_register_0.prev_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => result(0),
      PRE => AR(0),
      Q => prev_reg(0)
    );
\cellular_register_0.prev_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(10),
      Q => prev_reg(10)
    );
\cellular_register_0.prev_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(11),
      Q => prev_reg(11)
    );
\cellular_register_0.prev_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(12),
      Q => prev_reg(12)
    );
\cellular_register_0.prev_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(13),
      Q => prev_reg(13)
    );
\cellular_register_0.prev_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(14),
      Q => prev_reg(14)
    );
\cellular_register_0.prev_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(15),
      Q => prev_reg(15)
    );
\cellular_register_0.prev_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(1),
      Q => prev_reg(1)
    );
\cellular_register_0.prev_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(2),
      Q => prev_reg(2)
    );
\cellular_register_0.prev_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(3),
      Q => prev_reg(3)
    );
\cellular_register_0.prev_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(4),
      Q => prev_reg(4)
    );
\cellular_register_0.prev_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(5),
      Q => prev_reg(5)
    );
\cellular_register_0.prev_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(6),
      Q => prev_reg(6)
    );
\cellular_register_0.prev_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(7),
      Q => prev_reg(7)
    );
\cellular_register_0.prev_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(8),
      Q => prev_reg(8)
    );
\cellular_register_0.prev_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => result(9),
      Q => prev_reg(9)
    );
\cellular_register_1.cnt_reg[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(0),
      O => \cellular_register_1.cnt_reg[0]_i_2_n_0\
    );
\cellular_register_1.cnt_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[0]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(0)
    );
\cellular_register_1.cnt_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cellular_register_1.cnt_reg_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cellular_register_1.cnt_reg_reg[0]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[0]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[0]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[0]_i_1_n_7\,
      S(3 downto 1) => \cellular_register_1.cnt_reg_reg\(3 downto 1),
      S(0) => \cellular_register_1.cnt_reg[0]_i_2_n_0\
    );
\cellular_register_1.cnt_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[8]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(10)
    );
\cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_gate_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cellular_register_1.cnt_reg_reg\(9),
      I1 => \cellular_register_1.cnt_reg_reg\(8),
      I2 => \cellular_register_1.cnt_reg_reg\(6),
      I3 => \cellular_register_1.cnt_reg_reg\(5),
      I4 => \cellular_register_1.cnt_reg_reg\(4),
      I5 => \cellular_register_1.cnt_reg_reg[0]_i_1_n_0\,
      O => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\
    );
\cellular_register_1.cnt_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[8]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(11)
    );
\cellular_register_1.cnt_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[12]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(12)
    );
\cellular_register_1.cnt_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cellular_register_1.cnt_reg_reg[8]_i_1_n_0\,
      CO(3) => \cellular_register_1.cnt_reg_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cellular_register_1.cnt_reg_reg[12]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[12]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[12]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[12]_i_1_n_7\,
      S(3 downto 0) => \cellular_register_1.cnt_reg_reg\(15 downto 12)
    );
\cellular_register_1.cnt_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[12]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(13)
    );
\cellular_register_1.cnt_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[12]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(14)
    );
\cellular_register_1.cnt_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[12]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(15)
    );
\cellular_register_1.cnt_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[16]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(16)
    );
\cellular_register_1.cnt_reg_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cellular_register_1.cnt_reg_reg[12]_i_1_n_0\,
      CO(3) => \cellular_register_1.cnt_reg_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cellular_register_1.cnt_reg_reg[16]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[16]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[16]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[16]_i_1_n_7\,
      S(3 downto 0) => \cellular_register_1.cnt_reg_reg\(19 downto 16)
    );
\cellular_register_1.cnt_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[16]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(17)
    );
\cellular_register_1.cnt_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[16]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(18)
    );
\cellular_register_1.cnt_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[10]_CE_cooolgate_en_sig_1\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[16]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(19)
    );
\cellular_register_1.cnt_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[0]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(1)
    );
\cellular_register_1.cnt_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[20]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(20)
    );
\cellular_register_1.cnt_reg_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cellular_register_1.cnt_reg_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cellular_register_1.cnt_reg_reg[20]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[20]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[20]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[20]_i_1_n_7\,
      S(3 downto 0) => \cellular_register_1.cnt_reg_reg\(23 downto 20)
    );
\cellular_register_1.cnt_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[20]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(21)
    );
\cellular_register_1.cnt_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[20]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(22)
    );
\cellular_register_1.cnt_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[20]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(23)
    );
\cellular_register_1.cnt_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[0]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(2)
    );
\cellular_register_1.cnt_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[0]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(3)
    );
\cellular_register_1.cnt_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cellular_register_1.cnt_reg_reg[0]_i_1_n_0\,
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[4]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(4)
    );
\cellular_register_1.cnt_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cellular_register_1.cnt_reg_reg[0]_i_1_n_0\,
      CO(3) => \cellular_register_1.cnt_reg_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cellular_register_1.cnt_reg_reg[4]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[4]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[4]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => \cellular_register_1.cnt_reg_reg\(7 downto 4)
    );
\cellular_register_1.cnt_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[4]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(5)
    );
\cellular_register_1.cnt_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[4]_i_1_n_5\,
      Q => \cellular_register_1.cnt_reg_reg\(6)
    );
\cellular_register_1.cnt_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[4]_i_1_n_4\,
      Q => \cellular_register_1.cnt_reg_reg\(7)
    );
\cellular_register_1.cnt_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[8]_i_1_n_7\,
      Q => \cellular_register_1.cnt_reg_reg\(8)
    );
\cellular_register_1.cnt_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cellular_register_1.cnt_reg_reg[4]_i_1_n_0\,
      CO(3) => \cellular_register_1.cnt_reg_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cellular_register_1.cnt_reg_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cellular_register_1.cnt_reg_reg[8]_i_1_n_4\,
      O(2) => \cellular_register_1.cnt_reg_reg[8]_i_1_n_5\,
      O(1) => \cellular_register_1.cnt_reg_reg[8]_i_1_n_6\,
      O(0) => \cellular_register_1.cnt_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => \cellular_register_1.cnt_reg_reg\(11 downto 8)
    );
\cellular_register_1.cnt_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \cellular_register_1.cnt_reg_reg[8]_i_1_n_6\,
      Q => \cellular_register_1.cnt_reg_reg\(9)
    );
result_0_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(15),
      O => result(0)
    );
result_0_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => result(1)
    );
result_0_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      I2 => \^q\(9),
      O => result(10)
    );
result_0_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => \^q\(10),
      O => result(11)
    );
result_0_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(11),
      O => result(12)
    );
result_0_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(13),
      I2 => \^q\(12),
      O => result(13)
    );
result_0_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      I2 => \^q\(13),
      O => result(14)
    );
result_0_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(15),
      I2 => \^q\(14),
      O => result(15)
    );
result_0_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => result(2)
    );
result_0_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => result(3)
    );
result_0_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => result(4)
    );
result_0_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(4),
      O => result(5)
    );
result_0_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      O => result(6)
    );
result_0_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      O => result(7)
    );
result_0_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      O => result(8)
    );
result_0_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      I2 => \^q\(8),
      O => result(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CellularTop is
  port (
    clk100 : in STD_LOGIC;
    reset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CellularTop : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of CellularTop : entity is "b746f7dd";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of CellularTop : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of CellularTop : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of CellularTop : entity is 0;
end CellularTop;

architecture STRUCTURE of CellularTop is
  signal clk100_IBUF : STD_LOGIC;
  signal clk100_IBUF_BUFG : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_IBUF : STD_LOGIC;
begin
CELLULAR_inst: entity work.Cellular
     port map (
      AR(0) => reset_IBUF,
      CLK => clk100_IBUF_BUFG,
      Q(15 downto 0) => led_OBUF(15 downto 0)
    );
clk100_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk100_IBUF,
      O => clk100_IBUF_BUFG
    );
clk100_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk100,
      O => clk100_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(10),
      O => led(10)
    );
\led_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(11),
      O => led(11)
    );
\led_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(12),
      O => led(12)
    );
\led_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(13),
      O => led(13)
    );
\led_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(14),
      O => led(14)
    );
\led_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(15),
      O => led(15)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(4),
      O => led(4)
    );
\led_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(5),
      O => led(5)
    );
\led_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(6),
      O => led(6)
    );
\led_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(7),
      O => led(7)
    );
\led_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(8),
      O => led(8)
    );
\led_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(9),
      O => led(9)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
