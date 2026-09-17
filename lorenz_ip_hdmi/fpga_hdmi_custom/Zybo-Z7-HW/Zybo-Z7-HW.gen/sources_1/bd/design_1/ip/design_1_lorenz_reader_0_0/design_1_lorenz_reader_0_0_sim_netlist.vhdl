-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Sep 17 01:47:07 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/Zybo-Z7-HW.gen/sources_1/bd/design_1/ip/design_1_lorenz_reader_0_0/design_1_lorenz_reader_0_0_sim_netlist.vhdl
-- Design      : design_1_lorenz_reader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_integrator is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[25]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_0\ : out STD_LOGIC;
    v1new : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[25]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[25]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \v1_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mult_out__0\ : in STD_LOGIC;
    \adder_out_carry__5_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__2_carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    P : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \adder_out_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \adder_out_carry__5_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \adder_out_carry__5_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_integrator : entity is "integrator";
end design_1_lorenz_reader_0_0_integrator;

architecture STRUCTURE of design_1_lorenz_reader_0_0_integrator is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adder_out : STD_LOGIC_VECTOR ( 26 downto 8 );
  signal \adder_out_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_1\ : STD_LOGIC;
  signal \adder_out_carry__0_n_2\ : STD_LOGIC;
  signal \adder_out_carry__0_n_3\ : STD_LOGIC;
  signal \adder_out_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_1\ : STD_LOGIC;
  signal \adder_out_carry__1_n_2\ : STD_LOGIC;
  signal \adder_out_carry__1_n_3\ : STD_LOGIC;
  signal \adder_out_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_1\ : STD_LOGIC;
  signal \adder_out_carry__2_n_2\ : STD_LOGIC;
  signal \adder_out_carry__2_n_3\ : STD_LOGIC;
  signal \adder_out_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_1\ : STD_LOGIC;
  signal \adder_out_carry__3_n_2\ : STD_LOGIC;
  signal \adder_out_carry__3_n_3\ : STD_LOGIC;
  signal \adder_out_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_1\ : STD_LOGIC;
  signal \adder_out_carry__4_n_2\ : STD_LOGIC;
  signal \adder_out_carry__4_n_3\ : STD_LOGIC;
  signal \adder_out_carry__5_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_n_2\ : STD_LOGIC;
  signal \adder_out_carry__5_n_3\ : STD_LOGIC;
  signal \adder_out_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_4__0_n_0\ : STD_LOGIC;
  signal adder_out_carry_n_0 : STD_LOGIC;
  signal adder_out_carry_n_1 : STD_LOGIC;
  signal adder_out_carry_n_2 : STD_LOGIC;
  signal adder_out_carry_n_3 : STD_LOGIC;
  signal \^v1_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[25]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^v1_reg[26]_0\ : STD_LOGIC;
  signal \^v1_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_adder_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_adder_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_adder_out_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_adder_out_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of adder_out_carry : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__5\ : label is 35;
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  \v1_reg[11]_0\(3 downto 0) <= \^v1_reg[11]_0\(3 downto 0);
  \v1_reg[15]_0\(3 downto 0) <= \^v1_reg[15]_0\(3 downto 0);
  \v1_reg[19]_0\(3 downto 0) <= \^v1_reg[19]_0\(3 downto 0);
  \v1_reg[23]_0\(3 downto 0) <= \^v1_reg[23]_0\(3 downto 0);
  \v1_reg[25]_0\(1 downto 0) <= \^v1_reg[25]_0\(1 downto 0);
  \v1_reg[26]_0\ <= \^v1_reg[26]_0\;
  \v1_reg[7]_0\(3 downto 0) <= \^v1_reg[7]_0\(3 downto 0);
adder_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => adder_out_carry_n_0,
      CO(2) => adder_out_carry_n_1,
      CO(1) => adder_out_carry_n_2,
      CO(0) => adder_out_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^di\(3 downto 0),
      O(3 downto 0) => NLW_adder_out_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \adder_out_carry_i_1__0_n_0\,
      S(2) => \adder_out_carry_i_2__0_n_0\,
      S(1) => \adder_out_carry_i_3__0_n_0\,
      S(0) => \adder_out_carry_i_4__0_n_0\
    );
\adder_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => adder_out_carry_n_0,
      CO(3) => \adder_out_carry__0_n_0\,
      CO(2) => \adder_out_carry__0_n_1\,
      CO(1) => \adder_out_carry__0_n_2\,
      CO(0) => \adder_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[7]_0\(3 downto 0),
      O(3 downto 0) => \NLW_adder_out_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \adder_out_carry__0_i_1__0_n_0\,
      S(2) => \adder_out_carry__0_i_2__0_n_0\,
      S(1) => \adder_out_carry__0_i_3__0_n_0\,
      S(0) => \adder_out_carry__0_i_4__0_n_0\
    );
\adder_out_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(3),
      I1 => P(7),
      O => \adder_out_carry__0_i_1__0_n_0\
    );
\adder_out_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(2),
      I1 => P(6),
      O => \adder_out_carry__0_i_2__0_n_0\
    );
\adder_out_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(1),
      I1 => P(5),
      O => \adder_out_carry__0_i_3__0_n_0\
    );
\adder_out_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(0),
      I1 => P(4),
      O => \adder_out_carry__0_i_4__0_n_0\
    );
\adder_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__0_n_0\,
      CO(3) => \adder_out_carry__1_n_0\,
      CO(2) => \adder_out_carry__1_n_1\,
      CO(1) => \adder_out_carry__1_n_2\,
      CO(0) => \adder_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[11]_0\(3 downto 0),
      O(3 downto 0) => adder_out(11 downto 8),
      S(3) => \adder_out_carry__1_i_1__0_n_0\,
      S(2) => \adder_out_carry__1_i_2__0_n_0\,
      S(1) => \adder_out_carry__1_i_3__0_n_0\,
      S(0) => \adder_out_carry__1_i_4__0_n_0\
    );
\adder_out_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(3),
      I1 => P(11),
      O => \adder_out_carry__1_i_1__0_n_0\
    );
\adder_out_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(2),
      I1 => P(10),
      O => \adder_out_carry__1_i_2__0_n_0\
    );
\adder_out_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(1),
      I1 => P(9),
      O => \adder_out_carry__1_i_3__0_n_0\
    );
\adder_out_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(0),
      I1 => P(8),
      O => \adder_out_carry__1_i_4__0_n_0\
    );
\adder_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__1_n_0\,
      CO(3) => \adder_out_carry__2_n_0\,
      CO(2) => \adder_out_carry__2_n_1\,
      CO(1) => \adder_out_carry__2_n_2\,
      CO(0) => \adder_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[15]_0\(3 downto 0),
      O(3 downto 0) => adder_out(15 downto 12),
      S(3) => \adder_out_carry__2_i_1__0_n_0\,
      S(2) => \adder_out_carry__2_i_2__0_n_0\,
      S(1) => \adder_out_carry__2_i_3__0_n_0\,
      S(0) => \adder_out_carry__2_i_4__0_n_0\
    );
\adder_out_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(3),
      I1 => P(15),
      O => \adder_out_carry__2_i_1__0_n_0\
    );
\adder_out_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(2),
      I1 => P(14),
      O => \adder_out_carry__2_i_2__0_n_0\
    );
\adder_out_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(1),
      I1 => P(13),
      O => \adder_out_carry__2_i_3__0_n_0\
    );
\adder_out_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(0),
      I1 => P(12),
      O => \adder_out_carry__2_i_4__0_n_0\
    );
\adder_out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__2_n_0\,
      CO(3) => \adder_out_carry__3_n_0\,
      CO(2) => \adder_out_carry__3_n_1\,
      CO(1) => \adder_out_carry__3_n_2\,
      CO(0) => \adder_out_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[19]_0\(3 downto 0),
      O(3 downto 0) => adder_out(19 downto 16),
      S(3) => \adder_out_carry__3_i_1__0_n_0\,
      S(2) => \adder_out_carry__3_i_2__0_n_0\,
      S(1) => \adder_out_carry__3_i_3__0_n_0\,
      S(0) => \adder_out_carry__3_i_4__0_n_0\
    );
\adder_out_carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(3),
      I1 => \adder_out_carry__4_0\(2),
      O => \adder_out_carry__3_i_1__0_n_0\
    );
\adder_out_carry__3_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      I1 => \adder_out_carry__4_0\(1),
      O => \adder_out_carry__3_i_2__0_n_0\
    );
\adder_out_carry__3_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => \adder_out_carry__4_0\(0),
      O => \adder_out_carry__3_i_3__0_n_0\
    );
\adder_out_carry__3_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(0),
      I1 => P(16),
      O => \adder_out_carry__3_i_4__0_n_0\
    );
\adder_out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__3_n_0\,
      CO(3) => \adder_out_carry__4_n_0\,
      CO(2) => \adder_out_carry__4_n_1\,
      CO(1) => \adder_out_carry__4_n_2\,
      CO(0) => \adder_out_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[23]_0\(3 downto 0),
      O(3 downto 0) => adder_out(23 downto 20),
      S(3) => \adder_out_carry__4_i_1__0_n_0\,
      S(2) => \adder_out_carry__4_i_2__0_n_0\,
      S(1) => \adder_out_carry__4_i_3__0_n_0\,
      S(0) => \adder_out_carry__4_i_4__0_n_0\
    );
\adder_out_carry__4_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => \adder_out_carry__5_1\(2),
      O => \adder_out_carry__4_i_1__0_n_0\
    );
\adder_out_carry__4_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      I1 => \adder_out_carry__5_1\(1),
      O => \adder_out_carry__4_i_2__0_n_0\
    );
\adder_out_carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      I1 => \adder_out_carry__5_1\(0),
      O => \adder_out_carry__4_i_3__0_n_0\
    );
\adder_out_carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => \adder_out_carry__4_0\(3),
      O => \adder_out_carry__4_i_4__0_n_0\
    );
\adder_out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__4_n_0\,
      CO(3 downto 2) => \NLW_adder_out_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \adder_out_carry__5_n_2\,
      CO(0) => \adder_out_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^v1_reg[25]_0\(1 downto 0),
      O(3) => \NLW_adder_out_carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => adder_out(26 downto 24),
      S(3) => '0',
      S(2) => \adder_out_carry__5_i_1__1_n_0\,
      S(1) => \adder_out_carry__5_i_2__0_n_0\,
      S(0) => \adder_out_carry__5_i_3__0_n_0\
    );
\adder_out_carry__5_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\,
      I1 => \adder_out_carry__5_0\(0),
      O => \adder_out_carry__5_i_1__1_n_0\
    );
\adder_out_carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \adder_out_carry__5_2\(0),
      O => \adder_out_carry__5_i_2__0_n_0\
    );
\adder_out_carry__5_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(0),
      I1 => \adder_out_carry__5_1\(3),
      O => \adder_out_carry__5_i_3__0_n_0\
    );
\adder_out_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(3),
      I1 => P(3),
      O => \adder_out_carry_i_1__0_n_0\
    );
\adder_out_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(2),
      I1 => P(2),
      O => \adder_out_carry_i_2__0_n_0\
    );
\adder_out_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(1),
      I1 => P(1),
      O => \adder_out_carry_i_3__0_n_0\
    );
\adder_out_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => P(0),
      O => \adder_out_carry_i_4__0_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96665AAA"
    )
        port map (
      I0 => \mult_out_inferred__0/i__carry\(0),
      I1 => \^v1_reg[26]_0\,
      I2 => \^v1_reg[25]_0\(1),
      I3 => B(1),
      I4 => B(0),
      O => mult_out(0)
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96665AAA"
    )
        port map (
      I0 => \mult_out_inferred__0/i__carry_0\(0),
      I1 => \^v1_reg[26]_0\,
      I2 => \^v1_reg[25]_0\(1),
      I3 => \mult_out_inferred__0/i__carry_1\(1),
      I4 => \mult_out_inferred__0/i__carry_1\(0),
      O => mult_out_0(0)
    );
\mult_out__0_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(15),
      I1 => \mult_out__0\,
      O => v1new(7)
    );
\mult_out__0_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(14),
      I1 => \mult_out__0\,
      O => v1new(6)
    );
\mult_out__0_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(13),
      I1 => \mult_out__0\,
      O => v1new(5)
    );
\mult_out__0_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(12),
      I1 => \mult_out__0\,
      O => v1new(4)
    );
\mult_out__0_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(11),
      I1 => \mult_out__0\,
      O => v1new(3)
    );
\mult_out__0_i_15__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(10),
      I1 => \mult_out__0\,
      O => v1new(2)
    );
\mult_out__0_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(9),
      I1 => \mult_out__0\,
      O => v1new(1)
    );
\mult_out__0_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(8),
      I1 => \mult_out__0\,
      O => v1new(0)
    );
\mult_out__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(24),
      I1 => \mult_out__0\,
      O => v1new(16)
    );
\mult_out__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(23),
      I1 => \mult_out__0\,
      O => v1new(15)
    );
\mult_out__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(22),
      I1 => \mult_out__0\,
      O => v1new(14)
    );
\mult_out__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(21),
      I1 => \mult_out__0\,
      O => v1new(13)
    );
\mult_out__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(20),
      I1 => \mult_out__0\,
      O => v1new(12)
    );
\mult_out__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(19),
      I1 => \mult_out__0\,
      O => v1new(11)
    );
\mult_out__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(18),
      I1 => \mult_out__0\,
      O => v1new(10)
    );
\mult_out__0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(17),
      I1 => \mult_out__0\,
      O => v1new(9)
    );
\mult_out__0_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out(16),
      I1 => \mult_out__0\,
      O => v1new(8)
    );
\mult_out__11_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => B(2),
      O => \v1_reg[25]_1\(0)
    );
\mult_out__11_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \mult_out__11_carry\(0),
      O => \v1_reg[25]_2\(0)
    );
\mult_out__2_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^v1_reg[26]_0\,
      I1 => B(3),
      O => S(0)
    );
\mult_out__2_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^v1_reg[26]_0\,
      I1 => \mult_out__2_carry\(0),
      O => \v1_reg[26]_1\(0)
    );
\mult_out_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(26),
      I1 => \mult_out__0\,
      O => v1new(18)
    );
\mult_out_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out(25),
      I1 => \mult_out__0\,
      O => v1new(17)
    );
\v1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(0),
      Q => \^di\(0),
      R => '0'
    );
\v1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[11]_1\(2),
      Q => \^v1_reg[11]_0\(2),
      R => '0'
    );
\v1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[11]_1\(3),
      Q => \^v1_reg[11]_0\(3),
      R => '0'
    );
\v1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[15]_1\(0),
      Q => \^v1_reg[15]_0\(0),
      R => '0'
    );
\v1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[15]_1\(1),
      Q => \^v1_reg[15]_0\(1),
      R => '0'
    );
\v1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[15]_1\(2),
      Q => \^v1_reg[15]_0\(2),
      R => '0'
    );
\v1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[15]_1\(3),
      Q => \^v1_reg[15]_0\(3),
      R => '0'
    );
\v1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[19]_1\(0),
      Q => \^v1_reg[19]_0\(0),
      R => '0'
    );
\v1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[19]_1\(1),
      Q => \^v1_reg[19]_0\(1),
      R => '0'
    );
\v1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[19]_1\(2),
      Q => \^v1_reg[19]_0\(2),
      R => '0'
    );
\v1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[19]_1\(3),
      Q => \^v1_reg[19]_0\(3),
      R => '0'
    );
\v1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(1),
      Q => \^di\(1),
      R => '0'
    );
\v1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[23]_1\(0),
      Q => \^v1_reg[23]_0\(0),
      R => '0'
    );
\v1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[23]_1\(1),
      Q => \^v1_reg[23]_0\(1),
      R => '0'
    );
\v1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[23]_1\(2),
      Q => \^v1_reg[23]_0\(2),
      R => '0'
    );
\v1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[23]_1\(3),
      Q => \^v1_reg[23]_0\(3),
      R => '0'
    );
\v1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_2\(0),
      Q => \^v1_reg[25]_0\(0),
      R => '0'
    );
\v1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_2\(1),
      Q => \^v1_reg[25]_0\(1),
      R => '0'
    );
\v1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_2\(2),
      Q => \^v1_reg[26]_0\,
      R => '0'
    );
\v1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(2),
      Q => \^di\(2),
      R => '0'
    );
\v1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(3),
      Q => \^di\(3),
      R => '0'
    );
\v1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[7]_1\(0),
      Q => \^v1_reg[7]_0\(0),
      R => '0'
    );
\v1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[7]_1\(1),
      Q => \^v1_reg[7]_0\(1),
      R => '0'
    );
\v1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[7]_1\(2),
      Q => \^v1_reg[7]_0\(2),
      R => '0'
    );
\v1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[7]_1\(3),
      Q => \^v1_reg[7]_0\(3),
      R => '0'
    );
\v1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[11]_1\(0),
      Q => \^v1_reg[11]_0\(0),
      R => '0'
    );
\v1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[11]_1\(1),
      Q => \^v1_reg[11]_0\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_integrator_0 is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[25]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[17]_0\ : out STD_LOGIC;
    \v1_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[23]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \v1_reg[19]_2\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \v1_reg[25]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[25]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_4\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[23]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[20]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[22]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[22]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mult_out_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mult_out_3 : in STD_LOGIC;
    mult_xrhoz_out : in STD_LOGIC_VECTOR ( 1 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \mult_out_inferred__0/i__carry__2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    P : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_4 : in STD_LOGIC;
    \v1_reg[7]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \adder_out_carry__5_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry__1_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i__carry__3_i_2__4\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_integrator_0 : entity is "integrator";
end design_1_lorenz_reader_0_0_integrator_0;

architecture STRUCTURE of design_1_lorenz_reader_0_0_integrator_0 is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \adder_out_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_1\ : STD_LOGIC;
  signal \adder_out_carry__0_n_2\ : STD_LOGIC;
  signal \adder_out_carry__0_n_3\ : STD_LOGIC;
  signal \adder_out_carry__0_n_4\ : STD_LOGIC;
  signal \adder_out_carry__0_n_5\ : STD_LOGIC;
  signal \adder_out_carry__0_n_6\ : STD_LOGIC;
  signal \adder_out_carry__0_n_7\ : STD_LOGIC;
  signal \adder_out_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_1\ : STD_LOGIC;
  signal \adder_out_carry__1_n_2\ : STD_LOGIC;
  signal \adder_out_carry__1_n_3\ : STD_LOGIC;
  signal \adder_out_carry__1_n_4\ : STD_LOGIC;
  signal \adder_out_carry__1_n_5\ : STD_LOGIC;
  signal \adder_out_carry__1_n_6\ : STD_LOGIC;
  signal \adder_out_carry__1_n_7\ : STD_LOGIC;
  signal \adder_out_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_1\ : STD_LOGIC;
  signal \adder_out_carry__2_n_2\ : STD_LOGIC;
  signal \adder_out_carry__2_n_3\ : STD_LOGIC;
  signal \adder_out_carry__2_n_4\ : STD_LOGIC;
  signal \adder_out_carry__2_n_5\ : STD_LOGIC;
  signal \adder_out_carry__2_n_6\ : STD_LOGIC;
  signal \adder_out_carry__2_n_7\ : STD_LOGIC;
  signal \adder_out_carry__3_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_4__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_1\ : STD_LOGIC;
  signal \adder_out_carry__3_n_2\ : STD_LOGIC;
  signal \adder_out_carry__3_n_3\ : STD_LOGIC;
  signal \adder_out_carry__3_n_4\ : STD_LOGIC;
  signal \adder_out_carry__3_n_5\ : STD_LOGIC;
  signal \adder_out_carry__3_n_6\ : STD_LOGIC;
  signal \adder_out_carry__3_n_7\ : STD_LOGIC;
  signal \adder_out_carry__4_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_4__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_1\ : STD_LOGIC;
  signal \adder_out_carry__4_n_2\ : STD_LOGIC;
  signal \adder_out_carry__4_n_3\ : STD_LOGIC;
  signal \adder_out_carry__4_n_4\ : STD_LOGIC;
  signal \adder_out_carry__4_n_5\ : STD_LOGIC;
  signal \adder_out_carry__4_n_6\ : STD_LOGIC;
  signal \adder_out_carry__4_n_7\ : STD_LOGIC;
  signal \adder_out_carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_n_2\ : STD_LOGIC;
  signal \adder_out_carry__5_n_3\ : STD_LOGIC;
  signal \adder_out_carry__5_n_5\ : STD_LOGIC;
  signal \adder_out_carry__5_n_6\ : STD_LOGIC;
  signal \adder_out_carry__5_n_7\ : STD_LOGIC;
  signal \adder_out_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry_i_4__1_n_0\ : STD_LOGIC;
  signal adder_out_carry_n_0 : STD_LOGIC;
  signal adder_out_carry_n_1 : STD_LOGIC;
  signal adder_out_carry_n_2 : STD_LOGIC;
  signal adder_out_carry_n_3 : STD_LOGIC;
  signal adder_out_carry_n_4 : STD_LOGIC;
  signal adder_out_carry_n_5 : STD_LOGIC;
  signal adder_out_carry_n_6 : STD_LOGIC;
  signal adder_out_carry_n_7 : STD_LOGIC;
  signal \mult_out__11_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_2_n_0\ : STD_LOGIC;
  signal \v1[0]_i_3_n_0\ : STD_LOGIC;
  signal \v1[0]_i_4_n_0\ : STD_LOGIC;
  signal \v1[0]_i_5_n_0\ : STD_LOGIC;
  signal \v1[0]_i_6_n_0\ : STD_LOGIC;
  signal \v1[0]_i_7_n_0\ : STD_LOGIC;
  signal \v1[0]_i_8_n_0\ : STD_LOGIC;
  signal \v1[0]_i_9_n_0\ : STD_LOGIC;
  signal \v1[12]_i_2_n_0\ : STD_LOGIC;
  signal \v1[12]_i_3_n_0\ : STD_LOGIC;
  signal \v1[12]_i_4_n_0\ : STD_LOGIC;
  signal \v1[12]_i_5_n_0\ : STD_LOGIC;
  signal \v1[12]_i_6_n_0\ : STD_LOGIC;
  signal \v1[12]_i_7_n_0\ : STD_LOGIC;
  signal \v1[12]_i_8_n_0\ : STD_LOGIC;
  signal \v1[12]_i_9_n_0\ : STD_LOGIC;
  signal \v1[16]_i_2_n_0\ : STD_LOGIC;
  signal \v1[16]_i_3_n_0\ : STD_LOGIC;
  signal \v1[16]_i_4_n_0\ : STD_LOGIC;
  signal \v1[16]_i_5_n_0\ : STD_LOGIC;
  signal \v1[16]_i_6_n_0\ : STD_LOGIC;
  signal \v1[16]_i_7_n_0\ : STD_LOGIC;
  signal \v1[16]_i_8_n_0\ : STD_LOGIC;
  signal \v1[16]_i_9_n_0\ : STD_LOGIC;
  signal \v1[20]_i_2_n_0\ : STD_LOGIC;
  signal \v1[20]_i_3_n_0\ : STD_LOGIC;
  signal \v1[20]_i_4_n_0\ : STD_LOGIC;
  signal \v1[20]_i_5_n_0\ : STD_LOGIC;
  signal \v1[20]_i_6_n_0\ : STD_LOGIC;
  signal \v1[20]_i_7_n_0\ : STD_LOGIC;
  signal \v1[20]_i_8_n_0\ : STD_LOGIC;
  signal \v1[20]_i_9_n_0\ : STD_LOGIC;
  signal \v1[4]_i_2_n_0\ : STD_LOGIC;
  signal \v1[4]_i_3_n_0\ : STD_LOGIC;
  signal \v1[4]_i_4_n_0\ : STD_LOGIC;
  signal \v1[4]_i_5_n_0\ : STD_LOGIC;
  signal \v1[4]_i_6_n_0\ : STD_LOGIC;
  signal \v1[4]_i_7_n_0\ : STD_LOGIC;
  signal \v1[4]_i_8_n_0\ : STD_LOGIC;
  signal \v1[4]_i_9_n_0\ : STD_LOGIC;
  signal \v1[8]_i_2_n_0\ : STD_LOGIC;
  signal \v1[8]_i_3_n_0\ : STD_LOGIC;
  signal \v1[8]_i_4_n_0\ : STD_LOGIC;
  signal \v1[8]_i_5_n_0\ : STD_LOGIC;
  signal \v1[8]_i_6_n_0\ : STD_LOGIC;
  signal \v1[8]_i_7_n_0\ : STD_LOGIC;
  signal \v1[8]_i_8_n_0\ : STD_LOGIC;
  signal \v1[8]_i_9_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \^v1_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^v1_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^v1_reg[17]_0\ : STD_LOGIC;
  signal \^v1_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^v1_reg[22]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[25]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^v1_reg[25]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[26]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \v1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \^v1_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \v1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_adder_out_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_adder_out_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__2_i_5__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__2_i_5__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of adder_out_carry : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mult_out__11_carry__0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mult_out__11_carry__0_i_11\ : label is "soft_lutpair2";
  attribute HLUTNM : string;
  attribute HLUTNM of \mult_out__11_carry__0_i_5__0\ : label is "lutpair0";
  attribute HLUTNM of \mult_out__11_carry__1_i_4__0\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \v1_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[8]_i_1\ : label is 11;
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  \v1_reg[11]_0\(3 downto 0) <= \^v1_reg[11]_0\(3 downto 0);
  \v1_reg[15]_0\(3 downto 0) <= \^v1_reg[15]_0\(3 downto 0);
  \v1_reg[17]_0\ <= \^v1_reg[17]_0\;
  \v1_reg[19]_0\(3 downto 0) <= \^v1_reg[19]_0\(3 downto 0);
  \v1_reg[22]_0\(3 downto 0) <= \^v1_reg[22]_0\(3 downto 0);
  \v1_reg[23]_0\(3 downto 0) <= \^v1_reg[23]_0\(3 downto 0);
  \v1_reg[25]_0\(1 downto 0) <= \^v1_reg[25]_0\(1 downto 0);
  \v1_reg[25]_1\(3 downto 0) <= \^v1_reg[25]_1\(3 downto 0);
  \v1_reg[26]_0\(0) <= \^v1_reg[26]_0\(0);
  \v1_reg[7]_0\(3 downto 0) <= \^v1_reg[7]_0\(3 downto 0);
adder_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => adder_out_carry_n_0,
      CO(2) => adder_out_carry_n_1,
      CO(1) => adder_out_carry_n_2,
      CO(0) => adder_out_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^di\(3 downto 0),
      O(3) => adder_out_carry_n_4,
      O(2) => adder_out_carry_n_5,
      O(1) => adder_out_carry_n_6,
      O(0) => adder_out_carry_n_7,
      S(3) => \adder_out_carry_i_1__1_n_0\,
      S(2) => \adder_out_carry_i_2__1_n_0\,
      S(1) => \adder_out_carry_i_3__1_n_0\,
      S(0) => \adder_out_carry_i_4__1_n_0\
    );
\adder_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => adder_out_carry_n_0,
      CO(3) => \adder_out_carry__0_n_0\,
      CO(2) => \adder_out_carry__0_n_1\,
      CO(1) => \adder_out_carry__0_n_2\,
      CO(0) => \adder_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[7]_0\(3 downto 0),
      O(3) => \adder_out_carry__0_n_4\,
      O(2) => \adder_out_carry__0_n_5\,
      O(1) => \adder_out_carry__0_n_6\,
      O(0) => \adder_out_carry__0_n_7\,
      S(3) => \adder_out_carry__0_i_1__1_n_0\,
      S(2) => \adder_out_carry__0_i_2__1_n_0\,
      S(1) => \adder_out_carry__0_i_3__1_n_0\,
      S(0) => \adder_out_carry__0_i_4__1_n_0\
    );
\adder_out_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(3),
      I1 => \v1_reg[7]_2\(3),
      O => \adder_out_carry__0_i_1__1_n_0\
    );
\adder_out_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(2),
      I1 => \v1_reg[7]_2\(2),
      O => \adder_out_carry__0_i_2__1_n_0\
    );
\adder_out_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(1),
      I1 => \v1_reg[7]_2\(1),
      O => \adder_out_carry__0_i_3__1_n_0\
    );
\adder_out_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(0),
      I1 => \v1_reg[7]_2\(0),
      O => \adder_out_carry__0_i_4__1_n_0\
    );
\adder_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__0_n_0\,
      CO(3) => \adder_out_carry__1_n_0\,
      CO(2) => \adder_out_carry__1_n_1\,
      CO(1) => \adder_out_carry__1_n_2\,
      CO(0) => \adder_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[11]_0\(3 downto 0),
      O(3) => \adder_out_carry__1_n_4\,
      O(2) => \adder_out_carry__1_n_5\,
      O(1) => \adder_out_carry__1_n_6\,
      O(0) => \adder_out_carry__1_n_7\,
      S(3) => \adder_out_carry__1_i_1__1_n_0\,
      S(2) => \adder_out_carry__1_i_2__1_n_0\,
      S(1) => \adder_out_carry__1_i_3__1_n_0\,
      S(0) => \adder_out_carry__1_i_4__1_n_0\
    );
\adder_out_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(3),
      I1 => \v1_reg[11]_2\(3),
      O => \adder_out_carry__1_i_1__1_n_0\
    );
\adder_out_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(2),
      I1 => \v1_reg[11]_2\(2),
      O => \adder_out_carry__1_i_2__1_n_0\
    );
\adder_out_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(1),
      I1 => \v1_reg[11]_2\(1),
      O => \adder_out_carry__1_i_3__1_n_0\
    );
\adder_out_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(0),
      I1 => \v1_reg[11]_2\(0),
      O => \adder_out_carry__1_i_4__1_n_0\
    );
\adder_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__1_n_0\,
      CO(3) => \adder_out_carry__2_n_0\,
      CO(2) => \adder_out_carry__2_n_1\,
      CO(1) => \adder_out_carry__2_n_2\,
      CO(0) => \adder_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[15]_0\(3 downto 0),
      O(3) => \adder_out_carry__2_n_4\,
      O(2) => \adder_out_carry__2_n_5\,
      O(1) => \adder_out_carry__2_n_6\,
      O(0) => \adder_out_carry__2_n_7\,
      S(3) => \adder_out_carry__2_i_1__1_n_0\,
      S(2) => \adder_out_carry__2_i_2__1_n_0\,
      S(1) => \adder_out_carry__2_i_3__1_n_0\,
      S(0) => \adder_out_carry__2_i_4__1_n_0\
    );
\adder_out_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(3),
      I1 => \v1_reg[15]_2\(3),
      O => \adder_out_carry__2_i_1__1_n_0\
    );
\adder_out_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(2),
      I1 => \v1_reg[15]_2\(2),
      O => \adder_out_carry__2_i_2__1_n_0\
    );
\adder_out_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(1),
      I1 => \v1_reg[15]_2\(1),
      O => \adder_out_carry__2_i_3__1_n_0\
    );
\adder_out_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(0),
      I1 => \v1_reg[15]_2\(0),
      O => \adder_out_carry__2_i_4__1_n_0\
    );
\adder_out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__2_n_0\,
      CO(3) => \adder_out_carry__3_n_0\,
      CO(2) => \adder_out_carry__3_n_1\,
      CO(1) => \adder_out_carry__3_n_2\,
      CO(0) => \adder_out_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[19]_0\(3 downto 0),
      O(3) => \adder_out_carry__3_n_4\,
      O(2) => \adder_out_carry__3_n_5\,
      O(1) => \adder_out_carry__3_n_6\,
      O(0) => \adder_out_carry__3_n_7\,
      S(3) => \adder_out_carry__3_i_1__1_n_0\,
      S(2) => \adder_out_carry__3_i_2__1_n_0\,
      S(1) => \adder_out_carry__3_i_3__1_n_0\,
      S(0) => \adder_out_carry__3_i_4__1_n_0\
    );
\adder_out_carry__3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(3),
      I1 => \v1_reg[19]_3\(3),
      O => \adder_out_carry__3_i_1__1_n_0\
    );
\adder_out_carry__3_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      I1 => \v1_reg[19]_3\(2),
      O => \adder_out_carry__3_i_2__1_n_0\
    );
\adder_out_carry__3_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => \v1_reg[19]_3\(1),
      O => \adder_out_carry__3_i_3__1_n_0\
    );
\adder_out_carry__3_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(0),
      I1 => \v1_reg[19]_3\(0),
      O => \adder_out_carry__3_i_4__1_n_0\
    );
\adder_out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__3_n_0\,
      CO(3) => \adder_out_carry__4_n_0\,
      CO(2) => \adder_out_carry__4_n_1\,
      CO(1) => \adder_out_carry__4_n_2\,
      CO(0) => \adder_out_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[23]_0\(3 downto 0),
      O(3) => \adder_out_carry__4_n_4\,
      O(2) => \adder_out_carry__4_n_5\,
      O(1) => \adder_out_carry__4_n_6\,
      O(0) => \adder_out_carry__4_n_7\,
      S(3) => \adder_out_carry__4_i_1__1_n_0\,
      S(2) => \adder_out_carry__4_i_2__1_n_0\,
      S(1) => \adder_out_carry__4_i_3__1_n_0\,
      S(0) => \adder_out_carry__4_i_4__1_n_0\
    );
\adder_out_carry__4_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => \v1_reg[23]_3\(3),
      O => \adder_out_carry__4_i_1__1_n_0\
    );
\adder_out_carry__4_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      I1 => \v1_reg[23]_3\(2),
      O => \adder_out_carry__4_i_2__1_n_0\
    );
\adder_out_carry__4_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      I1 => \v1_reg[23]_3\(1),
      O => \adder_out_carry__4_i_3__1_n_0\
    );
\adder_out_carry__4_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => \v1_reg[23]_3\(0),
      O => \adder_out_carry__4_i_4__1_n_0\
    );
\adder_out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__4_n_0\,
      CO(3 downto 2) => \NLW_adder_out_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \adder_out_carry__5_n_2\,
      CO(0) => \adder_out_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^v1_reg[25]_0\(1 downto 0),
      O(3) => \NLW_adder_out_carry__5_O_UNCONNECTED\(3),
      O(2) => \adder_out_carry__5_n_5\,
      O(1) => \adder_out_carry__5_n_6\,
      O(0) => \adder_out_carry__5_n_7\,
      S(3) => '0',
      S(2) => \adder_out_carry__5_i_1__0_n_0\,
      S(1) => \adder_out_carry__5_i_2__1_n_0\,
      S(0) => \adder_out_carry__5_i_3__1_n_0\
    );
\adder_out_carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => \adder_out_carry__5_0\(2),
      O => \adder_out_carry__5_i_1__0_n_0\
    );
\adder_out_carry__5_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \adder_out_carry__5_0\(1),
      O => \adder_out_carry__5_i_2__1_n_0\
    );
\adder_out_carry__5_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(0),
      I1 => \adder_out_carry__5_0\(0),
      O => \adder_out_carry__5_i_3__1_n_0\
    );
\adder_out_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(3),
      I1 => \v1_reg[3]_1\(3),
      O => \adder_out_carry_i_1__1_n_0\
    );
\adder_out_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(2),
      I1 => \v1_reg[3]_1\(2),
      O => \adder_out_carry_i_2__1_n_0\
    );
\adder_out_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(1),
      I1 => \v1_reg[3]_1\(1),
      O => \adder_out_carry_i_3__1_n_0\
    );
\adder_out_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \v1_reg[3]_1\(0),
      O => \adder_out_carry_i_4__1_n_0\
    );
\diff_y_x_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[7]_0\(3),
      I1 => v1_reg_1(7),
      O => \v1_reg[7]_1\(3)
    );
\diff_y_x_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[7]_0\(2),
      I1 => v1_reg_1(6),
      O => \v1_reg[7]_1\(2)
    );
\diff_y_x_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[7]_0\(1),
      I1 => v1_reg_1(5),
      O => \v1_reg[7]_1\(1)
    );
\diff_y_x_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[7]_0\(0),
      I1 => v1_reg_1(4),
      O => \v1_reg[7]_1\(0)
    );
\diff_y_x_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[11]_0\(3),
      I1 => v1_reg_1(11),
      O => \v1_reg[11]_1\(3)
    );
\diff_y_x_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[11]_0\(2),
      I1 => v1_reg_1(10),
      O => \v1_reg[11]_1\(2)
    );
\diff_y_x_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[11]_0\(1),
      I1 => v1_reg_1(9),
      O => \v1_reg[11]_1\(1)
    );
\diff_y_x_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[11]_0\(0),
      I1 => v1_reg_1(8),
      O => \v1_reg[11]_1\(0)
    );
\diff_y_x_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[15]_0\(3),
      I1 => v1_reg_1(15),
      O => \v1_reg[15]_1\(3)
    );
\diff_y_x_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[15]_0\(2),
      I1 => v1_reg_1(14),
      O => \v1_reg[15]_1\(2)
    );
\diff_y_x_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[15]_0\(1),
      I1 => v1_reg_1(13),
      O => \v1_reg[15]_1\(1)
    );
\diff_y_x_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[15]_0\(0),
      I1 => v1_reg_1(12),
      O => \v1_reg[15]_1\(0)
    );
\diff_y_x_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[19]_0\(3),
      I1 => v1_reg_1(19),
      O => \v1_reg[19]_1\(3)
    );
\diff_y_x_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      I1 => v1_reg_1(18),
      O => \v1_reg[19]_1\(2)
    );
\diff_y_x_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => v1_reg_1(17),
      O => \v1_reg[19]_1\(1)
    );
\diff_y_x_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[19]_0\(0),
      I1 => v1_reg_1(16),
      O => \v1_reg[19]_1\(0)
    );
\diff_y_x_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => v1_reg_1(23),
      O => \v1_reg[23]_1\(3)
    );
\diff_y_x_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      I1 => v1_reg_1(22),
      O => \v1_reg[23]_1\(2)
    );
\diff_y_x_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      I1 => v1_reg_1(21),
      O => \v1_reg[23]_1\(1)
    );
\diff_y_x_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => v1_reg_1(20),
      O => \v1_reg[23]_1\(0)
    );
\diff_y_x_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => mult_out_3,
      O => \v1_reg[26]_3\(2)
    );
\diff_y_x_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => mult_out_2(1),
      O => \v1_reg[26]_3\(1)
    );
\diff_y_x_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[25]_0\(0),
      I1 => mult_out_2(0),
      O => \v1_reg[26]_3\(0)
    );
diff_y_x_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(3),
      I1 => v1_reg_1(3),
      O => \v1_reg[3]_0\(3)
    );
diff_y_x_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(2),
      I1 => v1_reg_1(2),
      O => \v1_reg[3]_0\(2)
    );
diff_y_x_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(1),
      I1 => v1_reg_1(1),
      O => \v1_reg[3]_0\(1)
    );
diff_y_x_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(0),
      I1 => v1_reg_1(0),
      O => \v1_reg[3]_0\(0)
    );
\funct_y_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => mult_xrhoz_out(0),
      O => \v1_reg[26]_2\(0)
    );
\funct_y_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => mult_xrhoz_out(1),
      O => \v1_reg[26]_1\(0)
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => P(1),
      I1 => \mult_out_inferred__0/i__carry__2\(1),
      I2 => \mult_out_inferred__0/i__carry__2\(0),
      O => mult_out_1(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mult_out_inferred__0/i__carry__2\(1),
      O => \v1_reg[25]_2\(0)
    );
\i__carry__2_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out_inferred__0/i__carry__2\(1),
      I1 => P(3),
      O => mult_out(1)
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out_inferred__0/i__carry__2\(1),
      I1 => P(2),
      O => mult_out(0)
    );
\i__carry__2_i_5__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__3_i_2__4\(0),
      CO(3 downto 1) => \NLW_i__carry__2_i_5__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out__11_carry__1\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i__carry__2_i_5__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => P(0),
      I1 => \mult_out_inferred__0/i__carry__2\(1),
      I2 => \mult_out_inferred__0/i__carry__2\(0),
      O => mult_out_0(0)
    );
\mult_out__11_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => \^v1_reg[25]_0\(1),
      I2 => mult_out_3,
      I3 => mult_out_2(1),
      I4 => \^v1_reg[25]_0\(0),
      O => \mult_out__11_carry__0_i_10_n_0\
    );
\mult_out__11_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC04C8C8"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => mult_out_3,
      I2 => \^v1_reg[25]_0\(0),
      I3 => mult_out_2(1),
      I4 => \^v1_reg[25]_0\(1),
      O => \mult_out__11_carry__0_i_11_n_0\
    );
\mult_out__11_carry__0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \mult_out__11_carry__1_0\(0),
      I2 => \mult_out__11_carry__0_i_10_n_0\,
      O => \^v1_reg[22]_0\(3)
    );
\mult_out__11_carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1771717177111111"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \^v1_reg[17]_0\,
      I2 => \^v1_reg[23]_0\(3),
      I3 => \^v1_reg[25]_0\(0),
      I4 => mult_out_2(1),
      I5 => mult_out_3,
      O => \^v1_reg[22]_0\(2)
    );
\mult_out__11_carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969699666666"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \^v1_reg[17]_0\,
      I2 => \^v1_reg[23]_0\(3),
      I3 => \^v1_reg[25]_0\(0),
      I4 => mult_out_2(1),
      I5 => mult_out_3,
      O => \^v1_reg[22]_0\(1)
    );
\mult_out__11_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777888877788888"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => mult_out_2(1),
      I2 => \^v1_reg[19]_0\(2),
      I3 => \^v1_reg[19]_0\(3),
      I4 => mult_out_3,
      I5 => \^v1_reg[19]_0\(1),
      O => \^v1_reg[22]_0\(0)
    );
\mult_out__11_carry__0_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"963C3C69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \mult_out__11_carry__1_0\(1),
      I2 => \mult_out__11_carry__0_i_11_n_0\,
      I3 => \mult_out__11_carry__0_i_10_n_0\,
      I4 => \mult_out__11_carry__1_0\(0),
      O => \v1_reg[22]_1\(3)
    );
\mult_out__11_carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^v1_reg[22]_0\(2),
      I1 => \mult_out__11_carry__0_i_10_n_0\,
      I2 => \mult_out__11_carry__1_0\(0),
      I3 => \mult_out__11_carry__0_i_9__0_n_0\,
      O => \v1_reg[22]_1\(2)
    );
\mult_out__11_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55AC33C0FF0"
    )
        port map (
      I0 => mult_out_3,
      I1 => \^v1_reg[25]_0\(0),
      I2 => \mult_out__11_carry__0_i_9__0_n_0\,
      I3 => \^v1_reg[17]_0\,
      I4 => mult_out_2(1),
      I5 => \^v1_reg[23]_0\(3),
      O => \v1_reg[22]_1\(1)
    );
\mult_out__11_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959AAAA5966AAAA"
    )
        port map (
      I0 => \^v1_reg[22]_0\(0),
      I1 => \^v1_reg[23]_0\(2),
      I2 => mult_out_2(1),
      I3 => \^v1_reg[23]_0\(1),
      I4 => mult_out_3,
      I5 => \^v1_reg[23]_0\(0),
      O => \v1_reg[22]_1\(0)
    );
\mult_out__11_carry__0_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F1F"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      I1 => \^v1_reg[23]_0\(1),
      I2 => mult_out_3,
      I3 => \^v1_reg[23]_0\(0),
      O => \mult_out__11_carry__0_i_9__0_n_0\
    );
\mult_out__11_carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \^v1_reg[25]_0\(0),
      I2 => \^v1_reg[23]_0\(3),
      I3 => mult_out_3,
      O => \^v1_reg[25]_1\(3)
    );
\mult_out__11_carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \^v1_reg[25]_1\(3),
      I2 => CO(0),
      O => \^v1_reg[25]_1\(2)
    );
\mult_out__11_carry__1_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \^v1_reg[25]_1\(3),
      I2 => CO(0),
      O => \^v1_reg[25]_1\(1)
    );
\mult_out__11_carry__1_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9__0_n_0\,
      I1 => \mult_out__11_carry__1_0\(1),
      I2 => \mult_out__11_carry__0_i_11_n_0\,
      O => \^v1_reg[25]_1\(0)
    );
\mult_out__11_carry__1_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => CO(0),
      I1 => \mult_out__11_carry__0_i_9__0_n_0\,
      I2 => \^v1_reg[25]_1\(3),
      O => \v1_reg[22]_2\(3)
    );
\mult_out__11_carry__1_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => CO(0),
      I1 => \^v1_reg[25]_1\(3),
      I2 => \mult_out__11_carry__0_i_9__0_n_0\,
      O => \v1_reg[22]_2\(2)
    );
\mult_out__11_carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"366C"
    )
        port map (
      I0 => \mult_out__11_carry__1_0\(2),
      I1 => CO(0),
      I2 => \^v1_reg[25]_1\(3),
      I3 => \mult_out__11_carry__0_i_9__0_n_0\,
      O => \v1_reg[22]_2\(1)
    );
\mult_out__11_carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^v1_reg[25]_1\(0),
      I1 => \mult_out__11_carry__1_0\(2),
      I2 => \^v1_reg[25]_1\(3),
      I3 => \mult_out__11_carry__0_i_9__0_n_0\,
      O => \v1_reg[22]_2\(0)
    );
\mult_out__11_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => \^v1_reg[23]_0\(2),
      I2 => mult_out_3,
      I3 => mult_out_2(1),
      I4 => \^v1_reg[23]_0\(1),
      O => \v1_reg[20]_0\(1)
    );
\mult_out__11_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => mult_out_3,
      I2 => \^v1_reg[23]_0\(1),
      I3 => mult_out_2(1),
      O => \v1_reg[20]_0\(0)
    );
\mult_out__11_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CD06CA0E32F935F"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      I1 => mult_out_2(1),
      I2 => mult_out_3,
      I3 => \^v1_reg[23]_0\(2),
      I4 => \^v1_reg[23]_0\(0),
      I5 => \^v1_reg[17]_0\,
      O => S(3)
    );
\mult_out__11_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78888777"
    )
        port map (
      I0 => mult_out_2(1),
      I1 => \^v1_reg[23]_0\(1),
      I2 => mult_out_3,
      I3 => \^v1_reg[23]_0\(0),
      I4 => \^v1_reg[17]_0\,
      O => S(2)
    );
\mult_out__11_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA0F0056AA3C00"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => \^v1_reg[19]_0\(1),
      I2 => \^v1_reg[19]_0\(3),
      I3 => mult_out_3,
      I4 => mult_out_2(1),
      I5 => \^v1_reg[19]_0\(2),
      O => S(1)
    );
\mult_out__11_carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => \^v1_reg[19]_0\(3),
      I2 => mult_out_3,
      I3 => mult_out_2(1),
      I4 => \^v1_reg[19]_0\(2),
      O => S(0)
    );
\mult_out__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__5_n_5\,
      I1 => mult_out_4,
      O => B(9)
    );
\mult_out__1_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_6\,
      I1 => mult_out_4,
      O => B(0)
    );
\mult_out__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__5_n_6\,
      I1 => mult_out_4,
      O => B(8)
    );
\mult_out__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__5_n_7\,
      I1 => mult_out_4,
      O => B(7)
    );
\mult_out__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_4\,
      I1 => mult_out_4,
      O => B(6)
    );
\mult_out__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_5\,
      I1 => mult_out_4,
      O => B(5)
    );
\mult_out__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_6\,
      I1 => mult_out_4,
      O => B(4)
    );
\mult_out__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_7\,
      I1 => mult_out_4,
      O => B(3)
    );
\mult_out__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_4\,
      I1 => mult_out_4,
      O => B(2)
    );
\mult_out__1_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_5\,
      I1 => mult_out_4,
      O => B(1)
    );
\mult_out__2_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3337"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => mult_out_3,
      I2 => \^v1_reg[19]_0\(3),
      I3 => \^v1_reg[19]_0\(2),
      O => \^v1_reg[17]_0\
    );
\mult_out__2_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777888877788888"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => mult_out_2(1),
      I2 => \^v1_reg[19]_0\(2),
      I3 => \^v1_reg[19]_0\(3),
      I4 => mult_out_3,
      I5 => \^v1_reg[19]_0\(1),
      O => \v1_reg[26]_4\(1)
    );
\mult_out__2_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      I1 => \^v1_reg[19]_0\(3),
      I2 => mult_out_3,
      I3 => \^v1_reg[19]_0\(1),
      O => \v1_reg[26]_4\(0)
    );
\mult_out_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__0_n_4\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(7)
    );
\mult_out_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__0_n_5\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(6)
    );
\mult_out_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__0_n_6\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(5)
    );
\mult_out_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__0_n_7\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(4)
    );
\mult_out_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out_carry_n_4,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(3)
    );
\mult_out_i_15__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out_carry_n_5,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(2)
    );
\mult_out_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => adder_out_carry_n_6,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(1)
    );
\mult_out_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => adder_out_carry_n_7,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(0)
    );
\mult_out_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__3_n_7\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(16)
    );
\mult_out_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__2_n_4\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(15)
    );
mult_out_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_5\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(14)
    );
mult_out_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_6\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(13)
    );
mult_out_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__2_n_7\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(12)
    );
mult_out_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__1_n_4\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(11)
    );
\mult_out_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_5\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(10)
    );
\mult_out_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_6\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(9)
    );
\mult_out_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__1_n_7\,
      I1 => mult_out_4,
      O => \v1_reg[19]_2\(8)
    );
\v1[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_1\(3),
      I1 => mult_out_4,
      O => \v1[0]_i_2_n_0\
    );
\v1[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_1\(2),
      I1 => mult_out_4,
      O => \v1[0]_i_3_n_0\
    );
\v1[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_1\(1),
      I1 => mult_out_4,
      O => \v1[0]_i_4_n_0\
    );
\v1[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_1\(0),
      I1 => mult_out_4,
      O => \v1[0]_i_5_n_0\
    );
\v1[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[3]_1\(3),
      I1 => \^di\(3),
      I2 => mult_out_4,
      O => \v1[0]_i_6_n_0\
    );
\v1[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_1\(2),
      I1 => mult_out_4,
      I2 => \^di\(2),
      O => \v1[0]_i_7_n_0\
    );
\v1[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[3]_1\(1),
      I1 => \^di\(1),
      I2 => mult_out_4,
      O => \v1[0]_i_8_n_0\
    );
\v1[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_1\(0),
      I1 => mult_out_4,
      I2 => \^di\(0),
      O => \v1[0]_i_9_n_0\
    );
\v1[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_2\(3),
      I1 => mult_out_4,
      O => \v1[12]_i_2_n_0\
    );
\v1[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_2\(2),
      I1 => mult_out_4,
      O => \v1[12]_i_3_n_0\
    );
\v1[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_2\(1),
      I1 => mult_out_4,
      O => \v1[12]_i_4_n_0\
    );
\v1[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_2\(0),
      I1 => mult_out_4,
      O => \v1[12]_i_5_n_0\
    );
\v1[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[15]_2\(3),
      I1 => \^v1_reg[15]_0\(3),
      I2 => mult_out_4,
      O => \v1[12]_i_6_n_0\
    );
\v1[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_2\(2),
      I1 => mult_out_4,
      I2 => \^v1_reg[15]_0\(2),
      O => \v1[12]_i_7_n_0\
    );
\v1[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_2\(1),
      I1 => mult_out_4,
      I2 => \^v1_reg[15]_0\(1),
      O => \v1[12]_i_8_n_0\
    );
\v1[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[15]_2\(0),
      I1 => \^v1_reg[15]_0\(0),
      I2 => mult_out_4,
      O => \v1[12]_i_9_n_0\
    );
\v1[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_3\(3),
      I1 => mult_out_4,
      O => \v1[16]_i_2_n_0\
    );
\v1[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_3\(2),
      I1 => mult_out_4,
      O => \v1[16]_i_3_n_0\
    );
\v1[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_3\(1),
      I1 => mult_out_4,
      O => \v1[16]_i_4_n_0\
    );
\v1[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_3\(0),
      I1 => mult_out_4,
      O => \v1[16]_i_5_n_0\
    );
\v1[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_3\(3),
      I1 => mult_out_4,
      I2 => \^v1_reg[19]_0\(3),
      O => \v1[16]_i_6_n_0\
    );
\v1[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_3\(2),
      I1 => mult_out_4,
      I2 => \^v1_reg[19]_0\(2),
      O => \v1[16]_i_7_n_0\
    );
\v1[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_3\(1),
      I1 => mult_out_4,
      I2 => \^v1_reg[19]_0\(1),
      O => \v1[16]_i_8_n_0\
    );
\v1[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[19]_3\(0),
      I1 => \^v1_reg[19]_0\(0),
      I2 => mult_out_4,
      O => \v1[16]_i_9_n_0\
    );
\v1[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_3\(3),
      I1 => mult_out_4,
      O => \v1[20]_i_2_n_0\
    );
\v1[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_3\(2),
      I1 => mult_out_4,
      O => \v1[20]_i_3_n_0\
    );
\v1[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_3\(1),
      I1 => mult_out_4,
      O => \v1[20]_i_4_n_0\
    );
\v1[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_3\(0),
      I1 => mult_out_4,
      O => \v1[20]_i_5_n_0\
    );
\v1[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_3\(3),
      I1 => mult_out_4,
      I2 => \^v1_reg[23]_0\(3),
      O => \v1[20]_i_6_n_0\
    );
\v1[20]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_3\(2),
      I1 => mult_out_4,
      I2 => \^v1_reg[23]_0\(2),
      O => \v1[20]_i_7_n_0\
    );
\v1[20]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_3\(1),
      I1 => mult_out_4,
      I2 => \^v1_reg[23]_0\(1),
      O => \v1[20]_i_8_n_0\
    );
\v1[20]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_3\(0),
      I1 => mult_out_4,
      I2 => \^v1_reg[23]_0\(0),
      O => \v1[20]_i_9_n_0\
    );
\v1[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_2\(3),
      I1 => mult_out_4,
      O => \v1[4]_i_2_n_0\
    );
\v1[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_2\(2),
      I1 => mult_out_4,
      O => \v1[4]_i_3_n_0\
    );
\v1[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_2\(1),
      I1 => mult_out_4,
      O => \v1[4]_i_4_n_0\
    );
\v1[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_2\(0),
      I1 => mult_out_4,
      O => \v1[4]_i_5_n_0\
    );
\v1[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[7]_2\(3),
      I1 => \^v1_reg[7]_0\(3),
      I2 => mult_out_4,
      O => \v1[4]_i_6_n_0\
    );
\v1[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_2\(2),
      I1 => mult_out_4,
      I2 => \^v1_reg[7]_0\(2),
      O => \v1[4]_i_7_n_0\
    );
\v1[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_2\(1),
      I1 => mult_out_4,
      I2 => \^v1_reg[7]_0\(1),
      O => \v1[4]_i_8_n_0\
    );
\v1[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[7]_2\(0),
      I1 => \^v1_reg[7]_0\(0),
      I2 => mult_out_4,
      O => \v1[4]_i_9_n_0\
    );
\v1[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_2\(3),
      I1 => mult_out_4,
      O => \v1[8]_i_2_n_0\
    );
\v1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_2\(2),
      I1 => mult_out_4,
      O => \v1[8]_i_3_n_0\
    );
\v1[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_2\(1),
      I1 => mult_out_4,
      O => \v1[8]_i_4_n_0\
    );
\v1[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_2\(0),
      I1 => mult_out_4,
      O => \v1[8]_i_5_n_0\
    );
\v1[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[11]_2\(3),
      I1 => \^v1_reg[11]_0\(3),
      I2 => mult_out_4,
      O => \v1[8]_i_6_n_0\
    );
\v1[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_2\(2),
      I1 => mult_out_4,
      I2 => \^v1_reg[11]_0\(2),
      O => \v1[8]_i_7_n_0\
    );
\v1[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_2\(1),
      I1 => mult_out_4,
      I2 => \^v1_reg[11]_0\(1),
      O => \v1[8]_i_8_n_0\
    );
\v1[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[11]_2\(0),
      I1 => \^v1_reg[11]_0\(0),
      I2 => mult_out_4,
      O => \v1[8]_i_9_n_0\
    );
\v1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1_n_7\,
      Q => \^di\(0),
      R => '0'
    );
\v1_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v1_reg[0]_i_1_n_0\,
      CO(2) => \v1_reg[0]_i_1_n_1\,
      CO(1) => \v1_reg[0]_i_1_n_2\,
      CO(0) => \v1_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[0]_i_2_n_0\,
      DI(2) => \v1[0]_i_3_n_0\,
      DI(1) => \v1[0]_i_4_n_0\,
      DI(0) => \v1[0]_i_5_n_0\,
      O(3) => \v1_reg[0]_i_1_n_4\,
      O(2) => \v1_reg[0]_i_1_n_5\,
      O(1) => \v1_reg[0]_i_1_n_6\,
      O(0) => \v1_reg[0]_i_1_n_7\,
      S(3) => \v1[0]_i_6_n_0\,
      S(2) => \v1[0]_i_7_n_0\,
      S(1) => \v1[0]_i_8_n_0\,
      S(0) => \v1[0]_i_9_n_0\
    );
\v1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1_n_5\,
      Q => \^v1_reg[11]_0\(2),
      R => '0'
    );
\v1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1_n_4\,
      Q => \^v1_reg[11]_0\(3),
      R => '0'
    );
\v1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1_n_7\,
      Q => \^v1_reg[15]_0\(0),
      R => '0'
    );
\v1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[8]_i_1_n_0\,
      CO(3) => \v1_reg[12]_i_1_n_0\,
      CO(2) => \v1_reg[12]_i_1_n_1\,
      CO(1) => \v1_reg[12]_i_1_n_2\,
      CO(0) => \v1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[12]_i_2_n_0\,
      DI(2) => \v1[12]_i_3_n_0\,
      DI(1) => \v1[12]_i_4_n_0\,
      DI(0) => \v1[12]_i_5_n_0\,
      O(3) => \v1_reg[12]_i_1_n_4\,
      O(2) => \v1_reg[12]_i_1_n_5\,
      O(1) => \v1_reg[12]_i_1_n_6\,
      O(0) => \v1_reg[12]_i_1_n_7\,
      S(3) => \v1[12]_i_6_n_0\,
      S(2) => \v1[12]_i_7_n_0\,
      S(1) => \v1[12]_i_8_n_0\,
      S(0) => \v1[12]_i_9_n_0\
    );
\v1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1_n_6\,
      Q => \^v1_reg[15]_0\(1),
      R => '0'
    );
\v1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1_n_5\,
      Q => \^v1_reg[15]_0\(2),
      R => '0'
    );
\v1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1_n_4\,
      Q => \^v1_reg[15]_0\(3),
      R => '0'
    );
\v1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1_n_7\,
      Q => \^v1_reg[19]_0\(0),
      R => '0'
    );
\v1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[12]_i_1_n_0\,
      CO(3) => \v1_reg[16]_i_1_n_0\,
      CO(2) => \v1_reg[16]_i_1_n_1\,
      CO(1) => \v1_reg[16]_i_1_n_2\,
      CO(0) => \v1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[16]_i_2_n_0\,
      DI(2) => \v1[16]_i_3_n_0\,
      DI(1) => \v1[16]_i_4_n_0\,
      DI(0) => \v1[16]_i_5_n_0\,
      O(3) => \v1_reg[16]_i_1_n_4\,
      O(2) => \v1_reg[16]_i_1_n_5\,
      O(1) => \v1_reg[16]_i_1_n_6\,
      O(0) => \v1_reg[16]_i_1_n_7\,
      S(3) => \v1[16]_i_6_n_0\,
      S(2) => \v1[16]_i_7_n_0\,
      S(1) => \v1[16]_i_8_n_0\,
      S(0) => \v1[16]_i_9_n_0\
    );
\v1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1_n_6\,
      Q => \^v1_reg[19]_0\(1),
      R => '0'
    );
\v1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1_n_5\,
      Q => \^v1_reg[19]_0\(2),
      R => '0'
    );
\v1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1_n_4\,
      Q => \^v1_reg[19]_0\(3),
      R => '0'
    );
\v1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1_n_6\,
      Q => \^di\(1),
      R => '0'
    );
\v1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[20]_i_1_n_7\,
      Q => \^v1_reg[23]_0\(0),
      R => '0'
    );
\v1_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[16]_i_1_n_0\,
      CO(3) => \v1_reg[23]_2\(0),
      CO(2) => \v1_reg[20]_i_1_n_1\,
      CO(1) => \v1_reg[20]_i_1_n_2\,
      CO(0) => \v1_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[20]_i_2_n_0\,
      DI(2) => \v1[20]_i_3_n_0\,
      DI(1) => \v1[20]_i_4_n_0\,
      DI(0) => \v1[20]_i_5_n_0\,
      O(3) => \v1_reg[20]_i_1_n_4\,
      O(2) => \v1_reg[20]_i_1_n_5\,
      O(1) => \v1_reg[20]_i_1_n_6\,
      O(0) => \v1_reg[20]_i_1_n_7\,
      S(3) => \v1[20]_i_6_n_0\,
      S(2) => \v1[20]_i_7_n_0\,
      S(1) => \v1[20]_i_8_n_0\,
      S(0) => \v1[20]_i_9_n_0\
    );
\v1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[20]_i_1_n_6\,
      Q => \^v1_reg[23]_0\(1),
      R => '0'
    );
\v1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[20]_i_1_n_5\,
      Q => \^v1_reg[23]_0\(2),
      R => '0'
    );
\v1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[20]_i_1_n_4\,
      Q => \^v1_reg[23]_0\(3),
      R => '0'
    );
\v1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(0),
      Q => \^v1_reg[25]_0\(0),
      R => '0'
    );
\v1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(1),
      Q => \^v1_reg[25]_0\(1),
      R => '0'
    );
\v1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(2),
      Q => \^v1_reg[26]_0\(0),
      R => '0'
    );
\v1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1_n_5\,
      Q => \^di\(2),
      R => '0'
    );
\v1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1_n_4\,
      Q => \^di\(3),
      R => '0'
    );
\v1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1_n_7\,
      Q => \^v1_reg[7]_0\(0),
      R => '0'
    );
\v1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[0]_i_1_n_0\,
      CO(3) => \v1_reg[4]_i_1_n_0\,
      CO(2) => \v1_reg[4]_i_1_n_1\,
      CO(1) => \v1_reg[4]_i_1_n_2\,
      CO(0) => \v1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[4]_i_2_n_0\,
      DI(2) => \v1[4]_i_3_n_0\,
      DI(1) => \v1[4]_i_4_n_0\,
      DI(0) => \v1[4]_i_5_n_0\,
      O(3) => \v1_reg[4]_i_1_n_4\,
      O(2) => \v1_reg[4]_i_1_n_5\,
      O(1) => \v1_reg[4]_i_1_n_6\,
      O(0) => \v1_reg[4]_i_1_n_7\,
      S(3) => \v1[4]_i_6_n_0\,
      S(2) => \v1[4]_i_7_n_0\,
      S(1) => \v1[4]_i_8_n_0\,
      S(0) => \v1[4]_i_9_n_0\
    );
\v1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1_n_6\,
      Q => \^v1_reg[7]_0\(1),
      R => '0'
    );
\v1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1_n_5\,
      Q => \^v1_reg[7]_0\(2),
      R => '0'
    );
\v1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1_n_4\,
      Q => \^v1_reg[7]_0\(3),
      R => '0'
    );
\v1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1_n_7\,
      Q => \^v1_reg[11]_0\(0),
      R => '0'
    );
\v1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[4]_i_1_n_0\,
      CO(3) => \v1_reg[8]_i_1_n_0\,
      CO(2) => \v1_reg[8]_i_1_n_1\,
      CO(1) => \v1_reg[8]_i_1_n_2\,
      CO(0) => \v1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[8]_i_2_n_0\,
      DI(2) => \v1[8]_i_3_n_0\,
      DI(1) => \v1[8]_i_4_n_0\,
      DI(0) => \v1[8]_i_5_n_0\,
      O(3) => \v1_reg[8]_i_1_n_4\,
      O(2) => \v1_reg[8]_i_1_n_5\,
      O(1) => \v1_reg[8]_i_1_n_6\,
      O(0) => \v1_reg[8]_i_1_n_7\,
      S(3) => \v1[8]_i_6_n_0\,
      S(2) => \v1[8]_i_7_n_0\,
      S(1) => \v1[8]_i_8_n_0\,
      S(0) => \v1[8]_i_9_n_0\
    );
\v1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1_n_6\,
      Q => \^v1_reg[11]_0\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_integrator_1 is
  port (
    A : out STD_LOGIC_VECTOR ( 16 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[25]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    diff_rho_z : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \v1_reg[26]_1\ : out STD_LOGIC;
    \v1_reg[26]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_4\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    restart_counter_reg_2_sp_1 : out STD_LOGIC;
    \v1_reg[25]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[25]_2\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \v1_reg[26]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[25]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[19]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_8\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_11\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mult_out__11_carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry_0\ : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \adder_out_carry__5_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    restart_counter_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry__1_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i__carry__3_i_2__3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adder_out_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_integrator_1 : entity is "integrator";
end design_1_lorenz_reader_0_0_integrator_1;

architecture STRUCTURE of design_1_lorenz_reader_0_0_integrator_1 is
  signal \^a\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \adder_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_0\ : STD_LOGIC;
  signal \adder_out_carry__0_n_1\ : STD_LOGIC;
  signal \adder_out_carry__0_n_2\ : STD_LOGIC;
  signal \adder_out_carry__0_n_3\ : STD_LOGIC;
  signal \adder_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__1_n_1\ : STD_LOGIC;
  signal \adder_out_carry__1_n_2\ : STD_LOGIC;
  signal \adder_out_carry__1_n_3\ : STD_LOGIC;
  signal \adder_out_carry__1_n_4\ : STD_LOGIC;
  signal \adder_out_carry__1_n_5\ : STD_LOGIC;
  signal \adder_out_carry__1_n_6\ : STD_LOGIC;
  signal \adder_out_carry__1_n_7\ : STD_LOGIC;
  signal \adder_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__2_n_1\ : STD_LOGIC;
  signal \adder_out_carry__2_n_2\ : STD_LOGIC;
  signal \adder_out_carry__2_n_3\ : STD_LOGIC;
  signal \adder_out_carry__2_n_4\ : STD_LOGIC;
  signal \adder_out_carry__2_n_5\ : STD_LOGIC;
  signal \adder_out_carry__2_n_6\ : STD_LOGIC;
  signal \adder_out_carry__2_n_7\ : STD_LOGIC;
  signal \adder_out_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__3_n_1\ : STD_LOGIC;
  signal \adder_out_carry__3_n_2\ : STD_LOGIC;
  signal \adder_out_carry__3_n_3\ : STD_LOGIC;
  signal \adder_out_carry__3_n_4\ : STD_LOGIC;
  signal \adder_out_carry__3_n_5\ : STD_LOGIC;
  signal \adder_out_carry__3_n_6\ : STD_LOGIC;
  signal \adder_out_carry__3_n_7\ : STD_LOGIC;
  signal \adder_out_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_0\ : STD_LOGIC;
  signal \adder_out_carry__4_n_1\ : STD_LOGIC;
  signal \adder_out_carry__4_n_2\ : STD_LOGIC;
  signal \adder_out_carry__4_n_3\ : STD_LOGIC;
  signal \adder_out_carry__4_n_4\ : STD_LOGIC;
  signal \adder_out_carry__4_n_5\ : STD_LOGIC;
  signal \adder_out_carry__4_n_6\ : STD_LOGIC;
  signal \adder_out_carry__4_n_7\ : STD_LOGIC;
  signal \adder_out_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \adder_out_carry__5_n_2\ : STD_LOGIC;
  signal \adder_out_carry__5_n_3\ : STD_LOGIC;
  signal \adder_out_carry__5_n_5\ : STD_LOGIC;
  signal \adder_out_carry__5_n_6\ : STD_LOGIC;
  signal \adder_out_carry__5_n_7\ : STD_LOGIC;
  signal adder_out_carry_i_1_n_0 : STD_LOGIC;
  signal adder_out_carry_i_2_n_0 : STD_LOGIC;
  signal adder_out_carry_i_3_n_0 : STD_LOGIC;
  signal adder_out_carry_i_4_n_0 : STD_LOGIC;
  signal adder_out_carry_n_0 : STD_LOGIC;
  signal adder_out_carry_n_1 : STD_LOGIC;
  signal adder_out_carry_n_2 : STD_LOGIC;
  signal adder_out_carry_n_3 : STD_LOGIC;
  signal \^diff_rho_z\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \mult_out__11_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_10_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_11_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_12_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_13_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_1__0_n_3\ : STD_LOGIC;
  signal \mult_out__1_i_2__0_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_2__0_n_1\ : STD_LOGIC;
  signal \mult_out__1_i_2__0_n_2\ : STD_LOGIC;
  signal \mult_out__1_i_2__0_n_3\ : STD_LOGIC;
  signal \mult_out__1_i_3__0_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_3__0_n_1\ : STD_LOGIC;
  signal \mult_out__1_i_3__0_n_2\ : STD_LOGIC;
  signal \mult_out__1_i_3__0_n_3\ : STD_LOGIC;
  signal \mult_out__1_i_4_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_5_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_6__0_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_7__0_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_8__0_n_0\ : STD_LOGIC;
  signal \mult_out__1_i_9_n_0\ : STD_LOGIC;
  signal mult_out_i_10_n_0 : STD_LOGIC;
  signal mult_out_i_11_n_0 : STD_LOGIC;
  signal mult_out_i_12_n_0 : STD_LOGIC;
  signal mult_out_i_13_n_0 : STD_LOGIC;
  signal mult_out_i_14_n_0 : STD_LOGIC;
  signal mult_out_i_15_n_0 : STD_LOGIC;
  signal mult_out_i_16_n_0 : STD_LOGIC;
  signal mult_out_i_17_n_0 : STD_LOGIC;
  signal mult_out_i_18_n_0 : STD_LOGIC;
  signal mult_out_i_19_n_0 : STD_LOGIC;
  signal mult_out_i_20_n_0 : STD_LOGIC;
  signal mult_out_i_21_n_0 : STD_LOGIC;
  signal mult_out_i_22_n_0 : STD_LOGIC;
  signal mult_out_i_23_n_0 : STD_LOGIC;
  signal \mult_out_i_3__0_n_0\ : STD_LOGIC;
  signal \mult_out_i_3__0_n_1\ : STD_LOGIC;
  signal \mult_out_i_3__0_n_2\ : STD_LOGIC;
  signal \mult_out_i_3__0_n_3\ : STD_LOGIC;
  signal \mult_out_i_4__0_n_0\ : STD_LOGIC;
  signal \mult_out_i_4__0_n_1\ : STD_LOGIC;
  signal \mult_out_i_4__0_n_2\ : STD_LOGIC;
  signal \mult_out_i_4__0_n_3\ : STD_LOGIC;
  signal \mult_out_i_5__0_n_0\ : STD_LOGIC;
  signal \mult_out_i_5__0_n_1\ : STD_LOGIC;
  signal \mult_out_i_5__0_n_2\ : STD_LOGIC;
  signal \mult_out_i_5__0_n_3\ : STD_LOGIC;
  signal \mult_out_i_6__0_n_0\ : STD_LOGIC;
  signal \mult_out_i_6__0_n_1\ : STD_LOGIC;
  signal \mult_out_i_6__0_n_2\ : STD_LOGIC;
  signal \mult_out_i_6__0_n_3\ : STD_LOGIC;
  signal mult_out_i_7_n_0 : STD_LOGIC;
  signal mult_out_i_8_n_0 : STD_LOGIC;
  signal mult_out_i_9_n_0 : STD_LOGIC;
  signal \restart_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \restart_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal restart_counter_reg_2_sn_1 : STD_LOGIC;
  signal \v1[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[12]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[16]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[8]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \^v1_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \^v1_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \^v1_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[25]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^v1_reg[26]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^v1_reg[26]_1\ : STD_LOGIC;
  signal \^v1_reg[26]_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v1_reg[26]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \^v1_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v1_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal NLW_adder_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_adder_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_adder_out_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_adder_out_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__2_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__2_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mult_out__1_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of adder_out_carry : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \adder_out_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mult_out__11_carry__0_i_10__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mult_out__11_carry__0_i_11__0\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \mult_out__1_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out__1_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out__1_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_i_4__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_i_5__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_i_6__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_reg[0]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[12]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[16]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[4]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[8]_i_1__1\ : label is 11;
begin
  A(16 downto 0) <= \^a\(16 downto 0);
  DI(2 downto 0) <= \^di\(2 downto 0);
  diff_rho_z(9 downto 0) <= \^diff_rho_z\(9 downto 0);
  restart_counter_reg_2_sp_1 <= restart_counter_reg_2_sn_1;
  \v1_reg[11]_0\(3 downto 0) <= \^v1_reg[11]_0\(3 downto 0);
  \v1_reg[15]_0\(3 downto 0) <= \^v1_reg[15]_0\(3 downto 0);
  \v1_reg[19]_0\(3 downto 0) <= \^v1_reg[19]_0\(3 downto 0);
  \v1_reg[23]_0\(3 downto 0) <= \^v1_reg[23]_0\(3 downto 0);
  \v1_reg[25]_0\(1 downto 0) <= \^v1_reg[25]_0\(1 downto 0);
  \v1_reg[26]_0\(0) <= \^v1_reg[26]_0\(0);
  \v1_reg[26]_1\ <= \^v1_reg[26]_1\;
  \v1_reg[26]_2\(3 downto 0) <= \^v1_reg[26]_2\(3 downto 0);
  \v1_reg[26]_5\(3 downto 0) <= \^v1_reg[26]_5\(3 downto 0);
  \v1_reg[7]_0\(3 downto 0) <= \^v1_reg[7]_0\(3 downto 0);
adder_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => adder_out_carry_n_0,
      CO(2) => adder_out_carry_n_1,
      CO(1) => adder_out_carry_n_2,
      CO(0) => adder_out_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \^di\(2 downto 0),
      DI(0) => \^a\(0),
      O(3 downto 0) => NLW_adder_out_carry_O_UNCONNECTED(3 downto 0),
      S(3) => adder_out_carry_i_1_n_0,
      S(2) => adder_out_carry_i_2_n_0,
      S(1) => adder_out_carry_i_3_n_0,
      S(0) => adder_out_carry_i_4_n_0
    );
\adder_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => adder_out_carry_n_0,
      CO(3) => \adder_out_carry__0_n_0\,
      CO(2) => \adder_out_carry__0_n_1\,
      CO(1) => \adder_out_carry__0_n_2\,
      CO(0) => \adder_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[7]_0\(3 downto 0),
      O(3 downto 0) => \NLW_adder_out_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \adder_out_carry__0_i_1_n_0\,
      S(2) => \adder_out_carry__0_i_2_n_0\,
      S(1) => \adder_out_carry__0_i_3_n_0\,
      S(0) => \adder_out_carry__0_i_4_n_0\
    );
\adder_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(3),
      I1 => \v1_reg[7]_1\(3),
      O => \adder_out_carry__0_i_1_n_0\
    );
\adder_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(2),
      I1 => \v1_reg[7]_1\(2),
      O => \adder_out_carry__0_i_2_n_0\
    );
\adder_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(1),
      I1 => \v1_reg[7]_1\(1),
      O => \adder_out_carry__0_i_3_n_0\
    );
\adder_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[7]_0\(0),
      I1 => \v1_reg[7]_1\(0),
      O => \adder_out_carry__0_i_4_n_0\
    );
\adder_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__0_n_0\,
      CO(3) => \adder_out_carry__1_n_0\,
      CO(2) => \adder_out_carry__1_n_1\,
      CO(1) => \adder_out_carry__1_n_2\,
      CO(0) => \adder_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[11]_0\(3 downto 0),
      O(3) => \adder_out_carry__1_n_4\,
      O(2) => \adder_out_carry__1_n_5\,
      O(1) => \adder_out_carry__1_n_6\,
      O(0) => \adder_out_carry__1_n_7\,
      S(3) => \adder_out_carry__1_i_1_n_0\,
      S(2) => \adder_out_carry__1_i_2_n_0\,
      S(1) => \adder_out_carry__1_i_3_n_0\,
      S(0) => \adder_out_carry__1_i_4_n_0\
    );
\adder_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(3),
      I1 => \v1_reg[11]_1\(3),
      O => \adder_out_carry__1_i_1_n_0\
    );
\adder_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(2),
      I1 => \v1_reg[11]_1\(2),
      O => \adder_out_carry__1_i_2_n_0\
    );
\adder_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(1),
      I1 => \v1_reg[11]_1\(1),
      O => \adder_out_carry__1_i_3_n_0\
    );
\adder_out_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[11]_0\(0),
      I1 => \v1_reg[11]_1\(0),
      O => \adder_out_carry__1_i_4_n_0\
    );
\adder_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__1_n_0\,
      CO(3) => \adder_out_carry__2_n_0\,
      CO(2) => \adder_out_carry__2_n_1\,
      CO(1) => \adder_out_carry__2_n_2\,
      CO(0) => \adder_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[15]_0\(3 downto 0),
      O(3) => \adder_out_carry__2_n_4\,
      O(2) => \adder_out_carry__2_n_5\,
      O(1) => \adder_out_carry__2_n_6\,
      O(0) => \adder_out_carry__2_n_7\,
      S(3) => \adder_out_carry__2_i_1_n_0\,
      S(2) => \adder_out_carry__2_i_2_n_0\,
      S(1) => \adder_out_carry__2_i_3_n_0\,
      S(0) => \adder_out_carry__2_i_4_n_0\
    );
\adder_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(3),
      I1 => \v1_reg[15]_1\(3),
      O => \adder_out_carry__2_i_1_n_0\
    );
\adder_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(2),
      I1 => \v1_reg[15]_1\(2),
      O => \adder_out_carry__2_i_2_n_0\
    );
\adder_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(1),
      I1 => \v1_reg[15]_1\(1),
      O => \adder_out_carry__2_i_3_n_0\
    );
\adder_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[15]_0\(0),
      I1 => \v1_reg[15]_1\(0),
      O => \adder_out_carry__2_i_4_n_0\
    );
\adder_out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__2_n_0\,
      CO(3) => \adder_out_carry__3_n_0\,
      CO(2) => \adder_out_carry__3_n_1\,
      CO(1) => \adder_out_carry__3_n_2\,
      CO(0) => \adder_out_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[19]_0\(3 downto 0),
      O(3) => \adder_out_carry__3_n_4\,
      O(2) => \adder_out_carry__3_n_5\,
      O(1) => \adder_out_carry__3_n_6\,
      O(0) => \adder_out_carry__3_n_7\,
      S(3) => \adder_out_carry__3_i_1_n_0\,
      S(2) => \adder_out_carry__3_i_2_n_0\,
      S(1) => \adder_out_carry__3_i_3_n_0\,
      S(0) => \adder_out_carry__3_i_4_n_0\
    );
\adder_out_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(3),
      I1 => \v1_reg[19]_2\(3),
      O => \adder_out_carry__3_i_1_n_0\
    );
\adder_out_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      I1 => \v1_reg[19]_2\(2),
      O => \adder_out_carry__3_i_2_n_0\
    );
\adder_out_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      I1 => \v1_reg[19]_2\(1),
      O => \adder_out_carry__3_i_3_n_0\
    );
\adder_out_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[19]_0\(0),
      I1 => \v1_reg[19]_2\(0),
      O => \adder_out_carry__3_i_4_n_0\
    );
\adder_out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__3_n_0\,
      CO(3) => \adder_out_carry__4_n_0\,
      CO(2) => \adder_out_carry__4_n_1\,
      CO(1) => \adder_out_carry__4_n_2\,
      CO(0) => \adder_out_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg[23]_0\(3 downto 0),
      O(3) => \adder_out_carry__4_n_4\,
      O(2) => \adder_out_carry__4_n_5\,
      O(1) => \adder_out_carry__4_n_6\,
      O(0) => \adder_out_carry__4_n_7\,
      S(3) => \adder_out_carry__4_i_1_n_0\,
      S(2) => \adder_out_carry__4_i_2_n_0\,
      S(1) => \adder_out_carry__4_i_3_n_0\,
      S(0) => \adder_out_carry__4_i_4_n_0\
    );
\adder_out_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      I1 => \adder_out_carry__4_0\(3),
      O => \adder_out_carry__4_i_1_n_0\
    );
\adder_out_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      I1 => \adder_out_carry__4_0\(2),
      O => \adder_out_carry__4_i_2_n_0\
    );
\adder_out_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      I1 => \adder_out_carry__4_0\(1),
      O => \adder_out_carry__4_i_3_n_0\
    );
\adder_out_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      I1 => \adder_out_carry__4_0\(0),
      O => \adder_out_carry__4_i_4_n_0\
    );
\adder_out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_out_carry__4_n_0\,
      CO(3 downto 2) => \NLW_adder_out_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \adder_out_carry__5_n_2\,
      CO(0) => \adder_out_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^v1_reg[25]_0\(1 downto 0),
      O(3) => \NLW_adder_out_carry__5_O_UNCONNECTED\(3),
      O(2) => \adder_out_carry__5_n_5\,
      O(1) => \adder_out_carry__5_n_6\,
      O(0) => \adder_out_carry__5_n_7\,
      S(3) => '0',
      S(2) => \adder_out_carry__5_i_1_n_0\,
      S(1) => \adder_out_carry__5_i_2_n_0\,
      S(0) => \adder_out_carry__5_i_3_n_0\
    );
\adder_out_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => \adder_out_carry__5_0\(2),
      O => \adder_out_carry__5_i_1_n_0\
    );
\adder_out_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \adder_out_carry__5_0\(1),
      O => \adder_out_carry__5_i_2_n_0\
    );
\adder_out_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[25]_0\(0),
      I1 => \adder_out_carry__5_0\(0),
      O => \adder_out_carry__5_i_3_n_0\
    );
adder_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(2),
      I1 => \v1_reg[3]_0\(3),
      O => adder_out_carry_i_1_n_0
    );
adder_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(1),
      I1 => \v1_reg[3]_0\(2),
      O => adder_out_carry_i_2_n_0
    );
adder_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \v1_reg[3]_0\(1),
      O => adder_out_carry_i_3_n_0
    );
adder_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(0),
      I1 => \v1_reg[3]_0\(0),
      O => adder_out_carry_i_4_n_0
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => P(1),
      O => \v1_reg[26]_7\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__3_i_2__3\(0),
      CO(3 downto 1) => \NLW_i__carry__2_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out__11_carry__1\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i__carry__2_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i__carry__3_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      O => \v1_reg[26]_6\(0)
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => P(2),
      O => \v1_reg[26]_3\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => P(0),
      I1 => \^v1_reg[26]_0\(0),
      I2 => \^v1_reg[25]_0\(1),
      O => mult_out(0)
    );
\mult_out__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__5_n_7\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(16)
    );
\mult_out__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_4\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(7)
    );
\mult_out__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_5\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(6)
    );
\mult_out__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_6\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(5)
    );
\mult_out__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__2_n_7\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(4)
    );
\mult_out__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_4\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(3)
    );
\mult_out__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_5\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(2)
    );
\mult_out__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_6\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(1)
    );
\mult_out__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__1_n_7\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(0)
    );
\mult_out__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__4_n_4\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(15)
    );
\mult_out__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_5\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(14)
    );
\mult_out__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__4_n_6\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(13)
    );
\mult_out__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adder_out_carry__4_n_7\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(12)
    );
\mult_out__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_4\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(11)
    );
\mult_out__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_5\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(10)
    );
\mult_out__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_6\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(9)
    );
\mult_out__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__3_n_7\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_2\(8)
    );
\mult_out__11_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \mult_out__11_carry__1_0\(0),
      I2 => \mult_out__11_carry__0_i_10__0_n_0\,
      O => \^v1_reg[26]_2\(3)
    );
\mult_out__11_carry__0_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^diff_rho_z\(6),
      I1 => \^diff_rho_z\(8),
      I2 => \mult_out__11_carry_0\,
      I3 => \mult_out__11_carry\(0),
      I4 => \^diff_rho_z\(7),
      O => \mult_out__11_carry__0_i_10__0_n_0\
    );
\mult_out__11_carry__0_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC804C8"
    )
        port map (
      I0 => \^diff_rho_z\(6),
      I1 => \mult_out__11_carry_0\,
      I2 => \^diff_rho_z\(7),
      I3 => \^diff_rho_z\(8),
      I4 => \mult_out__11_carry\(0),
      O => \mult_out__11_carry__0_i_11__0_n_0\
    );
\mult_out__11_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1771717177111111"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \^v1_reg[26]_1\,
      I2 => \^diff_rho_z\(6),
      I3 => \^diff_rho_z\(7),
      I4 => \mult_out__11_carry\(0),
      I5 => \mult_out__11_carry_0\,
      O => \^v1_reg[26]_2\(2)
    );
\mult_out__11_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969699666666"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \^v1_reg[26]_1\,
      I2 => \^diff_rho_z\(6),
      I3 => \^diff_rho_z\(7),
      I4 => \mult_out__11_carry\(0),
      I5 => \mult_out__11_carry_0\,
      O => \^v1_reg[26]_2\(1)
    );
\mult_out__11_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777888877788888"
    )
        port map (
      I0 => \^diff_rho_z\(6),
      I1 => \mult_out__11_carry\(0),
      I2 => \^diff_rho_z\(1),
      I3 => \^diff_rho_z\(2),
      I4 => \mult_out__11_carry_0\,
      I5 => \^diff_rho_z\(0),
      O => \^v1_reg[26]_2\(0)
    );
\mult_out__11_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"963C3C69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \mult_out__11_carry__1_0\(1),
      I2 => \mult_out__11_carry__0_i_11__0_n_0\,
      I3 => \mult_out__11_carry__0_i_10__0_n_0\,
      I4 => \mult_out__11_carry__1_0\(0),
      O => \v1_reg[26]_9\(3)
    );
\mult_out__11_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^v1_reg[26]_2\(2),
      I1 => \mult_out__11_carry__0_i_10__0_n_0\,
      I2 => \mult_out__11_carry__1_0\(0),
      I3 => \mult_out__11_carry__0_i_9_n_0\,
      O => \v1_reg[26]_9\(2)
    );
\mult_out__11_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969C33CA55A0FF0"
    )
        port map (
      I0 => \mult_out__11_carry_0\,
      I1 => \^diff_rho_z\(7),
      I2 => \mult_out__11_carry__0_i_9_n_0\,
      I3 => \^v1_reg[26]_1\,
      I4 => \^diff_rho_z\(6),
      I5 => \mult_out__11_carry\(0),
      O => \v1_reg[26]_9\(1)
    );
\mult_out__11_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6565AAAA655AAAAA"
    )
        port map (
      I0 => \^v1_reg[26]_2\(0),
      I1 => \mult_out__11_carry\(0),
      I2 => \^diff_rho_z\(5),
      I3 => \^diff_rho_z\(4),
      I4 => \mult_out__11_carry_0\,
      I5 => \^diff_rho_z\(3),
      O => \v1_reg[26]_9\(0)
    );
\mult_out__11_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F1F"
    )
        port map (
      I0 => \^diff_rho_z\(5),
      I1 => \^diff_rho_z\(4),
      I2 => \mult_out__11_carry_0\,
      I3 => \^diff_rho_z\(3),
      O => \mult_out__11_carry__0_i_9_n_0\
    );
\mult_out__11_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^diff_rho_z\(8),
      I1 => \^diff_rho_z\(7),
      I2 => \^diff_rho_z\(6),
      I3 => \mult_out__11_carry_0\,
      O => \^v1_reg[26]_5\(3)
    );
\mult_out__11_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \^v1_reg[26]_5\(3),
      I2 => CO(0),
      O => \^v1_reg[26]_5\(2)
    );
\mult_out__11_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \^v1_reg[26]_5\(3),
      I2 => CO(0),
      O => \^v1_reg[26]_5\(1)
    );
\mult_out__11_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \mult_out__11_carry__0_i_9_n_0\,
      I1 => \mult_out__11_carry__1_0\(1),
      I2 => \mult_out__11_carry__0_i_11__0_n_0\,
      O => \^v1_reg[26]_5\(0)
    );
\mult_out__11_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => CO(0),
      I1 => \mult_out__11_carry__0_i_9_n_0\,
      I2 => \^v1_reg[26]_5\(3),
      O => \v1_reg[26]_10\(3)
    );
\mult_out__11_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => CO(0),
      I1 => \^v1_reg[26]_5\(3),
      I2 => \mult_out__11_carry__0_i_9_n_0\,
      O => \v1_reg[26]_10\(2)
    );
\mult_out__11_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"366C"
    )
        port map (
      I0 => \mult_out__11_carry__1_0\(2),
      I1 => CO(0),
      I2 => \^v1_reg[26]_5\(3),
      I3 => \mult_out__11_carry__0_i_9_n_0\,
      O => \v1_reg[26]_10\(1)
    );
\mult_out__11_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^v1_reg[26]_5\(0),
      I1 => \mult_out__11_carry__1_0\(2),
      I2 => \^v1_reg[26]_5\(3),
      I3 => \mult_out__11_carry__0_i_9_n_0\,
      O => \v1_reg[26]_10\(0)
    );
\mult_out__11_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^diff_rho_z\(3),
      I1 => \^diff_rho_z\(5),
      I2 => \mult_out__11_carry_0\,
      I3 => \mult_out__11_carry\(0),
      I4 => \^diff_rho_z\(4),
      O => \v1_reg[26]_8\(1)
    );
\mult_out__11_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^diff_rho_z\(3),
      I1 => \mult_out__11_carry_0\,
      I2 => \mult_out__11_carry\(0),
      I3 => \^diff_rho_z\(4),
      O => \v1_reg[26]_8\(0)
    );
\mult_out__11_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CD06CA0E32F935F"
    )
        port map (
      I0 => \^diff_rho_z\(4),
      I1 => \mult_out__11_carry\(0),
      I2 => \mult_out__11_carry_0\,
      I3 => \^diff_rho_z\(5),
      I4 => \^diff_rho_z\(3),
      I5 => \^v1_reg[26]_1\,
      O => S(3)
    );
\mult_out__11_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78888777"
    )
        port map (
      I0 => \^diff_rho_z\(4),
      I1 => \mult_out__11_carry\(0),
      I2 => \mult_out__11_carry_0\,
      I3 => \^diff_rho_z\(3),
      I4 => \^v1_reg[26]_1\,
      O => S(2)
    );
\mult_out__11_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA0F0056AA3C00"
    )
        port map (
      I0 => \^diff_rho_z\(3),
      I1 => \^diff_rho_z\(0),
      I2 => \^diff_rho_z\(2),
      I3 => \mult_out__11_carry_0\,
      I4 => \mult_out__11_carry\(0),
      I5 => \^diff_rho_z\(1),
      O => S(1)
    );
\mult_out__11_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C506CA0"
    )
        port map (
      I0 => \^diff_rho_z\(0),
      I1 => \^diff_rho_z\(2),
      I2 => \mult_out__11_carry_0\,
      I3 => \mult_out__11_carry\(0),
      I4 => \^diff_rho_z\(1),
      O => S(0)
    );
\mult_out__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[23]_0\(0),
      O => \mult_out__1_i_10_n_0\
    );
\mult_out__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[19]_0\(3),
      O => \mult_out__1_i_11_n_0\
    );
\mult_out__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[19]_0\(2),
      O => \mult_out__1_i_12_n_0\
    );
\mult_out__1_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[19]_0\(1),
      O => \mult_out__1_i_13_n_0\
    );
\mult_out__1_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__1_i_2__0_n_0\,
      CO(3 downto 1) => \NLW_mult_out__1_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out__1_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_mult_out__1_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^diff_rho_z\(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \mult_out__1_i_4_n_0\,
      S(0) => \mult_out__1_i_5_n_0\
    );
\mult_out__1_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__1_i_3__0_n_0\,
      CO(3) => \mult_out__1_i_2__0_n_0\,
      CO(2) => \mult_out__1_i_2__0_n_1\,
      CO(1) => \mult_out__1_i_2__0_n_2\,
      CO(0) => \mult_out__1_i_2__0_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_i_6__0_n_0\,
      DI(2) => \mult_out__1_i_7__0_n_0\,
      DI(1) => \mult_out__1_i_8__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \^diff_rho_z\(7 downto 4),
      S(3) => \^v1_reg[25]_0\(0),
      S(2 downto 1) => \^v1_reg[23]_0\(3 downto 2),
      S(0) => \mult_out__1_i_9_n_0\
    );
\mult_out__1_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_i_3__0_n_0\,
      CO(3) => \mult_out__1_i_3__0_n_0\,
      CO(2) => \mult_out__1_i_3__0_n_1\,
      CO(1) => \mult_out__1_i_3__0_n_2\,
      CO(0) => \mult_out__1_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^diff_rho_z\(3 downto 0),
      S(3) => \mult_out__1_i_10_n_0\,
      S(2) => \mult_out__1_i_11_n_0\,
      S(1) => \mult_out__1_i_12_n_0\,
      S(0) => \mult_out__1_i_13_n_0\
    );
\mult_out__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      O => \mult_out__1_i_4_n_0\
    );
\mult_out__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      O => \mult_out__1_i_5_n_0\
    );
\mult_out__1_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[25]_0\(0),
      O => \mult_out__1_i_6__0_n_0\
    );
\mult_out__1_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[23]_0\(3),
      O => \mult_out__1_i_7__0_n_0\
    );
\mult_out__1_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[23]_0\(2),
      O => \mult_out__1_i_8__0_n_0\
    );
\mult_out__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[23]_0\(1),
      O => \mult_out__1_i_9_n_0\
    );
\mult_out__2_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3337"
    )
        port map (
      I0 => \^diff_rho_z\(0),
      I1 => \mult_out__11_carry_0\,
      I2 => \^diff_rho_z\(2),
      I3 => \^diff_rho_z\(1),
      O => \^v1_reg[26]_1\
    );
\mult_out__2_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777888877788888"
    )
        port map (
      I0 => \^diff_rho_z\(9),
      I1 => \mult_out__11_carry\(0),
      I2 => \^diff_rho_z\(1),
      I3 => \^diff_rho_z\(2),
      I4 => \mult_out__11_carry_0\,
      I5 => \^diff_rho_z\(0),
      O => \v1_reg[25]_3\(1)
    );
\mult_out__2_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^diff_rho_z\(1),
      I1 => \^diff_rho_z\(2),
      I2 => \mult_out__11_carry_0\,
      I3 => \^diff_rho_z\(0),
      O => \v1_reg[25]_3\(0)
    );
mult_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v1_reg[26]_0\(0),
      I1 => \^v1_reg[25]_0\(1),
      O => \v1_reg[26]_4\(1)
    );
mult_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^v1_reg[25]_0\(1),
      I1 => \^v1_reg[26]_0\(0),
      O => \v1_reg[26]_4\(0)
    );
mult_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__5_n_5\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_1\(1)
    );
mult_out_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[15]_0\(1),
      O => mult_out_i_10_n_0
    );
mult_out_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[15]_0\(0),
      O => mult_out_i_11_n_0
    );
mult_out_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[11]_0\(3),
      O => mult_out_i_12_n_0
    );
mult_out_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[11]_0\(2),
      O => mult_out_i_13_n_0
    );
mult_out_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[11]_0\(1),
      O => mult_out_i_14_n_0
    );
mult_out_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[11]_0\(0),
      O => mult_out_i_15_n_0
    );
mult_out_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[7]_0\(3),
      O => mult_out_i_16_n_0
    );
mult_out_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[7]_0\(2),
      O => mult_out_i_17_n_0
    );
mult_out_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[7]_0\(1),
      O => mult_out_i_18_n_0
    );
mult_out_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(0),
      O => mult_out_i_19_n_0
    );
mult_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adder_out_carry__5_n_6\,
      I1 => restart_counter_reg_2_sn_1,
      O => \v1_reg[25]_1\(0)
    );
mult_out_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[7]_0\(0),
      O => mult_out_i_20_n_0
    );
mult_out_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(2),
      O => mult_out_i_21_n_0
    );
mult_out_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(1),
      O => mult_out_i_22_n_0
    );
mult_out_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(0),
      O => mult_out_i_23_n_0
    );
\mult_out_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_i_4__0_n_0\,
      CO(3) => \mult_out_i_3__0_n_0\,
      CO(2) => \mult_out_i_3__0_n_1\,
      CO(1) => \mult_out_i_3__0_n_2\,
      CO(0) => \mult_out_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^a\(16 downto 13),
      S(3) => mult_out_i_7_n_0,
      S(2) => mult_out_i_8_n_0,
      S(1) => mult_out_i_9_n_0,
      S(0) => mult_out_i_10_n_0
    );
\mult_out_i_4__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_i_5__0_n_0\,
      CO(3) => \mult_out_i_4__0_n_0\,
      CO(2) => \mult_out_i_4__0_n_1\,
      CO(1) => \mult_out_i_4__0_n_2\,
      CO(0) => \mult_out_i_4__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^a\(12 downto 9),
      S(3) => mult_out_i_11_n_0,
      S(2) => mult_out_i_12_n_0,
      S(1) => mult_out_i_13_n_0,
      S(0) => mult_out_i_14_n_0
    );
\mult_out_i_5__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_i_6__0_n_0\,
      CO(3) => \mult_out_i_5__0_n_0\,
      CO(2) => \mult_out_i_5__0_n_1\,
      CO(1) => \mult_out_i_5__0_n_2\,
      CO(0) => \mult_out_i_5__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^a\(8 downto 5),
      S(3) => mult_out_i_15_n_0,
      S(2) => mult_out_i_16_n_0,
      S(1) => mult_out_i_17_n_0,
      S(0) => mult_out_i_18_n_0
    );
\mult_out_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_i_6__0_n_0\,
      CO(2) => \mult_out_i_6__0_n_1\,
      CO(1) => \mult_out_i_6__0_n_2\,
      CO(0) => \mult_out_i_6__0_n_3\,
      CYINIT => mult_out_i_19_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^a\(4 downto 1),
      S(3) => mult_out_i_20_n_0,
      S(2) => mult_out_i_21_n_0,
      S(1) => mult_out_i_22_n_0,
      S(0) => mult_out_i_23_n_0
    );
mult_out_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[19]_0\(0),
      O => mult_out_i_7_n_0
    );
mult_out_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[15]_0\(3),
      O => mult_out_i_8_n_0
    );
mult_out_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v1_reg[15]_0\(2),
      O => mult_out_i_9_n_0
    );
\restart_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => restart_counter_reg(2),
      I1 => restart_counter_reg(1),
      I2 => restart_counter_reg(0),
      I3 => \restart_counter[0]_i_3_n_0\,
      I4 => \restart_counter[0]_i_4_n_0\,
      I5 => s00_axi_aresetn,
      O => restart_counter_reg_2_sn_1
    );
\restart_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => restart_counter_reg(10),
      I1 => restart_counter_reg(9),
      I2 => restart_counter_reg(8),
      I3 => restart_counter_reg(7),
      O => \restart_counter[0]_i_3_n_0\
    );
\restart_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => restart_counter_reg(6),
      I1 => restart_counter_reg(5),
      I2 => restart_counter_reg(4),
      I3 => restart_counter_reg(3),
      O => \restart_counter[0]_i_4_n_0\
    );
\v1[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_0\(3),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[0]_i_2__1_n_0\
    );
\v1[0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_0\(2),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[0]_i_3__1_n_0\
    );
\v1[0]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_0\(1),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[0]_i_4__1_n_0\
    );
\v1[0]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[3]_0\(0),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[0]_i_5__1_n_0\
    );
\v1[0]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_0\(3),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^di\(2),
      O => \v1[0]_i_6__1_n_0\
    );
\v1[0]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_0\(2),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^di\(1),
      O => \v1[0]_i_7__1_n_0\
    );
\v1[0]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_0\(1),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^di\(0),
      O => \v1[0]_i_8__1_n_0\
    );
\v1[0]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[3]_0\(0),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^a\(0),
      O => \v1[0]_i_9__1_n_0\
    );
\v1[12]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[12]_i_2__1_n_0\
    );
\v1[12]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[12]_i_3__1_n_0\
    );
\v1[12]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[12]_i_4__1_n_0\
    );
\v1[12]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[15]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[12]_i_5__1_n_0\
    );
\v1[12]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[15]_0\(3),
      O => \v1[12]_i_6__1_n_0\
    );
\v1[12]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[15]_0\(2),
      O => \v1[12]_i_7__1_n_0\
    );
\v1[12]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[15]_0\(1),
      O => \v1[12]_i_8__1_n_0\
    );
\v1[12]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[15]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[15]_0\(0),
      O => \v1[12]_i_9__1_n_0\
    );
\v1[16]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_2\(3),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[16]_i_2__1_n_0\
    );
\v1[16]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_2\(2),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[16]_i_3__1_n_0\
    );
\v1[16]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_2\(1),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[16]_i_4__1_n_0\
    );
\v1[16]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[19]_2\(0),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[16]_i_5__1_n_0\
    );
\v1[16]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_2\(3),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[19]_0\(3),
      O => \v1[16]_i_6__1_n_0\
    );
\v1[16]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_2\(2),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[19]_0\(2),
      O => \v1[16]_i_7__1_n_0\
    );
\v1[16]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_2\(1),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[19]_0\(1),
      O => \v1[16]_i_8__1_n_0\
    );
\v1[16]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[19]_2\(0),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[19]_0\(0),
      O => \v1[16]_i_9__1_n_0\
    );
\v1[4]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[4]_i_2__1_n_0\
    );
\v1[4]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[4]_i_3__1_n_0\
    );
\v1[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[4]_i_4__1_n_0\
    );
\v1[4]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[7]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[4]_i_5__1_n_0\
    );
\v1[4]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[7]_0\(3),
      O => \v1[4]_i_6__1_n_0\
    );
\v1[4]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[7]_0\(2),
      O => \v1[4]_i_7__1_n_0\
    );
\v1[4]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[7]_0\(1),
      O => \v1[4]_i_8__1_n_0\
    );
\v1[4]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[7]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[7]_0\(0),
      O => \v1[4]_i_9__1_n_0\
    );
\v1[8]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[8]_i_2__1_n_0\
    );
\v1[8]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[8]_i_3__1_n_0\
    );
\v1[8]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[8]_i_4__1_n_0\
    );
\v1[8]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[11]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      O => \v1[8]_i_5__1_n_0\
    );
\v1[8]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_1\(3),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[11]_0\(3),
      O => \v1[8]_i_6__1_n_0\
    );
\v1[8]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_1\(2),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[11]_0\(2),
      O => \v1[8]_i_7__1_n_0\
    );
\v1[8]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_1\(1),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[11]_0\(1),
      O => \v1[8]_i_8__1_n_0\
    );
\v1[8]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[11]_1\(0),
      I1 => restart_counter_reg_2_sn_1,
      I2 => \^v1_reg[11]_0\(0),
      O => \v1[8]_i_9__1_n_0\
    );
\v1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1__1_n_7\,
      Q => \^a\(0),
      R => '0'
    );
\v1_reg[0]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v1_reg[0]_i_1__1_n_0\,
      CO(2) => \v1_reg[0]_i_1__1_n_1\,
      CO(1) => \v1_reg[0]_i_1__1_n_2\,
      CO(0) => \v1_reg[0]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[0]_i_2__1_n_0\,
      DI(2) => \v1[0]_i_3__1_n_0\,
      DI(1) => \v1[0]_i_4__1_n_0\,
      DI(0) => \v1[0]_i_5__1_n_0\,
      O(3) => \v1_reg[0]_i_1__1_n_4\,
      O(2) => \v1_reg[0]_i_1__1_n_5\,
      O(1) => \v1_reg[0]_i_1__1_n_6\,
      O(0) => \v1_reg[0]_i_1__1_n_7\,
      S(3) => \v1[0]_i_6__1_n_0\,
      S(2) => \v1[0]_i_7__1_n_0\,
      S(1) => \v1[0]_i_8__1_n_0\,
      S(0) => \v1[0]_i_9__1_n_0\
    );
\v1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1__1_n_5\,
      Q => \^v1_reg[11]_0\(2),
      R => '0'
    );
\v1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1__1_n_4\,
      Q => \^v1_reg[11]_0\(3),
      R => '0'
    );
\v1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1__1_n_7\,
      Q => \^v1_reg[15]_0\(0),
      R => '0'
    );
\v1_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[8]_i_1__1_n_0\,
      CO(3) => \v1_reg[12]_i_1__1_n_0\,
      CO(2) => \v1_reg[12]_i_1__1_n_1\,
      CO(1) => \v1_reg[12]_i_1__1_n_2\,
      CO(0) => \v1_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[12]_i_2__1_n_0\,
      DI(2) => \v1[12]_i_3__1_n_0\,
      DI(1) => \v1[12]_i_4__1_n_0\,
      DI(0) => \v1[12]_i_5__1_n_0\,
      O(3) => \v1_reg[12]_i_1__1_n_4\,
      O(2) => \v1_reg[12]_i_1__1_n_5\,
      O(1) => \v1_reg[12]_i_1__1_n_6\,
      O(0) => \v1_reg[12]_i_1__1_n_7\,
      S(3) => \v1[12]_i_6__1_n_0\,
      S(2) => \v1[12]_i_7__1_n_0\,
      S(1) => \v1[12]_i_8__1_n_0\,
      S(0) => \v1[12]_i_9__1_n_0\
    );
\v1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1__1_n_6\,
      Q => \^v1_reg[15]_0\(1),
      R => '0'
    );
\v1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1__1_n_5\,
      Q => \^v1_reg[15]_0\(2),
      R => '0'
    );
\v1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[12]_i_1__1_n_4\,
      Q => \^v1_reg[15]_0\(3),
      R => '0'
    );
\v1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1__1_n_7\,
      Q => \^v1_reg[19]_0\(0),
      R => '0'
    );
\v1_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[12]_i_1__1_n_0\,
      CO(3) => \v1_reg[19]_1\(0),
      CO(2) => \v1_reg[16]_i_1__1_n_1\,
      CO(1) => \v1_reg[16]_i_1__1_n_2\,
      CO(0) => \v1_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[16]_i_2__1_n_0\,
      DI(2) => \v1[16]_i_3__1_n_0\,
      DI(1) => \v1[16]_i_4__1_n_0\,
      DI(0) => \v1[16]_i_5__1_n_0\,
      O(3) => \v1_reg[16]_i_1__1_n_4\,
      O(2) => \v1_reg[16]_i_1__1_n_5\,
      O(1) => \v1_reg[16]_i_1__1_n_6\,
      O(0) => \v1_reg[16]_i_1__1_n_7\,
      S(3) => \v1[16]_i_6__1_n_0\,
      S(2) => \v1[16]_i_7__1_n_0\,
      S(1) => \v1[16]_i_8__1_n_0\,
      S(0) => \v1[16]_i_9__1_n_0\
    );
\v1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1__1_n_6\,
      Q => \^v1_reg[19]_0\(1),
      R => '0'
    );
\v1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1__1_n_5\,
      Q => \^v1_reg[19]_0\(2),
      R => '0'
    );
\v1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[16]_i_1__1_n_4\,
      Q => \^v1_reg[19]_0\(3),
      R => '0'
    );
\v1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1__1_n_6\,
      Q => \^di\(0),
      R => '0'
    );
\v1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(0),
      Q => \^v1_reg[23]_0\(0),
      R => '0'
    );
\v1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(1),
      Q => \^v1_reg[23]_0\(1),
      R => '0'
    );
\v1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(2),
      Q => \^v1_reg[23]_0\(2),
      R => '0'
    );
\v1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O(3),
      Q => \^v1_reg[23]_0\(3),
      R => '0'
    );
\v1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_11\(0),
      Q => \^v1_reg[25]_0\(0),
      R => '0'
    );
\v1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_11\(1),
      Q => \^v1_reg[25]_0\(1),
      R => '0'
    );
\v1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[26]_11\(2),
      Q => \^v1_reg[26]_0\(0),
      R => '0'
    );
\v1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1__1_n_5\,
      Q => \^di\(1),
      R => '0'
    );
\v1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[0]_i_1__1_n_4\,
      Q => \^di\(2),
      R => '0'
    );
\v1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1__1_n_7\,
      Q => \^v1_reg[7]_0\(0),
      R => '0'
    );
\v1_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[0]_i_1__1_n_0\,
      CO(3) => \v1_reg[4]_i_1__1_n_0\,
      CO(2) => \v1_reg[4]_i_1__1_n_1\,
      CO(1) => \v1_reg[4]_i_1__1_n_2\,
      CO(0) => \v1_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[4]_i_2__1_n_0\,
      DI(2) => \v1[4]_i_3__1_n_0\,
      DI(1) => \v1[4]_i_4__1_n_0\,
      DI(0) => \v1[4]_i_5__1_n_0\,
      O(3) => \v1_reg[4]_i_1__1_n_4\,
      O(2) => \v1_reg[4]_i_1__1_n_5\,
      O(1) => \v1_reg[4]_i_1__1_n_6\,
      O(0) => \v1_reg[4]_i_1__1_n_7\,
      S(3) => \v1[4]_i_6__1_n_0\,
      S(2) => \v1[4]_i_7__1_n_0\,
      S(1) => \v1[4]_i_8__1_n_0\,
      S(0) => \v1[4]_i_9__1_n_0\
    );
\v1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1__1_n_6\,
      Q => \^v1_reg[7]_0\(1),
      R => '0'
    );
\v1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1__1_n_5\,
      Q => \^v1_reg[7]_0\(2),
      R => '0'
    );
\v1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[4]_i_1__1_n_4\,
      Q => \^v1_reg[7]_0\(3),
      R => '0'
    );
\v1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1__1_n_7\,
      Q => \^v1_reg[11]_0\(0),
      R => '0'
    );
\v1_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[4]_i_1__1_n_0\,
      CO(3) => \v1_reg[8]_i_1__1_n_0\,
      CO(2) => \v1_reg[8]_i_1__1_n_1\,
      CO(1) => \v1_reg[8]_i_1__1_n_2\,
      CO(0) => \v1_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[8]_i_2__1_n_0\,
      DI(2) => \v1[8]_i_3__1_n_0\,
      DI(1) => \v1[8]_i_4__1_n_0\,
      DI(0) => \v1[8]_i_5__1_n_0\,
      O(3) => \v1_reg[8]_i_1__1_n_4\,
      O(2) => \v1_reg[8]_i_1__1_n_5\,
      O(1) => \v1_reg[8]_i_1__1_n_6\,
      O(0) => \v1_reg[8]_i_1__1_n_7\,
      S(3) => \v1[8]_i_6__1_n_0\,
      S(2) => \v1[8]_i_7__1_n_0\,
      S(1) => \v1[8]_i_8__1_n_0\,
      S(0) => \v1[8]_i_9__1_n_0\
    );
\v1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \v1_reg[8]_i_1__1_n_6\,
      Q => \^v1_reg[11]_0\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_lorenz_reader_slave_lite_v1_0_S00_AXI is
  port (
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 26 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_lorenz_reader_slave_lite_v1_0_S00_AXI : entity is "lorenz_reader_slave_lite_v1_0_S00_AXI";
end design_1_lorenz_reader_0_0_lorenz_reader_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of design_1_lorenz_reader_0_0_lorenz_reader_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal y_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal z_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => state_read(0),
      I2 => s00_axi_aresetn,
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => state_read(0),
      I2 => s00_axi_aresetn,
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_read(0),
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg_0\,
      I3 => state_read(1),
      I4 => s00_axi_arvalid,
      I5 => \^axi_arready_reg_0\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FAAAAAAA"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => state_read(0),
      I3 => \^axi_arready_reg_0\,
      I4 => s00_axi_arvalid,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(0),
      I1 => x_reg(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(10),
      I1 => x_reg(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(11),
      I1 => x_reg(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(12),
      I1 => x_reg(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(13),
      I1 => x_reg(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(14),
      I1 => x_reg(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(15),
      I1 => x_reg(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(16),
      I1 => x_reg(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(17),
      I1 => x_reg(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(18),
      I1 => x_reg(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(19),
      I1 => x_reg(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(1),
      I1 => x_reg(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(20),
      I1 => x_reg(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(21),
      I1 => x_reg(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(22),
      I1 => x_reg(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(23),
      I1 => x_reg(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(24),
      I1 => x_reg(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(25),
      I1 => x_reg(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(29),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(2),
      I1 => x_reg(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(26),
      I1 => x_reg(26),
      I2 => slv_reg3(31),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(26),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(3),
      I1 => x_reg(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(4),
      I1 => x_reg(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(5),
      I1 => x_reg(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(6),
      I1 => x_reg(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(7),
      I1 => x_reg(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(8),
      I1 => x_reg(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => y_reg(9),
      I1 => x_reg(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => z_reg(9),
      O => s00_axi_rdata(9)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg3[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg3[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg3[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => axi_awaddr(2),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg3[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(0),
      Q => x_reg(0),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(10),
      Q => x_reg(10),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(11),
      Q => x_reg(11),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(12),
      Q => x_reg(12),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(13),
      Q => x_reg(13),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(14),
      Q => x_reg(14),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(15),
      Q => x_reg(15),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(16),
      Q => x_reg(16),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(17),
      Q => x_reg(17),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(18),
      Q => x_reg(18),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(19),
      Q => x_reg(19),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(1),
      Q => x_reg(1),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(20),
      Q => x_reg(20),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(21),
      Q => x_reg(21),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(22),
      Q => x_reg(22),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(23),
      Q => x_reg(23),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(24),
      Q => x_reg(24),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(25),
      Q => x_reg(25),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(26),
      Q => x_reg(26),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(2),
      Q => x_reg(2),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(3),
      Q => x_reg(3),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(4),
      Q => x_reg(4),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(5),
      Q => x_reg(5),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(6),
      Q => x_reg(6),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(7),
      Q => x_reg(7),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(8),
      Q => x_reg(8),
      R => axi_awready_i_1_n_0
    );
\x_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_1(9),
      Q => x_reg(9),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(0),
      Q => y_reg(0),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(10),
      Q => y_reg(10),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(11),
      Q => y_reg(11),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(12),
      Q => y_reg(12),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(13),
      Q => y_reg(13),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(14),
      Q => y_reg(14),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(15),
      Q => y_reg(15),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(16),
      Q => y_reg(16),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(17),
      Q => y_reg(17),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(18),
      Q => y_reg(18),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(19),
      Q => y_reg(19),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(1),
      Q => y_reg(1),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(20),
      Q => y_reg(20),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(21),
      Q => y_reg(21),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(22),
      Q => y_reg(22),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(23),
      Q => y_reg(23),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(24),
      Q => y_reg(24),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(25),
      Q => y_reg(25),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(26),
      Q => y_reg(26),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(2),
      Q => y_reg(2),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(3),
      Q => y_reg(3),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(4),
      Q => y_reg(4),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(5),
      Q => y_reg(5),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(6),
      Q => y_reg(6),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(7),
      Q => y_reg(7),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(8),
      Q => y_reg(8),
      R => axi_awready_i_1_n_0
    );
\y_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg_0(9),
      Q => y_reg(9),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(0),
      Q => z_reg(0),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(10),
      Q => z_reg(10),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(11),
      Q => z_reg(11),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(12),
      Q => z_reg(12),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(13),
      Q => z_reg(13),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(14),
      Q => z_reg(14),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(15),
      Q => z_reg(15),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(16),
      Q => z_reg(16),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(17),
      Q => z_reg(17),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(18),
      Q => z_reg(18),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(19),
      Q => z_reg(19),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(1),
      Q => z_reg(1),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(20),
      Q => z_reg(20),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(21),
      Q => z_reg(21),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(22),
      Q => z_reg(22),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(23),
      Q => z_reg(23),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(24),
      Q => z_reg(24),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(25),
      Q => z_reg(25),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(26),
      Q => z_reg(26),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(2),
      Q => z_reg(2),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(3),
      Q => z_reg(3),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(4),
      Q => z_reg(4),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(5),
      Q => z_reg(5),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(6),
      Q => z_reg(6),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(7),
      Q => z_reg(7),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(8),
      Q => z_reg(8),
      R => axi_awready_i_1_n_0
    );
\z_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => v1_reg(9),
      Q => z_reg(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_signed_mult is
  port (
    P : out STD_LOGIC_VECTOR ( 20 downto 0 );
    mult_out_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mult_out_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_6 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mult_out_7 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    A : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \adder_out_carry__3_i_3__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adder_out_carry__4_i_3__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mult_out_inferred__0/i__carry__3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \v1_reg[26]_0\ : in STD_LOGIC;
    \v1_reg[26]_1\ : in STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \mult_out_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_signed_mult : entity is "signed_mult";
end design_1_lorenz_reader_0_0_signed_mult;

architecture STRUCTURE of design_1_lorenz_reader_0_0_signed_mult is
  signal \^p\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \^mult_out_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^mult_out_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^mult_out_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mult_out_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mult_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal mult_out_n_103 : STD_LOGIC;
  signal mult_out_n_104 : STD_LOGIC;
  signal mult_out_n_105 : STD_LOGIC;
  signal mult_out_n_58 : STD_LOGIC;
  signal mult_out_n_59 : STD_LOGIC;
  signal mult_out_n_60 : STD_LOGIC;
  signal mult_out_n_61 : STD_LOGIC;
  signal mult_out_n_62 : STD_LOGIC;
  signal mult_out_n_63 : STD_LOGIC;
  signal mult_out_n_64 : STD_LOGIC;
  signal mult_out_n_65 : STD_LOGIC;
  signal mult_out_n_66 : STD_LOGIC;
  signal mult_out_n_67 : STD_LOGIC;
  signal mult_out_n_68 : STD_LOGIC;
  signal mult_out_n_69 : STD_LOGIC;
  signal mult_out_n_72 : STD_LOGIC;
  signal mult_out_n_73 : STD_LOGIC;
  signal mult_out_n_74 : STD_LOGIC;
  signal mult_out_n_75 : STD_LOGIC;
  signal mult_out_n_76 : STD_LOGIC;
  signal mult_out_n_77 : STD_LOGIC;
  signal mult_out_n_78 : STD_LOGIC;
  signal mult_out_n_79 : STD_LOGIC;
  signal mult_out_n_80 : STD_LOGIC;
  signal mult_out_n_83 : STD_LOGIC;
  signal mult_out_n_84 : STD_LOGIC;
  signal mult_out_n_85 : STD_LOGIC;
  signal \v1[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[12]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[16]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[20]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[24]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[24]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[24]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[24]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_7__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_8__0_n_0\ : STD_LOGIC;
  signal \v1[8]_i_9__0_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \v1_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal NLW_mult_out_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_out_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_out_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult_out_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mult_out_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__0/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v1_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v1_reg[24]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_out : label is "{SYNTH-10 {cell *THIS*} {string 10x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_reg[0]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[20]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[24]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[8]_i_1__0\ : label is 11;
begin
  P(20 downto 0) <= \^p\(20 downto 0);
  mult_out_0(3 downto 0) <= \^mult_out_0\(3 downto 0);
  mult_out_1(3 downto 0) <= \^mult_out_1\(3 downto 0);
  mult_out_2(0) <= \^mult_out_2\(0);
  mult_out_3(0) <= \^mult_out_3\(0);
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_78,
      I1 => DI(0),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_79,
      I1 => DI(0),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_80,
      I1 => DI(0),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_74,
      I1 => DI(0),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_75,
      I1 => DI(0),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_76,
      I1 => DI(0),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_77,
      I1 => DI(0),
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_72,
      I1 => DI(0),
      O => \i__carry__2_i_4__1_n_0\
    );
\i__carry__2_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_73,
      I1 => DI(0),
      O => \i__carry__2_i_5__1_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p\(20),
      I1 => mult_out_n_69,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_83,
      I1 => DI(0),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_84,
      I1 => \mult_out_inferred__0/i__carry_0\(0),
      O => \i__carry_i_3__1_n_0\
    );
mult_out: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => A(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_out_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001010000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_out_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_out_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_out_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_out_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_out_OVERFLOW_UNCONNECTED,
      P(47) => mult_out_n_58,
      P(46) => mult_out_n_59,
      P(45) => mult_out_n_60,
      P(44) => mult_out_n_61,
      P(43) => mult_out_n_62,
      P(42) => mult_out_n_63,
      P(41) => mult_out_n_64,
      P(40) => mult_out_n_65,
      P(39) => mult_out_n_66,
      P(38) => mult_out_n_67,
      P(37) => mult_out_n_68,
      P(36) => mult_out_n_69,
      P(35 downto 34) => \^p\(20 downto 19),
      P(33) => mult_out_n_72,
      P(32) => mult_out_n_73,
      P(31) => mult_out_n_74,
      P(30) => mult_out_n_75,
      P(29) => mult_out_n_76,
      P(28) => mult_out_n_77,
      P(27) => mult_out_n_78,
      P(26) => mult_out_n_79,
      P(25) => mult_out_n_80,
      P(24 downto 23) => \^p\(18 downto 17),
      P(22) => mult_out_n_83,
      P(21) => mult_out_n_84,
      P(20) => mult_out_n_85,
      P(19 downto 3) => \^p\(16 downto 0),
      P(2) => mult_out_n_103,
      P(1) => mult_out_n_104,
      P(0) => mult_out_n_105,
      PATTERNBDETECT => NLW_mult_out_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_out_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult_out_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_out_UNDERFLOW_UNCONNECTED
    );
\mult_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__0/i__carry_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \^p\(17),
      DI(2) => mult_out_n_83,
      DI(1) => mult_out_n_84,
      DI(0) => '0',
      O(3 downto 0) => \^mult_out_0\(3 downto 0),
      S(3) => \adder_out_carry__3_i_3__0\(0),
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => mult_out_n_85
    );
\mult_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_78,
      DI(2) => mult_out_n_79,
      DI(1) => mult_out_n_80,
      DI(0) => \^p\(18),
      O(3 downto 0) => \^mult_out_1\(3 downto 0),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \adder_out_carry__4_i_3__0\(0)
    );
\mult_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_74,
      DI(2) => mult_out_n_75,
      DI(1) => mult_out_n_76,
      DI(0) => mult_out_n_77,
      O(3 downto 1) => \NLW_mult_out_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \^mult_out_2\(0),
      S(3) => \i__carry__1_i_1__1_n_0\,
      S(2) => \i__carry__1_i_2__1_n_0\,
      S(1) => \i__carry__1_i_3__1_n_0\,
      S(0) => \i__carry__1_i_4__1_n_0\
    );
\mult_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => DI(1 downto 0),
      DI(1) => mult_out_n_72,
      DI(0) => mult_out_n_73,
      O(3 downto 0) => \NLW_mult_out_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \mult_out_inferred__0/i__carry__3_0\(1 downto 0),
      S(1) => \i__carry__2_i_4__1_n_0\,
      S(0) => \i__carry__2_i_5__1_n_0\
    );
\mult_out_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(3 downto 0) => \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_mult_out_inferred__0/i__carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \^mult_out_3\(0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__3_i_1_n_0\
    );
\v1[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(3),
      I1 => \v1_reg[26]_0\,
      O => \v1[0]_i_2__0_n_0\
    );
\v1[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(2),
      I1 => \v1_reg[26]_0\,
      O => \v1[0]_i_3__0_n_0\
    );
\v1[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(1),
      I1 => \v1_reg[26]_0\,
      O => \v1[0]_i_4__0_n_0\
    );
\v1[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(0),
      I1 => \v1_reg[26]_0\,
      O => \v1[0]_i_5__0_n_0\
    );
\v1[0]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(3),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(3),
      O => \v1[0]_i_6__0_n_0\
    );
\v1[0]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(2),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(2),
      O => \v1[0]_i_7__0_n_0\
    );
\v1[0]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(1),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(1),
      O => \v1[0]_i_8__0_n_0\
    );
\v1[0]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(0),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(0),
      O => \v1[0]_i_9__0_n_0\
    );
\v1[12]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(15),
      I1 => \v1_reg[26]_0\,
      O => \v1[12]_i_2__0_n_0\
    );
\v1[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(14),
      I1 => \v1_reg[26]_0\,
      O => \v1[12]_i_3__0_n_0\
    );
\v1[12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(13),
      I1 => \v1_reg[26]_0\,
      O => \v1[12]_i_4__0_n_0\
    );
\v1[12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(12),
      I1 => \v1_reg[26]_0\,
      O => \v1[12]_i_5__0_n_0\
    );
\v1[12]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(15),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(15),
      O => \v1[12]_i_6__0_n_0\
    );
\v1[12]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(14),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(14),
      O => \v1[12]_i_7__0_n_0\
    );
\v1[12]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(13),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(13),
      O => \v1[12]_i_8__0_n_0\
    );
\v1[12]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(12),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(12),
      O => \v1[12]_i_9__0_n_0\
    );
\v1[16]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_0\(2),
      I1 => \v1_reg[26]_0\,
      O => \v1[16]_i_2__0_n_0\
    );
\v1[16]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_0\(1),
      I1 => \v1_reg[26]_0\,
      O => \v1[16]_i_3__0_n_0\
    );
\v1[16]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_0\(0),
      I1 => \v1_reg[26]_0\,
      O => \v1[16]_i_4__0_n_0\
    );
\v1[16]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(16),
      I1 => \v1_reg[26]_0\,
      O => \v1[16]_i_5__0_n_0\
    );
\v1[16]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^mult_out_0\(2),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(19),
      O => \v1[16]_i_6__0_n_0\
    );
\v1[16]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^mult_out_0\(1),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(18),
      O => \v1[16]_i_7__0_n_0\
    );
\v1[16]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^mult_out_0\(0),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(17),
      O => \v1[16]_i_8__0_n_0\
    );
\v1[16]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(16),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(16),
      O => \v1[16]_i_9__0_n_0\
    );
\v1[20]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_1\(2),
      I1 => \v1_reg[26]_0\,
      O => \v1[20]_i_2__0_n_0\
    );
\v1[20]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_1\(1),
      I1 => \v1_reg[26]_0\,
      O => \v1[20]_i_3__0_n_0\
    );
\v1[20]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_1\(0),
      I1 => \v1_reg[26]_0\,
      O => \v1[20]_i_4__0_n_0\
    );
\v1[20]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_0\(3),
      I1 => \v1_reg[26]_0\,
      O => \v1[20]_i_5__0_n_0\
    );
\v1[20]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_1\(2),
      I1 => v1_reg_1(23),
      I2 => \v1_reg[26]_0\,
      O => \v1[20]_i_6__0_n_0\
    );
\v1[20]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_1\(1),
      I1 => v1_reg_1(22),
      I2 => \v1_reg[26]_0\,
      O => \v1[20]_i_7__0_n_0\
    );
\v1[20]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_1\(0),
      I1 => v1_reg_1(21),
      I2 => \v1_reg[26]_0\,
      O => \v1[20]_i_8__0_n_0\
    );
\v1[20]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_0\(3),
      I1 => v1_reg_1(20),
      I2 => \v1_reg[26]_0\,
      O => \v1[20]_i_9__0_n_0\
    );
\v1[24]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_2\(0),
      I1 => \v1_reg[26]_0\,
      O => \v1[24]_i_2__0_n_0\
    );
\v1[24]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mult_out_1\(3),
      I1 => \v1_reg[26]_0\,
      O => \v1[24]_i_3__0_n_0\
    );
\v1[24]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_3\(0),
      I1 => \v1_reg[26]_1\,
      I2 => \v1_reg[26]_0\,
      O => \v1[24]_i_4__1_n_0\
    );
\v1[24]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_2\(0),
      I1 => v1_reg_1(25),
      I2 => \v1_reg[26]_0\,
      O => \v1[24]_i_5__0_n_0\
    );
\v1[24]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^mult_out_1\(3),
      I1 => v1_reg_1(24),
      I2 => \v1_reg[26]_0\,
      O => \v1[24]_i_6__0_n_0\
    );
\v1[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(7),
      I1 => \v1_reg[26]_0\,
      O => \v1[4]_i_2__0_n_0\
    );
\v1[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(6),
      I1 => \v1_reg[26]_0\,
      O => \v1[4]_i_3__0_n_0\
    );
\v1[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(5),
      I1 => \v1_reg[26]_0\,
      O => \v1[4]_i_4__0_n_0\
    );
\v1[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(4),
      I1 => \v1_reg[26]_0\,
      O => \v1[4]_i_5__0_n_0\
    );
\v1[4]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(7),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(7),
      O => \v1[4]_i_6__0_n_0\
    );
\v1[4]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(6),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(6),
      O => \v1[4]_i_7__0_n_0\
    );
\v1[4]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(5),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(5),
      O => \v1[4]_i_8__0_n_0\
    );
\v1[4]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(4),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(4),
      O => \v1[4]_i_9__0_n_0\
    );
\v1[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(11),
      I1 => \v1_reg[26]_0\,
      O => \v1[8]_i_2__0_n_0\
    );
\v1[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(10),
      I1 => \v1_reg[26]_0\,
      O => \v1[8]_i_3__0_n_0\
    );
\v1[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(9),
      I1 => \v1_reg[26]_0\,
      O => \v1[8]_i_4__0_n_0\
    );
\v1[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p\(8),
      I1 => \v1_reg[26]_0\,
      O => \v1[8]_i_5__0_n_0\
    );
\v1[8]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(11),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(11),
      O => \v1[8]_i_6__0_n_0\
    );
\v1[8]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(10),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(10),
      O => \v1[8]_i_7__0_n_0\
    );
\v1[8]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(9),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(9),
      O => \v1[8]_i_8__0_n_0\
    );
\v1[8]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^p\(8),
      I1 => \v1_reg[26]_0\,
      I2 => v1_reg_1(8),
      O => \v1[8]_i_9__0_n_0\
    );
\v1_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v1_reg[0]_i_1__0_n_0\,
      CO(2) => \v1_reg[0]_i_1__0_n_1\,
      CO(1) => \v1_reg[0]_i_1__0_n_2\,
      CO(0) => \v1_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[0]_i_2__0_n_0\,
      DI(2) => \v1[0]_i_3__0_n_0\,
      DI(1) => \v1[0]_i_4__0_n_0\,
      DI(0) => \v1[0]_i_5__0_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \v1[0]_i_6__0_n_0\,
      S(2) => \v1[0]_i_7__0_n_0\,
      S(1) => \v1[0]_i_8__0_n_0\,
      S(0) => \v1[0]_i_9__0_n_0\
    );
\v1_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[8]_i_1__0_n_0\,
      CO(3) => \v1_reg[12]_i_1__0_n_0\,
      CO(2) => \v1_reg[12]_i_1__0_n_1\,
      CO(1) => \v1_reg[12]_i_1__0_n_2\,
      CO(0) => \v1_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[12]_i_2__0_n_0\,
      DI(2) => \v1[12]_i_3__0_n_0\,
      DI(1) => \v1[12]_i_4__0_n_0\,
      DI(0) => \v1[12]_i_5__0_n_0\,
      O(3 downto 0) => mult_out_6(3 downto 0),
      S(3) => \v1[12]_i_6__0_n_0\,
      S(2) => \v1[12]_i_7__0_n_0\,
      S(1) => \v1[12]_i_8__0_n_0\,
      S(0) => \v1[12]_i_9__0_n_0\
    );
\v1_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[12]_i_1__0_n_0\,
      CO(3) => \v1_reg[16]_i_1__0_n_0\,
      CO(2) => \v1_reg[16]_i_1__0_n_1\,
      CO(1) => \v1_reg[16]_i_1__0_n_2\,
      CO(0) => \v1_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[16]_i_2__0_n_0\,
      DI(2) => \v1[16]_i_3__0_n_0\,
      DI(1) => \v1[16]_i_4__0_n_0\,
      DI(0) => \v1[16]_i_5__0_n_0\,
      O(3 downto 0) => mult_out_7(3 downto 0),
      S(3) => \v1[16]_i_6__0_n_0\,
      S(2) => \v1[16]_i_7__0_n_0\,
      S(1) => \v1[16]_i_8__0_n_0\,
      S(0) => \v1[16]_i_9__0_n_0\
    );
\v1_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[16]_i_1__0_n_0\,
      CO(3) => \v1_reg[20]_i_1__0_n_0\,
      CO(2) => \v1_reg[20]_i_1__0_n_1\,
      CO(1) => \v1_reg[20]_i_1__0_n_2\,
      CO(0) => \v1_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[20]_i_2__0_n_0\,
      DI(2) => \v1[20]_i_3__0_n_0\,
      DI(1) => \v1[20]_i_4__0_n_0\,
      DI(0) => \v1[20]_i_5__0_n_0\,
      O(3 downto 0) => \v1_reg[23]\(3 downto 0),
      S(3) => \v1[20]_i_6__0_n_0\,
      S(2) => \v1[20]_i_7__0_n_0\,
      S(1) => \v1[20]_i_8__0_n_0\,
      S(0) => \v1[20]_i_9__0_n_0\
    );
\v1_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[20]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_v1_reg[24]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v1_reg[24]_i_1__0_n_2\,
      CO(0) => \v1_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v1[24]_i_2__0_n_0\,
      DI(0) => \v1[24]_i_3__0_n_0\,
      O(3) => \NLW_v1_reg[24]_i_1__0_O_UNCONNECTED\(3),
      O(2 downto 0) => \v1_reg[26]\(2 downto 0),
      S(3) => '0',
      S(2) => \v1[24]_i_4__1_n_0\,
      S(1) => \v1[24]_i_5__0_n_0\,
      S(0) => \v1[24]_i_6__0_n_0\
    );
\v1_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[0]_i_1__0_n_0\,
      CO(3) => \v1_reg[4]_i_1__0_n_0\,
      CO(2) => \v1_reg[4]_i_1__0_n_1\,
      CO(1) => \v1_reg[4]_i_1__0_n_2\,
      CO(0) => \v1_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[4]_i_2__0_n_0\,
      DI(2) => \v1[4]_i_3__0_n_0\,
      DI(1) => \v1[4]_i_4__0_n_0\,
      DI(0) => \v1[4]_i_5__0_n_0\,
      O(3 downto 0) => mult_out_4(3 downto 0),
      S(3) => \v1[4]_i_6__0_n_0\,
      S(2) => \v1[4]_i_7__0_n_0\,
      S(1) => \v1[4]_i_8__0_n_0\,
      S(0) => \v1[4]_i_9__0_n_0\
    );
\v1_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[4]_i_1__0_n_0\,
      CO(3) => \v1_reg[8]_i_1__0_n_0\,
      CO(2) => \v1_reg[8]_i_1__0_n_1\,
      CO(1) => \v1_reg[8]_i_1__0_n_2\,
      CO(0) => \v1_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1[8]_i_2__0_n_0\,
      DI(2) => \v1[8]_i_3__0_n_0\,
      DI(1) => \v1[8]_i_4__0_n_0\,
      DI(0) => \v1[8]_i_5__0_n_0\,
      O(3 downto 0) => mult_out_5(3 downto 0),
      S(3) => \v1[8]_i_6__0_n_0\,
      S(2) => \v1[8]_i_7__0_n_0\,
      S(1) => \v1[8]_i_8__0_n_0\,
      S(0) => \v1[8]_i_9__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_signed_mult_2 is
  port (
    mult_out_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[26]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__1_0\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \mult_out__1_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mult_out__1_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[26]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    v1new : in STD_LOGIC_VECTOR ( 18 downto 0 );
    diff_rho_z : in STD_LOGIC_VECTOR ( 25 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__11_carry__0_i_5\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i__carry_i_2__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__0_i_2__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__0_i_2__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__1_i_2__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__1_i_2__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__3_i_2__1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry__3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \v1_reg[26]_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[26]_5\ : in STD_LOGIC;
    \v1_reg[26]_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_signed_mult_2 : entity is "signed_mult";
end design_1_lorenz_reader_0_0_signed_mult_2;

architecture STRUCTURE of design_1_lorenz_reader_0_0_signed_mult_2 is
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \^mult_out_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mult_out__0_n_100\ : STD_LOGIC;
  signal \mult_out__0_n_101\ : STD_LOGIC;
  signal \mult_out__0_n_102\ : STD_LOGIC;
  signal \mult_out__0_n_103\ : STD_LOGIC;
  signal \mult_out__0_n_104\ : STD_LOGIC;
  signal \mult_out__0_n_105\ : STD_LOGIC;
  signal \mult_out__0_n_106\ : STD_LOGIC;
  signal \mult_out__0_n_107\ : STD_LOGIC;
  signal \mult_out__0_n_108\ : STD_LOGIC;
  signal \mult_out__0_n_109\ : STD_LOGIC;
  signal \mult_out__0_n_110\ : STD_LOGIC;
  signal \mult_out__0_n_111\ : STD_LOGIC;
  signal \mult_out__0_n_112\ : STD_LOGIC;
  signal \mult_out__0_n_113\ : STD_LOGIC;
  signal \mult_out__0_n_114\ : STD_LOGIC;
  signal \mult_out__0_n_115\ : STD_LOGIC;
  signal \mult_out__0_n_116\ : STD_LOGIC;
  signal \mult_out__0_n_117\ : STD_LOGIC;
  signal \mult_out__0_n_118\ : STD_LOGIC;
  signal \mult_out__0_n_119\ : STD_LOGIC;
  signal \mult_out__0_n_120\ : STD_LOGIC;
  signal \mult_out__0_n_121\ : STD_LOGIC;
  signal \mult_out__0_n_122\ : STD_LOGIC;
  signal \mult_out__0_n_123\ : STD_LOGIC;
  signal \mult_out__0_n_124\ : STD_LOGIC;
  signal \mult_out__0_n_125\ : STD_LOGIC;
  signal \mult_out__0_n_126\ : STD_LOGIC;
  signal \mult_out__0_n_127\ : STD_LOGIC;
  signal \mult_out__0_n_128\ : STD_LOGIC;
  signal \mult_out__0_n_129\ : STD_LOGIC;
  signal \mult_out__0_n_130\ : STD_LOGIC;
  signal \mult_out__0_n_131\ : STD_LOGIC;
  signal \mult_out__0_n_132\ : STD_LOGIC;
  signal \mult_out__0_n_133\ : STD_LOGIC;
  signal \mult_out__0_n_134\ : STD_LOGIC;
  signal \mult_out__0_n_135\ : STD_LOGIC;
  signal \mult_out__0_n_136\ : STD_LOGIC;
  signal \mult_out__0_n_137\ : STD_LOGIC;
  signal \mult_out__0_n_138\ : STD_LOGIC;
  signal \mult_out__0_n_139\ : STD_LOGIC;
  signal \mult_out__0_n_140\ : STD_LOGIC;
  signal \mult_out__0_n_141\ : STD_LOGIC;
  signal \mult_out__0_n_142\ : STD_LOGIC;
  signal \mult_out__0_n_143\ : STD_LOGIC;
  signal \mult_out__0_n_144\ : STD_LOGIC;
  signal \mult_out__0_n_145\ : STD_LOGIC;
  signal \mult_out__0_n_146\ : STD_LOGIC;
  signal \mult_out__0_n_147\ : STD_LOGIC;
  signal \mult_out__0_n_148\ : STD_LOGIC;
  signal \mult_out__0_n_149\ : STD_LOGIC;
  signal \mult_out__0_n_150\ : STD_LOGIC;
  signal \mult_out__0_n_151\ : STD_LOGIC;
  signal \mult_out__0_n_152\ : STD_LOGIC;
  signal \mult_out__0_n_153\ : STD_LOGIC;
  signal \mult_out__0_n_58\ : STD_LOGIC;
  signal \mult_out__0_n_59\ : STD_LOGIC;
  signal \mult_out__0_n_60\ : STD_LOGIC;
  signal \mult_out__0_n_61\ : STD_LOGIC;
  signal \mult_out__0_n_62\ : STD_LOGIC;
  signal \mult_out__0_n_63\ : STD_LOGIC;
  signal \mult_out__0_n_64\ : STD_LOGIC;
  signal \mult_out__0_n_65\ : STD_LOGIC;
  signal \mult_out__0_n_66\ : STD_LOGIC;
  signal \mult_out__0_n_67\ : STD_LOGIC;
  signal \mult_out__0_n_68\ : STD_LOGIC;
  signal \mult_out__0_n_69\ : STD_LOGIC;
  signal \mult_out__0_n_70\ : STD_LOGIC;
  signal \mult_out__0_n_71\ : STD_LOGIC;
  signal \mult_out__0_n_72\ : STD_LOGIC;
  signal \mult_out__0_n_73\ : STD_LOGIC;
  signal \mult_out__0_n_74\ : STD_LOGIC;
  signal \mult_out__0_n_75\ : STD_LOGIC;
  signal \mult_out__0_n_76\ : STD_LOGIC;
  signal \mult_out__0_n_77\ : STD_LOGIC;
  signal \mult_out__0_n_78\ : STD_LOGIC;
  signal \mult_out__0_n_79\ : STD_LOGIC;
  signal \mult_out__0_n_80\ : STD_LOGIC;
  signal \mult_out__0_n_81\ : STD_LOGIC;
  signal \mult_out__0_n_82\ : STD_LOGIC;
  signal \mult_out__0_n_83\ : STD_LOGIC;
  signal \mult_out__0_n_84\ : STD_LOGIC;
  signal \mult_out__0_n_85\ : STD_LOGIC;
  signal \mult_out__0_n_86\ : STD_LOGIC;
  signal \mult_out__0_n_87\ : STD_LOGIC;
  signal \mult_out__0_n_88\ : STD_LOGIC;
  signal \mult_out__0_n_89\ : STD_LOGIC;
  signal \mult_out__0_n_90\ : STD_LOGIC;
  signal \mult_out__0_n_91\ : STD_LOGIC;
  signal \mult_out__0_n_92\ : STD_LOGIC;
  signal \mult_out__0_n_93\ : STD_LOGIC;
  signal \mult_out__0_n_94\ : STD_LOGIC;
  signal \mult_out__0_n_95\ : STD_LOGIC;
  signal \mult_out__0_n_96\ : STD_LOGIC;
  signal \mult_out__0_n_97\ : STD_LOGIC;
  signal \mult_out__0_n_98\ : STD_LOGIC;
  signal \mult_out__0_n_99\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_7\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_7\ : STD_LOGIC;
  signal \mult_out__11_carry_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry_n_7\ : STD_LOGIC;
  signal \^mult_out__1_0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \mult_out__1_n_100\ : STD_LOGIC;
  signal \mult_out__1_n_101\ : STD_LOGIC;
  signal \mult_out__1_n_102\ : STD_LOGIC;
  signal \mult_out__1_n_103\ : STD_LOGIC;
  signal \mult_out__1_n_104\ : STD_LOGIC;
  signal \mult_out__1_n_105\ : STD_LOGIC;
  signal \mult_out__1_n_69\ : STD_LOGIC;
  signal \mult_out__1_n_70\ : STD_LOGIC;
  signal \mult_out__1_n_71\ : STD_LOGIC;
  signal \mult_out__1_n_72\ : STD_LOGIC;
  signal \mult_out__1_n_73\ : STD_LOGIC;
  signal \mult_out__1_n_74\ : STD_LOGIC;
  signal \mult_out__1_n_75\ : STD_LOGIC;
  signal \mult_out__1_n_76\ : STD_LOGIC;
  signal \mult_out__1_n_77\ : STD_LOGIC;
  signal \mult_out__1_n_78\ : STD_LOGIC;
  signal \mult_out__1_n_79\ : STD_LOGIC;
  signal \mult_out__1_n_80\ : STD_LOGIC;
  signal \mult_out__1_n_81\ : STD_LOGIC;
  signal \mult_out__1_n_82\ : STD_LOGIC;
  signal \mult_out__1_n_83\ : STD_LOGIC;
  signal \mult_out__1_n_84\ : STD_LOGIC;
  signal \mult_out__1_n_85\ : STD_LOGIC;
  signal \mult_out__1_n_86\ : STD_LOGIC;
  signal \mult_out__1_n_87\ : STD_LOGIC;
  signal \mult_out__1_n_88\ : STD_LOGIC;
  signal \mult_out__1_n_89\ : STD_LOGIC;
  signal \mult_out__1_n_90\ : STD_LOGIC;
  signal \mult_out__1_n_91\ : STD_LOGIC;
  signal \mult_out__1_n_92\ : STD_LOGIC;
  signal \mult_out__1_n_93\ : STD_LOGIC;
  signal \mult_out__1_n_94\ : STD_LOGIC;
  signal \mult_out__1_n_95\ : STD_LOGIC;
  signal \mult_out__1_n_96\ : STD_LOGIC;
  signal \mult_out__1_n_97\ : STD_LOGIC;
  signal \mult_out__1_n_98\ : STD_LOGIC;
  signal \mult_out__1_n_99\ : STD_LOGIC;
  signal \mult_out__2_carry_n_2\ : STD_LOGIC;
  signal \mult_out__2_carry_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__8_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal mult_out_n_58 : STD_LOGIC;
  signal mult_out_n_59 : STD_LOGIC;
  signal mult_out_n_60 : STD_LOGIC;
  signal mult_out_n_61 : STD_LOGIC;
  signal mult_out_n_62 : STD_LOGIC;
  signal mult_out_n_63 : STD_LOGIC;
  signal mult_out_n_64 : STD_LOGIC;
  signal mult_out_n_65 : STD_LOGIC;
  signal mult_out_n_66 : STD_LOGIC;
  signal mult_out_n_67 : STD_LOGIC;
  signal mult_out_n_68 : STD_LOGIC;
  signal mult_out_n_69 : STD_LOGIC;
  signal mult_out_n_70 : STD_LOGIC;
  signal mult_out_n_71 : STD_LOGIC;
  signal mult_out_n_72 : STD_LOGIC;
  signal mult_out_n_73 : STD_LOGIC;
  signal mult_out_n_74 : STD_LOGIC;
  signal mult_out_n_75 : STD_LOGIC;
  signal mult_out_n_76 : STD_LOGIC;
  signal mult_out_n_77 : STD_LOGIC;
  signal mult_out_n_78 : STD_LOGIC;
  signal mult_out_n_79 : STD_LOGIC;
  signal mult_out_n_80 : STD_LOGIC;
  signal mult_out_n_81 : STD_LOGIC;
  signal mult_out_n_82 : STD_LOGIC;
  signal mult_out_n_83 : STD_LOGIC;
  signal mult_out_n_84 : STD_LOGIC;
  signal mult_out_n_85 : STD_LOGIC;
  signal mult_out_n_86 : STD_LOGIC;
  signal mult_out_n_88 : STD_LOGIC;
  signal mult_xrhoz_out : STD_LOGIC_VECTOR ( 26 downto 25 );
  signal p_0_in : STD_LOGIC_VECTOR ( 33 downto 17 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 53 downto 34 );
  signal \v1[24]_i_2_n_0\ : STD_LOGIC;
  signal \v1[24]_i_3_n_0\ : STD_LOGIC;
  signal \v1[24]_i_4__0_n_0\ : STD_LOGIC;
  signal \v1[24]_i_5_n_0\ : STD_LOGIC;
  signal \v1[24]_i_6_n_0\ : STD_LOGIC;
  signal \v1_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \v1_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal NLW_mult_out_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_out_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_out_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult_out_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal \NLW_mult_out__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out__2_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_mult_out__2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v1_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_out : label is "{SYNTH-10 {cell *THIS*} {string 10x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x10 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_reg[24]_i_1\ : label is 11;
begin
  mult_out_0(0) <= \^mult_out_0\(0);
  \mult_out__1_0\(24 downto 0) <= \^mult_out__1_0\(24 downto 0);
\funct_y_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(7),
      I1 => v1_reg_0(7),
      O => \v1_reg[15]\(3)
    );
\funct_y_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(6),
      I1 => v1_reg_0(6),
      O => \v1_reg[15]\(2)
    );
\funct_y_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(5),
      I1 => v1_reg_0(5),
      O => \v1_reg[15]\(1)
    );
\funct_y_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(4),
      I1 => v1_reg_0(4),
      O => \v1_reg[15]\(0)
    );
\funct_y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(11),
      I1 => v1_reg_0(11),
      O => \v1_reg[19]\(3)
    );
\funct_y_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(10),
      I1 => v1_reg_0(10),
      O => \v1_reg[19]\(2)
    );
\funct_y_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(9),
      I1 => v1_reg_0(9),
      O => \v1_reg[19]\(1)
    );
\funct_y_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(8),
      I1 => v1_reg_0(8),
      O => \v1_reg[19]\(0)
    );
\funct_y_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(15),
      I1 => v1_reg_0(15),
      O => \v1_reg[23]\(3)
    );
\funct_y_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(14),
      I1 => v1_reg_0(14),
      O => \v1_reg[23]\(2)
    );
\funct_y_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(13),
      I1 => v1_reg_0(13),
      O => \v1_reg[23]\(1)
    );
\funct_y_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(12),
      I1 => v1_reg_0(12),
      O => \v1_reg[23]\(0)
    );
\funct_y_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(18),
      I1 => \v1_reg[26]_2\(0),
      O => \v1_reg[26]_1\(2)
    );
\funct_y_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(17),
      I1 => \v1_reg[26]_3\(1),
      O => \v1_reg[26]_1\(1)
    );
\funct_y_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(16),
      I1 => \v1_reg[26]_3\(0),
      O => \v1_reg[26]_1\(0)
    );
\funct_y_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(22),
      I1 => \^mult_out__1_0\(23),
      O => \mult_out__1_1\(2)
    );
\funct_y_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(21),
      I1 => \^mult_out__1_0\(22),
      O => \mult_out__1_1\(1)
    );
\funct_y_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(20),
      I1 => \^mult_out__1_0\(21),
      O => \mult_out__1_1\(0)
    );
\funct_y_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_xrhoz_out(25),
      I1 => mult_xrhoz_out(26),
      O => \mult_out__1_2\(2)
    );
\funct_y_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(24),
      I1 => mult_xrhoz_out(25),
      O => \mult_out__1_2\(1)
    );
\funct_y_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(23),
      I1 => \^mult_out__1_0\(24),
      O => \mult_out__1_2\(0)
    );
funct_y_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(3),
      I1 => v1_reg_0(3),
      O => \v1_reg[11]\(3)
    );
funct_y_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(2),
      I1 => v1_reg_0(2),
      O => \v1_reg[11]\(2)
    );
funct_y_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(1),
      I1 => v1_reg_0(1),
      O => \v1_reg[11]\(1)
    );
funct_y_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(0),
      I1 => v1_reg_0(0),
      O => \v1_reg[11]\(0)
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_81,
      I1 => \mult_out__11_carry__0_n_6\,
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_99\,
      I1 => p_0_in(23),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_82,
      I1 => \mult_out__11_carry__0_n_7\,
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_100\,
      I1 => p_0_in(22),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_83,
      I1 => \mult_out__11_carry_n_4\,
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_101\,
      I1 => p_0_in(21),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_84,
      I1 => \mult_out__11_carry_n_5\,
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_102\,
      I1 => p_0_in(20),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_77,
      I1 => \mult_out__11_carry__1_n_6\,
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_95\,
      I1 => p_0_in(27),
      O => \i__carry__1_i_1__3_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_78,
      I1 => \mult_out__11_carry__1_n_7\,
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_96\,
      I1 => p_0_in(26),
      O => \i__carry__1_i_2__3_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_79,
      I1 => \mult_out__11_carry__0_n_4\,
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_97\,
      I1 => p_0_in(25),
      O => \i__carry__1_i_3__3_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_80,
      I1 => \mult_out__11_carry__0_n_5\,
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_98\,
      I1 => p_0_in(24),
      O => \i__carry__1_i_4__3_n_0\
    );
\i__carry__2_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_91\,
      I1 => p_0_in(31),
      O => \i__carry__2_i_1__2_n_0\
    );
\i__carry__2_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_73,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__2_i_1__4_n_0\
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_92\,
      I1 => p_0_in(30),
      O => \i__carry__2_i_2__1_n_0\
    );
\i__carry__2_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_74,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__2_i_2__3_n_0\
    );
\i__carry__2_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_75,
      I1 => \mult_out__11_carry__1_n_4\,
      O => \i__carry__2_i_3__2_n_0\
    );
\i__carry__2_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_93\,
      I1 => p_0_in(29),
      O => \i__carry__2_i_3__3_n_0\
    );
\i__carry__2_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_76,
      I1 => \mult_out__11_carry__1_n_5\,
      O => \i__carry__2_i_4__2_n_0\
    );
\i__carry__2_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_94\,
      I1 => p_0_in(28),
      O => \i__carry__2_i_4__3_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_69,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_87\,
      I1 => \p_0_in__0\(35),
      O => \i__carry__3_i_1__4_n_0\
    );
\i__carry__3_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_88\,
      I1 => \p_0_in__0\(34),
      O => \i__carry__3_i_2__1_n_0\
    );
\i__carry__3_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_70,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_2__3_n_0\
    );
\i__carry__3_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_89\,
      I1 => p_0_in(33),
      O => \i__carry__3_i_3__0_n_0\
    );
\i__carry__3_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_71,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_3__3_n_0\
    );
\i__carry__3_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_90\,
      I1 => p_0_in(32),
      O => \i__carry__3_i_4__0_n_0\
    );
\i__carry__3_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_72,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_4__3_n_0\
    );
\i__carry__4_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_83\,
      I1 => \p_0_in__0\(39),
      O => \i__carry__4_i_1__0_n_0\
    );
\i__carry__4_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_84\,
      I1 => \p_0_in__0\(38),
      O => \i__carry__4_i_2__0_n_0\
    );
\i__carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_85\,
      I1 => \p_0_in__0\(37),
      O => \i__carry__4_i_3__0_n_0\
    );
\i__carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_86\,
      I1 => \p_0_in__0\(36),
      O => \i__carry__4_i_4__0_n_0\
    );
\i__carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_79\,
      I1 => \p_0_in__0\(43),
      O => \i__carry__5_i_1__0_n_0\
    );
\i__carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_80\,
      I1 => \p_0_in__0\(42),
      O => \i__carry__5_i_2__0_n_0\
    );
\i__carry__5_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_81\,
      I1 => \p_0_in__0\(41),
      O => \i__carry__5_i_3__0_n_0\
    );
\i__carry__5_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_82\,
      I1 => \p_0_in__0\(40),
      O => \i__carry__5_i_4__0_n_0\
    );
\i__carry__6_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_75\,
      I1 => \p_0_in__0\(47),
      O => \i__carry__6_i_1__0_n_0\
    );
\i__carry__6_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_76\,
      I1 => \p_0_in__0\(46),
      O => \i__carry__6_i_2__0_n_0\
    );
\i__carry__6_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_77\,
      I1 => \p_0_in__0\(45),
      O => \i__carry__6_i_3__0_n_0\
    );
\i__carry__6_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_78\,
      I1 => \p_0_in__0\(44),
      O => \i__carry__6_i_4__0_n_0\
    );
\i__carry__7_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_71\,
      I1 => \p_0_in__0\(51),
      O => \i__carry__7_i_1__0_n_0\
    );
\i__carry__7_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_72\,
      I1 => \p_0_in__0\(50),
      O => \i__carry__7_i_2__0_n_0\
    );
\i__carry__7_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_73\,
      I1 => \p_0_in__0\(49),
      O => \i__carry__7_i_3__0_n_0\
    );
\i__carry__7_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_74\,
      I1 => \p_0_in__0\(48),
      O => \i__carry__7_i_4__0_n_0\
    );
\i__carry__8_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_69\,
      I1 => \p_0_in__0\(53),
      O => \i__carry__8_i_1__0_n_0\
    );
\i__carry__8_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_70\,
      I1 => \p_0_in__0\(52),
      O => \i__carry__8_i_2__0_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_85,
      I1 => \mult_out__11_carry_n_6\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_103\,
      I1 => p_0_in(19),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_86,
      I1 => \mult_out__11_carry_n_7\,
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_104\,
      I1 => p_0_in(18),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_105\,
      I1 => p_0_in(17),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mult_out_n_88,
      I1 => diff_rho_z(16),
      I2 => \mult_out_inferred__0/i__carry_0\(0),
      O => \i__carry_i_4__0_n_0\
    );
mult_out: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 1) => diff_rho_z(15 downto 0),
      A(0) => v1_reg(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_out_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => v1new(18),
      B(16) => v1new(18),
      B(15) => v1new(18),
      B(14) => v1new(18),
      B(13) => v1new(18),
      B(12) => v1new(18),
      B(11) => v1new(18),
      B(10) => v1new(18),
      B(9) => v1new(18),
      B(8) => v1new(18),
      B(7) => v1new(18),
      B(6) => v1new(18),
      B(5) => v1new(18),
      B(4) => v1new(18),
      B(3) => v1new(18),
      B(2) => v1new(18),
      B(1 downto 0) => v1new(18 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_out_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_out_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_out_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_out_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_out_OVERFLOW_UNCONNECTED,
      P(47) => mult_out_n_58,
      P(46) => mult_out_n_59,
      P(45) => mult_out_n_60,
      P(44) => mult_out_n_61,
      P(43) => mult_out_n_62,
      P(42) => mult_out_n_63,
      P(41) => mult_out_n_64,
      P(40) => mult_out_n_65,
      P(39) => mult_out_n_66,
      P(38) => mult_out_n_67,
      P(37) => mult_out_n_68,
      P(36) => mult_out_n_69,
      P(35) => mult_out_n_70,
      P(34) => mult_out_n_71,
      P(33) => mult_out_n_72,
      P(32) => mult_out_n_73,
      P(31) => mult_out_n_74,
      P(30) => mult_out_n_75,
      P(29) => mult_out_n_76,
      P(28) => mult_out_n_77,
      P(27) => mult_out_n_78,
      P(26) => mult_out_n_79,
      P(25) => mult_out_n_80,
      P(24) => mult_out_n_81,
      P(23) => mult_out_n_82,
      P(22) => mult_out_n_83,
      P(21) => mult_out_n_84,
      P(20) => mult_out_n_85,
      P(19) => mult_out_n_86,
      P(18) => \^mult_out_0\(0),
      P(17) => mult_out_n_88,
      P(16 downto 0) => p_0_in(33 downto 17),
      PATTERNBDETECT => NLW_mult_out_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_out_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult_out_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_out_UNDERFLOW_UNCONNECTED
    );
\mult_out__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => v1new(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mult_out__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 1) => diff_rho_z(15 downto 0),
      B(0) => v1_reg(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_mult_out__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_out__0_n_58\,
      P(46) => \mult_out__0_n_59\,
      P(45) => \mult_out__0_n_60\,
      P(44) => \mult_out__0_n_61\,
      P(43) => \mult_out__0_n_62\,
      P(42) => \mult_out__0_n_63\,
      P(41) => \mult_out__0_n_64\,
      P(40) => \mult_out__0_n_65\,
      P(39) => \mult_out__0_n_66\,
      P(38) => \mult_out__0_n_67\,
      P(37) => \mult_out__0_n_68\,
      P(36) => \mult_out__0_n_69\,
      P(35) => \mult_out__0_n_70\,
      P(34) => \mult_out__0_n_71\,
      P(33) => \mult_out__0_n_72\,
      P(32) => \mult_out__0_n_73\,
      P(31) => \mult_out__0_n_74\,
      P(30) => \mult_out__0_n_75\,
      P(29) => \mult_out__0_n_76\,
      P(28) => \mult_out__0_n_77\,
      P(27) => \mult_out__0_n_78\,
      P(26) => \mult_out__0_n_79\,
      P(25) => \mult_out__0_n_80\,
      P(24) => \mult_out__0_n_81\,
      P(23) => \mult_out__0_n_82\,
      P(22) => \mult_out__0_n_83\,
      P(21) => \mult_out__0_n_84\,
      P(20) => \mult_out__0_n_85\,
      P(19) => \mult_out__0_n_86\,
      P(18) => \mult_out__0_n_87\,
      P(17) => \mult_out__0_n_88\,
      P(16) => \mult_out__0_n_89\,
      P(15) => \mult_out__0_n_90\,
      P(14) => \mult_out__0_n_91\,
      P(13) => \mult_out__0_n_92\,
      P(12) => \mult_out__0_n_93\,
      P(11) => \mult_out__0_n_94\,
      P(10) => \mult_out__0_n_95\,
      P(9) => \mult_out__0_n_96\,
      P(8) => \mult_out__0_n_97\,
      P(7) => \mult_out__0_n_98\,
      P(6) => \mult_out__0_n_99\,
      P(5) => \mult_out__0_n_100\,
      P(4) => \mult_out__0_n_101\,
      P(3) => \mult_out__0_n_102\,
      P(2) => \mult_out__0_n_103\,
      P(1) => \mult_out__0_n_104\,
      P(0) => \mult_out__0_n_105\,
      PATTERNBDETECT => \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \mult_out__0_n_106\,
      PCOUT(46) => \mult_out__0_n_107\,
      PCOUT(45) => \mult_out__0_n_108\,
      PCOUT(44) => \mult_out__0_n_109\,
      PCOUT(43) => \mult_out__0_n_110\,
      PCOUT(42) => \mult_out__0_n_111\,
      PCOUT(41) => \mult_out__0_n_112\,
      PCOUT(40) => \mult_out__0_n_113\,
      PCOUT(39) => \mult_out__0_n_114\,
      PCOUT(38) => \mult_out__0_n_115\,
      PCOUT(37) => \mult_out__0_n_116\,
      PCOUT(36) => \mult_out__0_n_117\,
      PCOUT(35) => \mult_out__0_n_118\,
      PCOUT(34) => \mult_out__0_n_119\,
      PCOUT(33) => \mult_out__0_n_120\,
      PCOUT(32) => \mult_out__0_n_121\,
      PCOUT(31) => \mult_out__0_n_122\,
      PCOUT(30) => \mult_out__0_n_123\,
      PCOUT(29) => \mult_out__0_n_124\,
      PCOUT(28) => \mult_out__0_n_125\,
      PCOUT(27) => \mult_out__0_n_126\,
      PCOUT(26) => \mult_out__0_n_127\,
      PCOUT(25) => \mult_out__0_n_128\,
      PCOUT(24) => \mult_out__0_n_129\,
      PCOUT(23) => \mult_out__0_n_130\,
      PCOUT(22) => \mult_out__0_n_131\,
      PCOUT(21) => \mult_out__0_n_132\,
      PCOUT(20) => \mult_out__0_n_133\,
      PCOUT(19) => \mult_out__0_n_134\,
      PCOUT(18) => \mult_out__0_n_135\,
      PCOUT(17) => \mult_out__0_n_136\,
      PCOUT(16) => \mult_out__0_n_137\,
      PCOUT(15) => \mult_out__0_n_138\,
      PCOUT(14) => \mult_out__0_n_139\,
      PCOUT(13) => \mult_out__0_n_140\,
      PCOUT(12) => \mult_out__0_n_141\,
      PCOUT(11) => \mult_out__0_n_142\,
      PCOUT(10) => \mult_out__0_n_143\,
      PCOUT(9) => \mult_out__0_n_144\,
      PCOUT(8) => \mult_out__0_n_145\,
      PCOUT(7) => \mult_out__0_n_146\,
      PCOUT(6) => \mult_out__0_n_147\,
      PCOUT(5) => \mult_out__0_n_148\,
      PCOUT(4) => \mult_out__0_n_149\,
      PCOUT(3) => \mult_out__0_n_150\,
      PCOUT(2) => \mult_out__0_n_151\,
      PCOUT(1) => \mult_out__0_n_152\,
      PCOUT(0) => \mult_out__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\
    );
\mult_out__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => v1new(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mult_out__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => diff_rho_z(25),
      B(16) => diff_rho_z(25),
      B(15) => diff_rho_z(25),
      B(14) => diff_rho_z(25),
      B(13) => diff_rho_z(25),
      B(12) => diff_rho_z(25),
      B(11) => diff_rho_z(25),
      B(10) => diff_rho_z(25),
      B(9 downto 0) => diff_rho_z(25 downto 16),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_out__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 37) => \NLW_mult_out__1_P_UNCONNECTED\(47 downto 37),
      P(36) => \mult_out__1_n_69\,
      P(35) => \mult_out__1_n_70\,
      P(34) => \mult_out__1_n_71\,
      P(33) => \mult_out__1_n_72\,
      P(32) => \mult_out__1_n_73\,
      P(31) => \mult_out__1_n_74\,
      P(30) => \mult_out__1_n_75\,
      P(29) => \mult_out__1_n_76\,
      P(28) => \mult_out__1_n_77\,
      P(27) => \mult_out__1_n_78\,
      P(26) => \mult_out__1_n_79\,
      P(25) => \mult_out__1_n_80\,
      P(24) => \mult_out__1_n_81\,
      P(23) => \mult_out__1_n_82\,
      P(22) => \mult_out__1_n_83\,
      P(21) => \mult_out__1_n_84\,
      P(20) => \mult_out__1_n_85\,
      P(19) => \mult_out__1_n_86\,
      P(18) => \mult_out__1_n_87\,
      P(17) => \mult_out__1_n_88\,
      P(16) => \mult_out__1_n_89\,
      P(15) => \mult_out__1_n_90\,
      P(14) => \mult_out__1_n_91\,
      P(13) => \mult_out__1_n_92\,
      P(12) => \mult_out__1_n_93\,
      P(11) => \mult_out__1_n_94\,
      P(10) => \mult_out__1_n_95\,
      P(9) => \mult_out__1_n_96\,
      P(8) => \mult_out__1_n_97\,
      P(7) => \mult_out__1_n_98\,
      P(6) => \mult_out__1_n_99\,
      P(5) => \mult_out__1_n_100\,
      P(4) => \mult_out__1_n_101\,
      P(3) => \mult_out__1_n_102\,
      P(2) => \mult_out__1_n_103\,
      P(1) => \mult_out__1_n_104\,
      P(0) => \mult_out__1_n_105\,
      PATTERNBDETECT => \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \mult_out__0_n_106\,
      PCIN(46) => \mult_out__0_n_107\,
      PCIN(45) => \mult_out__0_n_108\,
      PCIN(44) => \mult_out__0_n_109\,
      PCIN(43) => \mult_out__0_n_110\,
      PCIN(42) => \mult_out__0_n_111\,
      PCIN(41) => \mult_out__0_n_112\,
      PCIN(40) => \mult_out__0_n_113\,
      PCIN(39) => \mult_out__0_n_114\,
      PCIN(38) => \mult_out__0_n_115\,
      PCIN(37) => \mult_out__0_n_116\,
      PCIN(36) => \mult_out__0_n_117\,
      PCIN(35) => \mult_out__0_n_118\,
      PCIN(34) => \mult_out__0_n_119\,
      PCIN(33) => \mult_out__0_n_120\,
      PCIN(32) => \mult_out__0_n_121\,
      PCIN(31) => \mult_out__0_n_122\,
      PCIN(30) => \mult_out__0_n_123\,
      PCIN(29) => \mult_out__0_n_124\,
      PCIN(28) => \mult_out__0_n_125\,
      PCIN(27) => \mult_out__0_n_126\,
      PCIN(26) => \mult_out__0_n_127\,
      PCIN(25) => \mult_out__0_n_128\,
      PCIN(24) => \mult_out__0_n_129\,
      PCIN(23) => \mult_out__0_n_130\,
      PCIN(22) => \mult_out__0_n_131\,
      PCIN(21) => \mult_out__0_n_132\,
      PCIN(20) => \mult_out__0_n_133\,
      PCIN(19) => \mult_out__0_n_134\,
      PCIN(18) => \mult_out__0_n_135\,
      PCIN(17) => \mult_out__0_n_136\,
      PCIN(16) => \mult_out__0_n_137\,
      PCIN(15) => \mult_out__0_n_138\,
      PCIN(14) => \mult_out__0_n_139\,
      PCIN(13) => \mult_out__0_n_140\,
      PCIN(12) => \mult_out__0_n_141\,
      PCIN(11) => \mult_out__0_n_142\,
      PCIN(10) => \mult_out__0_n_143\,
      PCIN(9) => \mult_out__0_n_144\,
      PCIN(8) => \mult_out__0_n_145\,
      PCIN(7) => \mult_out__0_n_146\,
      PCIN(6) => \mult_out__0_n_147\,
      PCIN(5) => \mult_out__0_n_148\,
      PCIN(4) => \mult_out__0_n_149\,
      PCIN(3) => \mult_out__0_n_150\,
      PCIN(2) => \mult_out__0_n_151\,
      PCIN(1) => \mult_out__0_n_152\,
      PCIN(0) => \mult_out__0_n_153\,
      PCOUT(47 downto 0) => \NLW_mult_out__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\
    );
\mult_out__11_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out__11_carry_n_0\,
      CO(2) => \mult_out__11_carry_n_1\,
      CO(1) => \mult_out__11_carry_n_2\,
      CO(0) => \mult_out__11_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3) => \mult_out__11_carry_n_4\,
      O(2) => \mult_out__11_carry_n_5\,
      O(1) => \mult_out__11_carry_n_6\,
      O(0) => \mult_out__11_carry_n_7\,
      S(3 downto 0) => \i__carry_i_2__2_0\(3 downto 0)
    );
\mult_out__11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__11_carry_n_0\,
      CO(3) => \mult_out__11_carry__0_n_0\,
      CO(2) => \mult_out__11_carry__0_n_1\,
      CO(1) => \mult_out__11_carry__0_n_2\,
      CO(0) => \mult_out__11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i__carry__0_i_2__2_0\(3 downto 0),
      O(3) => \mult_out__11_carry__0_n_4\,
      O(2) => \mult_out__11_carry__0_n_5\,
      O(1) => \mult_out__11_carry__0_n_6\,
      O(0) => \mult_out__11_carry__0_n_7\,
      S(3 downto 0) => \i__carry__0_i_2__2_1\(3 downto 0)
    );
\mult_out__11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__11_carry__0_n_0\,
      CO(3) => \v1_reg[26]_0\(0),
      CO(2) => \mult_out__11_carry__1_n_1\,
      CO(1) => \mult_out__11_carry__1_n_2\,
      CO(0) => \mult_out__11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i__carry__1_i_2__2_0\(3 downto 0),
      O(3) => \mult_out__11_carry__1_n_4\,
      O(2) => \mult_out__11_carry__1_n_5\,
      O(1) => \mult_out__11_carry__1_n_6\,
      O(0) => \mult_out__11_carry__1_n_7\,
      S(3 downto 0) => \i__carry__1_i_2__2_1\(3 downto 0)
    );
\mult_out__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \NLW_mult_out__2_carry_CO_UNCONNECTED\(2),
      CO(1) => \mult_out__2_carry_n_2\,
      CO(0) => \mult_out__2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"01",
      DI(1) => \mult_out__11_carry__0_i_5\,
      DI(0) => '0',
      O(3) => \NLW_mult_out__2_carry_O_UNCONNECTED\(3),
      O(2 downto 0) => \v1_reg[26]\(2 downto 0),
      S(3) => '1',
      S(2 downto 0) => S(2 downto 0)
    );
\mult_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__0/i__carry_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_85,
      DI(2) => mult_out_n_86,
      DI(1) => \^mult_out_0\(0),
      DI(0) => mult_out_n_88,
      O(3 downto 0) => \p_0_in__0\(37 downto 34),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry__3_i_2__1_0\(0),
      S(0) => \i__carry_i_4__0_n_0\
    );
\mult_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_81,
      DI(2) => mult_out_n_82,
      DI(1) => mult_out_n_83,
      DI(0) => mult_out_n_84,
      O(3 downto 0) => \p_0_in__0\(41 downto 38),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\mult_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_77,
      DI(2) => mult_out_n_78,
      DI(1) => mult_out_n_79,
      DI(0) => mult_out_n_80,
      O(3 downto 0) => \p_0_in__0\(45 downto 42),
      S(3) => \i__carry__1_i_1__2_n_0\,
      S(2) => \i__carry__1_i_2__2_n_0\,
      S(1) => \i__carry__1_i_3__2_n_0\,
      S(0) => \i__carry__1_i_4__2_n_0\
    );
\mult_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_73,
      DI(2) => mult_out_n_74,
      DI(1) => mult_out_n_75,
      DI(0) => mult_out_n_76,
      O(3 downto 0) => \p_0_in__0\(49 downto 46),
      S(3) => \i__carry__2_i_1__4_n_0\,
      S(2) => \i__carry__2_i_2__3_n_0\,
      S(1) => \i__carry__2_i_3__2_n_0\,
      S(0) => \i__carry__2_i_4__2_n_0\
    );
\mult_out_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(3) => \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \mult_out_inferred__0/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => mult_out_n_70,
      DI(1) => mult_out_n_71,
      DI(0) => mult_out_n_72,
      O(3 downto 0) => \p_0_in__0\(53 downto 50),
      S(3) => \i__carry__3_i_1__0_n_0\,
      S(2) => \i__carry__3_i_2__3_n_0\,
      S(1) => \i__carry__3_i_3__3_n_0\,
      S(0) => \i__carry__3_i_4__3_n_0\
    );
\mult_out_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__1/i__carry_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_103\,
      DI(2) => \mult_out__1_n_104\,
      DI(1) => \mult_out__1_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \mult_out__0_n_89\
    );
\mult_out_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_99\,
      DI(2) => \mult_out__1_n_100\,
      DI(1) => \mult_out__1_n_101\,
      DI(0) => \mult_out__1_n_102\,
      O(3 downto 0) => \^mult_out__1_0\(3 downto 0),
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\mult_out_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_95\,
      DI(2) => \mult_out__1_n_96\,
      DI(1) => \mult_out__1_n_97\,
      DI(0) => \mult_out__1_n_98\,
      O(3 downto 0) => \^mult_out__1_0\(7 downto 4),
      S(3) => \i__carry__1_i_1__3_n_0\,
      S(2) => \i__carry__1_i_2__3_n_0\,
      S(1) => \i__carry__1_i_3__3_n_0\,
      S(0) => \i__carry__1_i_4__3_n_0\
    );
\mult_out_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_91\,
      DI(2) => \mult_out__1_n_92\,
      DI(1) => \mult_out__1_n_93\,
      DI(0) => \mult_out__1_n_94\,
      O(3 downto 0) => \^mult_out__1_0\(11 downto 8),
      S(3) => \i__carry__2_i_1__2_n_0\,
      S(2) => \i__carry__2_i_2__1_n_0\,
      S(1) => \i__carry__2_i_3__3_n_0\,
      S(0) => \i__carry__2_i_4__3_n_0\
    );
\mult_out_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_87\,
      DI(2) => \mult_out__1_n_88\,
      DI(1) => \mult_out__1_n_89\,
      DI(0) => \mult_out__1_n_90\,
      O(3 downto 0) => \^mult_out__1_0\(15 downto 12),
      S(3) => \i__carry__3_i_1__4_n_0\,
      S(2) => \i__carry__3_i_2__1_n_0\,
      S(1) => \i__carry__3_i_3__0_n_0\,
      S(0) => \i__carry__3_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__4_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__4_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_83\,
      DI(2) => \mult_out__1_n_84\,
      DI(1) => \mult_out__1_n_85\,
      DI(0) => \mult_out__1_n_86\,
      O(3 downto 0) => \^mult_out__1_0\(19 downto 16),
      S(3) => \i__carry__4_i_1__0_n_0\,
      S(2) => \i__carry__4_i_2__0_n_0\,
      S(1) => \i__carry__4_i_3__0_n_0\,
      S(0) => \i__carry__4_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__5_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__5_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_79\,
      DI(2) => \mult_out__1_n_80\,
      DI(1) => \mult_out__1_n_81\,
      DI(0) => \mult_out__1_n_82\,
      O(3 downto 0) => \^mult_out__1_0\(23 downto 20),
      S(3) => \i__carry__5_i_1__0_n_0\,
      S(2) => \i__carry__5_i_2__0_n_0\,
      S(1) => \i__carry__5_i_3__0_n_0\,
      S(0) => \i__carry__5_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__6_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__6_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_75\,
      DI(2) => \mult_out__1_n_76\,
      DI(1) => \mult_out__1_n_77\,
      DI(0) => \mult_out__1_n_78\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\(3 downto 2),
      O(1) => mult_xrhoz_out(25),
      O(0) => \^mult_out__1_0\(24),
      S(3) => \i__carry__6_i_1__0_n_0\,
      S(2) => \i__carry__6_i_2__0_n_0\,
      S(1) => \i__carry__6_i_3__0_n_0\,
      S(0) => \i__carry__6_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__7_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__7_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_71\,
      DI(2) => \mult_out__1_n_72\,
      DI(1) => \mult_out__1_n_73\,
      DI(0) => \mult_out__1_n_74\,
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__7_i_1__0_n_0\,
      S(2) => \i__carry__7_i_2__0_n_0\,
      S(1) => \i__carry__7_i_3__0_n_0\,
      S(0) => \i__carry__7_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(3 downto 1) => \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out_inferred__1/i__carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mult_out__1_n_70\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(3 downto 2),
      O(1) => mult_xrhoz_out(26),
      O(0) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__8_i_1__0_n_0\,
      S(0) => \i__carry__8_i_2__0_n_0\
    );
\v1[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[26]_4\(1),
      I1 => \v1_reg[26]_5\,
      O => \v1[24]_i_2_n_0\
    );
\v1[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[26]_4\(0),
      I1 => \v1_reg[26]_5\,
      O => \v1[24]_i_3_n_0\
    );
\v1[24]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \v1_reg[26]_4\(2),
      I1 => \v1_reg[26]_2\(0),
      I2 => \v1_reg[26]_5\,
      O => \v1[24]_i_4__0_n_0\
    );
\v1[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[26]_4\(1),
      I1 => \v1_reg[26]_5\,
      I2 => \v1_reg[26]_3\(1),
      O => \v1[24]_i_5_n_0\
    );
\v1[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[26]_4\(0),
      I1 => \v1_reg[26]_5\,
      I2 => \v1_reg[26]_3\(0),
      O => \v1[24]_i_6_n_0\
    );
\v1_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[26]_6\(0),
      CO(3 downto 2) => \NLW_v1_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v1_reg[24]_i_1_n_2\,
      CO(0) => \v1_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v1[24]_i_2_n_0\,
      DI(0) => \v1[24]_i_3_n_0\,
      O(3) => \NLW_v1_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => O(2 downto 0),
      S(3) => '0',
      S(2) => \v1[24]_i_4__0_n_0\,
      S(1) => \v1[24]_i_5_n_0\,
      S(0) => \v1[24]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_signed_mult_3 is
  port (
    mult_out_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[17]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[25]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out__1_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \mult_out__1_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mult_out__1_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    v1new : in STD_LOGIC_VECTOR ( 18 downto 0 );
    mult_out_1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    B : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \mult_out__11_carry__0_i_5__0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i__carry_i_2__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__0_i_2__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__0_i_2__4_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__1_i_2__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__1_i_2__4_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__3_i_2__2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry__3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \funct_z_carry__4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \funct_z_carry__3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \funct_z_carry__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \funct_z_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \funct_z_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    funct_z_carry : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \v1_reg[26]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \v1_reg[26]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[26]_2\ : in STD_LOGIC;
    \v1_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \funct_z_carry__5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v1_reg[23]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mult_out_inferred__0/i__carry_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_signed_mult_3 : entity is "signed_mult";
end design_1_lorenz_reader_0_0_signed_mult_3;

architecture STRUCTURE of design_1_lorenz_reader_0_0_signed_mult_3 is
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \^mult_out_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mult_out__0_n_100\ : STD_LOGIC;
  signal \mult_out__0_n_101\ : STD_LOGIC;
  signal \mult_out__0_n_102\ : STD_LOGIC;
  signal \mult_out__0_n_103\ : STD_LOGIC;
  signal \mult_out__0_n_104\ : STD_LOGIC;
  signal \mult_out__0_n_105\ : STD_LOGIC;
  signal \mult_out__0_n_106\ : STD_LOGIC;
  signal \mult_out__0_n_107\ : STD_LOGIC;
  signal \mult_out__0_n_108\ : STD_LOGIC;
  signal \mult_out__0_n_109\ : STD_LOGIC;
  signal \mult_out__0_n_110\ : STD_LOGIC;
  signal \mult_out__0_n_111\ : STD_LOGIC;
  signal \mult_out__0_n_112\ : STD_LOGIC;
  signal \mult_out__0_n_113\ : STD_LOGIC;
  signal \mult_out__0_n_114\ : STD_LOGIC;
  signal \mult_out__0_n_115\ : STD_LOGIC;
  signal \mult_out__0_n_116\ : STD_LOGIC;
  signal \mult_out__0_n_117\ : STD_LOGIC;
  signal \mult_out__0_n_118\ : STD_LOGIC;
  signal \mult_out__0_n_119\ : STD_LOGIC;
  signal \mult_out__0_n_120\ : STD_LOGIC;
  signal \mult_out__0_n_121\ : STD_LOGIC;
  signal \mult_out__0_n_122\ : STD_LOGIC;
  signal \mult_out__0_n_123\ : STD_LOGIC;
  signal \mult_out__0_n_124\ : STD_LOGIC;
  signal \mult_out__0_n_125\ : STD_LOGIC;
  signal \mult_out__0_n_126\ : STD_LOGIC;
  signal \mult_out__0_n_127\ : STD_LOGIC;
  signal \mult_out__0_n_128\ : STD_LOGIC;
  signal \mult_out__0_n_129\ : STD_LOGIC;
  signal \mult_out__0_n_130\ : STD_LOGIC;
  signal \mult_out__0_n_131\ : STD_LOGIC;
  signal \mult_out__0_n_132\ : STD_LOGIC;
  signal \mult_out__0_n_133\ : STD_LOGIC;
  signal \mult_out__0_n_134\ : STD_LOGIC;
  signal \mult_out__0_n_135\ : STD_LOGIC;
  signal \mult_out__0_n_136\ : STD_LOGIC;
  signal \mult_out__0_n_137\ : STD_LOGIC;
  signal \mult_out__0_n_138\ : STD_LOGIC;
  signal \mult_out__0_n_139\ : STD_LOGIC;
  signal \mult_out__0_n_140\ : STD_LOGIC;
  signal \mult_out__0_n_141\ : STD_LOGIC;
  signal \mult_out__0_n_142\ : STD_LOGIC;
  signal \mult_out__0_n_143\ : STD_LOGIC;
  signal \mult_out__0_n_144\ : STD_LOGIC;
  signal \mult_out__0_n_145\ : STD_LOGIC;
  signal \mult_out__0_n_146\ : STD_LOGIC;
  signal \mult_out__0_n_147\ : STD_LOGIC;
  signal \mult_out__0_n_148\ : STD_LOGIC;
  signal \mult_out__0_n_149\ : STD_LOGIC;
  signal \mult_out__0_n_150\ : STD_LOGIC;
  signal \mult_out__0_n_151\ : STD_LOGIC;
  signal \mult_out__0_n_152\ : STD_LOGIC;
  signal \mult_out__0_n_153\ : STD_LOGIC;
  signal \mult_out__0_n_58\ : STD_LOGIC;
  signal \mult_out__0_n_59\ : STD_LOGIC;
  signal \mult_out__0_n_60\ : STD_LOGIC;
  signal \mult_out__0_n_61\ : STD_LOGIC;
  signal \mult_out__0_n_62\ : STD_LOGIC;
  signal \mult_out__0_n_63\ : STD_LOGIC;
  signal \mult_out__0_n_64\ : STD_LOGIC;
  signal \mult_out__0_n_65\ : STD_LOGIC;
  signal \mult_out__0_n_66\ : STD_LOGIC;
  signal \mult_out__0_n_67\ : STD_LOGIC;
  signal \mult_out__0_n_68\ : STD_LOGIC;
  signal \mult_out__0_n_69\ : STD_LOGIC;
  signal \mult_out__0_n_70\ : STD_LOGIC;
  signal \mult_out__0_n_71\ : STD_LOGIC;
  signal \mult_out__0_n_72\ : STD_LOGIC;
  signal \mult_out__0_n_73\ : STD_LOGIC;
  signal \mult_out__0_n_74\ : STD_LOGIC;
  signal \mult_out__0_n_75\ : STD_LOGIC;
  signal \mult_out__0_n_76\ : STD_LOGIC;
  signal \mult_out__0_n_77\ : STD_LOGIC;
  signal \mult_out__0_n_78\ : STD_LOGIC;
  signal \mult_out__0_n_79\ : STD_LOGIC;
  signal \mult_out__0_n_80\ : STD_LOGIC;
  signal \mult_out__0_n_81\ : STD_LOGIC;
  signal \mult_out__0_n_82\ : STD_LOGIC;
  signal \mult_out__0_n_83\ : STD_LOGIC;
  signal \mult_out__0_n_84\ : STD_LOGIC;
  signal \mult_out__0_n_85\ : STD_LOGIC;
  signal \mult_out__0_n_86\ : STD_LOGIC;
  signal \mult_out__0_n_87\ : STD_LOGIC;
  signal \mult_out__0_n_88\ : STD_LOGIC;
  signal \mult_out__0_n_89\ : STD_LOGIC;
  signal \mult_out__0_n_90\ : STD_LOGIC;
  signal \mult_out__0_n_91\ : STD_LOGIC;
  signal \mult_out__0_n_92\ : STD_LOGIC;
  signal \mult_out__0_n_93\ : STD_LOGIC;
  signal \mult_out__0_n_94\ : STD_LOGIC;
  signal \mult_out__0_n_95\ : STD_LOGIC;
  signal \mult_out__0_n_96\ : STD_LOGIC;
  signal \mult_out__0_n_97\ : STD_LOGIC;
  signal \mult_out__0_n_98\ : STD_LOGIC;
  signal \mult_out__0_n_99\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry__0_n_7\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry__1_n_7\ : STD_LOGIC;
  signal \mult_out__11_carry_n_0\ : STD_LOGIC;
  signal \mult_out__11_carry_n_1\ : STD_LOGIC;
  signal \mult_out__11_carry_n_2\ : STD_LOGIC;
  signal \mult_out__11_carry_n_3\ : STD_LOGIC;
  signal \mult_out__11_carry_n_4\ : STD_LOGIC;
  signal \mult_out__11_carry_n_5\ : STD_LOGIC;
  signal \mult_out__11_carry_n_6\ : STD_LOGIC;
  signal \mult_out__11_carry_n_7\ : STD_LOGIC;
  signal \^mult_out__1_0\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \mult_out__1_n_100\ : STD_LOGIC;
  signal \mult_out__1_n_101\ : STD_LOGIC;
  signal \mult_out__1_n_102\ : STD_LOGIC;
  signal \mult_out__1_n_103\ : STD_LOGIC;
  signal \mult_out__1_n_104\ : STD_LOGIC;
  signal \mult_out__1_n_105\ : STD_LOGIC;
  signal \mult_out__1_n_69\ : STD_LOGIC;
  signal \mult_out__1_n_70\ : STD_LOGIC;
  signal \mult_out__1_n_71\ : STD_LOGIC;
  signal \mult_out__1_n_72\ : STD_LOGIC;
  signal \mult_out__1_n_73\ : STD_LOGIC;
  signal \mult_out__1_n_74\ : STD_LOGIC;
  signal \mult_out__1_n_75\ : STD_LOGIC;
  signal \mult_out__1_n_76\ : STD_LOGIC;
  signal \mult_out__1_n_77\ : STD_LOGIC;
  signal \mult_out__1_n_78\ : STD_LOGIC;
  signal \mult_out__1_n_79\ : STD_LOGIC;
  signal \mult_out__1_n_80\ : STD_LOGIC;
  signal \mult_out__1_n_81\ : STD_LOGIC;
  signal \mult_out__1_n_82\ : STD_LOGIC;
  signal \mult_out__1_n_83\ : STD_LOGIC;
  signal \mult_out__1_n_84\ : STD_LOGIC;
  signal \mult_out__1_n_85\ : STD_LOGIC;
  signal \mult_out__1_n_86\ : STD_LOGIC;
  signal \mult_out__1_n_87\ : STD_LOGIC;
  signal \mult_out__1_n_88\ : STD_LOGIC;
  signal \mult_out__1_n_89\ : STD_LOGIC;
  signal \mult_out__1_n_90\ : STD_LOGIC;
  signal \mult_out__1_n_91\ : STD_LOGIC;
  signal \mult_out__1_n_92\ : STD_LOGIC;
  signal \mult_out__1_n_93\ : STD_LOGIC;
  signal \mult_out__1_n_94\ : STD_LOGIC;
  signal \mult_out__1_n_95\ : STD_LOGIC;
  signal \mult_out__1_n_96\ : STD_LOGIC;
  signal \mult_out__1_n_97\ : STD_LOGIC;
  signal \mult_out__1_n_98\ : STD_LOGIC;
  signal \mult_out__1_n_99\ : STD_LOGIC;
  signal \mult_out__2\ : STD_LOGIC_VECTOR ( 53 to 53 );
  signal \mult_out__2_carry_n_2\ : STD_LOGIC;
  signal \mult_out__2_carry_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__8_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal mult_out_n_100 : STD_LOGIC;
  signal mult_out_n_101 : STD_LOGIC;
  signal mult_out_n_102 : STD_LOGIC;
  signal mult_out_n_103 : STD_LOGIC;
  signal mult_out_n_104 : STD_LOGIC;
  signal mult_out_n_105 : STD_LOGIC;
  signal mult_out_n_58 : STD_LOGIC;
  signal mult_out_n_59 : STD_LOGIC;
  signal mult_out_n_60 : STD_LOGIC;
  signal mult_out_n_61 : STD_LOGIC;
  signal mult_out_n_62 : STD_LOGIC;
  signal mult_out_n_63 : STD_LOGIC;
  signal mult_out_n_64 : STD_LOGIC;
  signal mult_out_n_65 : STD_LOGIC;
  signal mult_out_n_66 : STD_LOGIC;
  signal mult_out_n_67 : STD_LOGIC;
  signal mult_out_n_68 : STD_LOGIC;
  signal mult_out_n_69 : STD_LOGIC;
  signal mult_out_n_70 : STD_LOGIC;
  signal mult_out_n_71 : STD_LOGIC;
  signal mult_out_n_72 : STD_LOGIC;
  signal mult_out_n_73 : STD_LOGIC;
  signal mult_out_n_74 : STD_LOGIC;
  signal mult_out_n_75 : STD_LOGIC;
  signal mult_out_n_76 : STD_LOGIC;
  signal mult_out_n_77 : STD_LOGIC;
  signal mult_out_n_78 : STD_LOGIC;
  signal mult_out_n_79 : STD_LOGIC;
  signal mult_out_n_80 : STD_LOGIC;
  signal mult_out_n_81 : STD_LOGIC;
  signal mult_out_n_82 : STD_LOGIC;
  signal mult_out_n_83 : STD_LOGIC;
  signal mult_out_n_84 : STD_LOGIC;
  signal mult_out_n_85 : STD_LOGIC;
  signal mult_out_n_86 : STD_LOGIC;
  signal mult_out_n_88 : STD_LOGIC;
  signal mult_out_n_89 : STD_LOGIC;
  signal mult_out_n_90 : STD_LOGIC;
  signal mult_out_n_91 : STD_LOGIC;
  signal mult_out_n_92 : STD_LOGIC;
  signal mult_out_n_93 : STD_LOGIC;
  signal mult_out_n_94 : STD_LOGIC;
  signal mult_out_n_95 : STD_LOGIC;
  signal mult_out_n_96 : STD_LOGIC;
  signal mult_out_n_97 : STD_LOGIC;
  signal mult_out_n_98 : STD_LOGIC;
  signal mult_out_n_99 : STD_LOGIC;
  signal \v1[20]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_4__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_7__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_8__1_n_0\ : STD_LOGIC;
  signal \v1[20]_i_9__1_n_0\ : STD_LOGIC;
  signal \v1[24]_i_2__1_n_0\ : STD_LOGIC;
  signal \v1[24]_i_3__1_n_0\ : STD_LOGIC;
  signal \v1[24]_i_4_n_0\ : STD_LOGIC;
  signal \v1[24]_i_5__1_n_0\ : STD_LOGIC;
  signal \v1[24]_i_6__1_n_0\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \v1_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \v1_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal NLW_mult_out_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_out_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_out_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult_out_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal \NLW_mult_out__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out__2_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_mult_out__2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v1_reg[24]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_out : label is "{SYNTH-10 {cell *THIS*} {string 10x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x10 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_reg[20]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \v1_reg[24]_i_1__1\ : label is 11;
begin
  mult_out_0(0) <= \^mult_out_0\(0);
  \mult_out__1_0\(25 downto 0) <= \^mult_out__1_0\(25 downto 0);
\funct_z_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(7),
      I1 => \funct_z_carry__0\(3),
      O => \mult_out__1_6\(3)
    );
\funct_z_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(6),
      I1 => \funct_z_carry__0\(2),
      O => \mult_out__1_6\(2)
    );
\funct_z_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(5),
      I1 => \funct_z_carry__0\(1),
      O => \mult_out__1_6\(1)
    );
\funct_z_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(4),
      I1 => \funct_z_carry__0\(0),
      O => \mult_out__1_6\(0)
    );
\funct_z_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(11),
      I1 => \funct_z_carry__1\(3),
      O => \mult_out__1_5\(3)
    );
\funct_z_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(10),
      I1 => \funct_z_carry__1\(2),
      O => \mult_out__1_5\(2)
    );
\funct_z_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(9),
      I1 => \funct_z_carry__1\(1),
      O => \mult_out__1_5\(1)
    );
\funct_z_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(8),
      I1 => \funct_z_carry__1\(0),
      O => \mult_out__1_5\(0)
    );
\funct_z_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(15),
      I1 => \funct_z_carry__2\(3),
      O => \mult_out__1_4\(3)
    );
\funct_z_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(14),
      I1 => \funct_z_carry__2\(2),
      O => \mult_out__1_4\(2)
    );
\funct_z_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(13),
      I1 => \funct_z_carry__2\(1),
      O => \mult_out__1_4\(1)
    );
\funct_z_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(12),
      I1 => \funct_z_carry__2\(0),
      O => \mult_out__1_4\(0)
    );
\funct_z_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(19),
      I1 => \funct_z_carry__3\(3),
      O => \mult_out__1_3\(3)
    );
\funct_z_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(18),
      I1 => \funct_z_carry__3\(2),
      O => \mult_out__1_3\(2)
    );
\funct_z_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(17),
      I1 => \funct_z_carry__3\(1),
      O => \mult_out__1_3\(1)
    );
\funct_z_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(16),
      I1 => \funct_z_carry__3\(0),
      O => \mult_out__1_3\(0)
    );
\funct_z_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(23),
      I1 => \funct_z_carry__4\(3),
      O => \mult_out__1_2\(3)
    );
\funct_z_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(22),
      I1 => \funct_z_carry__4\(2),
      O => \mult_out__1_2\(2)
    );
\funct_z_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(21),
      I1 => \funct_z_carry__4\(1),
      O => \mult_out__1_2\(1)
    );
\funct_z_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(20),
      I1 => \funct_z_carry__4\(0),
      O => \mult_out__1_2\(0)
    );
\funct_z_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mult_out__2\(53),
      I1 => \funct_z_carry__5\(0),
      O => \mult_out__1_1\(2)
    );
\funct_z_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(25),
      I1 => O(1),
      O => \mult_out__1_1\(1)
    );
\funct_z_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(24),
      I1 => O(0),
      O => \mult_out__1_1\(0)
    );
funct_z_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(3),
      I1 => funct_z_carry(3),
      O => \mult_out__1_7\(3)
    );
funct_z_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(2),
      I1 => funct_z_carry(2),
      O => \mult_out__1_7\(2)
    );
funct_z_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(1),
      I1 => funct_z_carry(1),
      O => \mult_out__1_7\(1)
    );
funct_z_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mult_out__1_0\(0),
      I1 => funct_z_carry(0),
      O => \mult_out__1_7\(0)
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_81,
      I1 => \mult_out__11_carry__0_n_6\,
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_99\,
      I1 => mult_out_n_99,
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_82,
      I1 => \mult_out__11_carry__0_n_7\,
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_100\,
      I1 => mult_out_n_100,
      O => \i__carry__0_i_2__5_n_0\
    );
\i__carry__0_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_83,
      I1 => \mult_out__11_carry_n_4\,
      O => \i__carry__0_i_3__4_n_0\
    );
\i__carry__0_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_101\,
      I1 => mult_out_n_101,
      O => \i__carry__0_i_3__5_n_0\
    );
\i__carry__0_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_84,
      I1 => \mult_out__11_carry_n_5\,
      O => \i__carry__0_i_4__4_n_0\
    );
\i__carry__0_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_102\,
      I1 => mult_out_n_102,
      O => \i__carry__0_i_4__5_n_0\
    );
\i__carry__1_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_77,
      I1 => \mult_out__11_carry__1_n_6\,
      O => \i__carry__1_i_1__4_n_0\
    );
\i__carry__1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_95\,
      I1 => mult_out_n_95,
      O => \i__carry__1_i_1__5_n_0\
    );
\i__carry__1_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_78,
      I1 => \mult_out__11_carry__1_n_7\,
      O => \i__carry__1_i_2__4_n_0\
    );
\i__carry__1_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_96\,
      I1 => mult_out_n_96,
      O => \i__carry__1_i_2__5_n_0\
    );
\i__carry__1_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_79,
      I1 => \mult_out__11_carry__0_n_4\,
      O => \i__carry__1_i_3__4_n_0\
    );
\i__carry__1_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_97\,
      I1 => mult_out_n_97,
      O => \i__carry__1_i_3__5_n_0\
    );
\i__carry__1_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_80,
      I1 => \mult_out__11_carry__0_n_5\,
      O => \i__carry__1_i_4__4_n_0\
    );
\i__carry__1_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_98\,
      I1 => mult_out_n_98,
      O => \i__carry__1_i_4__5_n_0\
    );
\i__carry__2_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_91\,
      I1 => mult_out_n_91,
      O => \i__carry__2_i_1__3_n_0\
    );
\i__carry__2_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_73,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__2_i_1__5_n_0\
    );
\i__carry__2_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_92\,
      I1 => mult_out_n_92,
      O => \i__carry__2_i_2__2_n_0\
    );
\i__carry__2_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_74,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__2_i_2__4_n_0\
    );
\i__carry__2_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_75,
      I1 => \mult_out__11_carry__1_n_4\,
      O => \i__carry__2_i_3__4_n_0\
    );
\i__carry__2_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_93\,
      I1 => mult_out_n_93,
      O => \i__carry__2_i_3__5_n_0\
    );
\i__carry__2_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_76,
      I1 => \mult_out__11_carry__1_n_5\,
      O => \i__carry__2_i_4__4_n_0\
    );
\i__carry__2_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_94\,
      I1 => mult_out_n_94,
      O => \i__carry__2_i_4__5_n_0\
    );
\i__carry__3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_69,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_1__1_n_0\
    );
\i__carry__3_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_87\,
      I1 => \mult_out_inferred__0/i__carry_n_6\,
      O => \i__carry__3_i_1__5_n_0\
    );
\i__carry__3_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_88\,
      I1 => \mult_out_inferred__0/i__carry_n_7\,
      O => \i__carry__3_i_2__2_n_0\
    );
\i__carry__3_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_70,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_2__4_n_0\
    );
\i__carry__3_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_89\,
      I1 => mult_out_n_89,
      O => \i__carry__3_i_3__1_n_0\
    );
\i__carry__3_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_71,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_3__4_n_0\
    );
\i__carry__3_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_90\,
      I1 => mult_out_n_90,
      O => \i__carry__3_i_4__1_n_0\
    );
\i__carry__3_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_72,
      I1 => \mult_out_inferred__0/i__carry__3_0\(0),
      O => \i__carry__3_i_4__4_n_0\
    );
\i__carry__4_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_83\,
      I1 => \mult_out_inferred__0/i__carry__0_n_6\,
      O => \i__carry__4_i_1__1_n_0\
    );
\i__carry__4_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_84\,
      I1 => \mult_out_inferred__0/i__carry__0_n_7\,
      O => \i__carry__4_i_2__1_n_0\
    );
\i__carry__4_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_85\,
      I1 => \mult_out_inferred__0/i__carry_n_4\,
      O => \i__carry__4_i_3__1_n_0\
    );
\i__carry__4_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_86\,
      I1 => \mult_out_inferred__0/i__carry_n_5\,
      O => \i__carry__4_i_4__1_n_0\
    );
\i__carry__5_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_79\,
      I1 => \mult_out_inferred__0/i__carry__1_n_6\,
      O => \i__carry__5_i_1__1_n_0\
    );
\i__carry__5_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_80\,
      I1 => \mult_out_inferred__0/i__carry__1_n_7\,
      O => \i__carry__5_i_2__1_n_0\
    );
\i__carry__5_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_81\,
      I1 => \mult_out_inferred__0/i__carry__0_n_4\,
      O => \i__carry__5_i_3__1_n_0\
    );
\i__carry__5_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_82\,
      I1 => \mult_out_inferred__0/i__carry__0_n_5\,
      O => \i__carry__5_i_4__1_n_0\
    );
\i__carry__6_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_75\,
      I1 => \mult_out_inferred__0/i__carry__2_n_6\,
      O => \i__carry__6_i_1__1_n_0\
    );
\i__carry__6_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_76\,
      I1 => \mult_out_inferred__0/i__carry__2_n_7\,
      O => \i__carry__6_i_2__1_n_0\
    );
\i__carry__6_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_77\,
      I1 => \mult_out_inferred__0/i__carry__1_n_4\,
      O => \i__carry__6_i_3__1_n_0\
    );
\i__carry__6_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_78\,
      I1 => \mult_out_inferred__0/i__carry__1_n_5\,
      O => \i__carry__6_i_4__1_n_0\
    );
\i__carry__7_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_71\,
      I1 => \mult_out_inferred__0/i__carry__3_n_6\,
      O => \i__carry__7_i_1__1_n_0\
    );
\i__carry__7_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_72\,
      I1 => \mult_out_inferred__0/i__carry__3_n_7\,
      O => \i__carry__7_i_2__1_n_0\
    );
\i__carry__7_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_73\,
      I1 => \mult_out_inferred__0/i__carry__2_n_4\,
      O => \i__carry__7_i_3__1_n_0\
    );
\i__carry__7_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_74\,
      I1 => \mult_out_inferred__0/i__carry__2_n_5\,
      O => \i__carry__7_i_4__1_n_0\
    );
\i__carry__8_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_69\,
      I1 => \mult_out_inferred__0/i__carry__3_n_4\,
      O => \i__carry__8_i_1__1_n_0\
    );
\i__carry__8_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_70\,
      I1 => \mult_out_inferred__0/i__carry__3_n_5\,
      O => \i__carry__8_i_2__1_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_85,
      I1 => \mult_out__11_carry_n_6\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_103\,
      I1 => mult_out_n_103,
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_86,
      I1 => \mult_out__11_carry_n_7\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_104\,
      I1 => mult_out_n_104,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_105\,
      I1 => mult_out_n_105,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mult_out_n_88,
      I1 => \mult_out_inferred__0/i__carry_0\(0),
      I2 => \mult_out_inferred__0/i__carry_1\(0),
      O => \i__carry_i_4__1_n_0\
    );
mult_out: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => mult_out_1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_out_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => v1new(18),
      B(16) => v1new(18),
      B(15) => v1new(18),
      B(14) => v1new(18),
      B(13) => v1new(18),
      B(12) => v1new(18),
      B(11) => v1new(18),
      B(10) => v1new(18),
      B(9) => v1new(18),
      B(8) => v1new(18),
      B(7) => v1new(18),
      B(6) => v1new(18),
      B(5) => v1new(18),
      B(4) => v1new(18),
      B(3) => v1new(18),
      B(2) => v1new(18),
      B(1 downto 0) => v1new(18 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_out_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_out_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_out_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_out_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_out_OVERFLOW_UNCONNECTED,
      P(47) => mult_out_n_58,
      P(46) => mult_out_n_59,
      P(45) => mult_out_n_60,
      P(44) => mult_out_n_61,
      P(43) => mult_out_n_62,
      P(42) => mult_out_n_63,
      P(41) => mult_out_n_64,
      P(40) => mult_out_n_65,
      P(39) => mult_out_n_66,
      P(38) => mult_out_n_67,
      P(37) => mult_out_n_68,
      P(36) => mult_out_n_69,
      P(35) => mult_out_n_70,
      P(34) => mult_out_n_71,
      P(33) => mult_out_n_72,
      P(32) => mult_out_n_73,
      P(31) => mult_out_n_74,
      P(30) => mult_out_n_75,
      P(29) => mult_out_n_76,
      P(28) => mult_out_n_77,
      P(27) => mult_out_n_78,
      P(26) => mult_out_n_79,
      P(25) => mult_out_n_80,
      P(24) => mult_out_n_81,
      P(23) => mult_out_n_82,
      P(22) => mult_out_n_83,
      P(21) => mult_out_n_84,
      P(20) => mult_out_n_85,
      P(19) => mult_out_n_86,
      P(18) => \^mult_out_0\(0),
      P(17) => mult_out_n_88,
      P(16) => mult_out_n_89,
      P(15) => mult_out_n_90,
      P(14) => mult_out_n_91,
      P(13) => mult_out_n_92,
      P(12) => mult_out_n_93,
      P(11) => mult_out_n_94,
      P(10) => mult_out_n_95,
      P(9) => mult_out_n_96,
      P(8) => mult_out_n_97,
      P(7) => mult_out_n_98,
      P(6) => mult_out_n_99,
      P(5) => mult_out_n_100,
      P(4) => mult_out_n_101,
      P(3) => mult_out_n_102,
      P(2) => mult_out_n_103,
      P(1) => mult_out_n_104,
      P(0) => mult_out_n_105,
      PATTERNBDETECT => NLW_mult_out_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_out_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult_out_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_out_UNDERFLOW_UNCONNECTED
    );
\mult_out__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => v1new(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mult_out__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => mult_out_1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_mult_out__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_out__0_n_58\,
      P(46) => \mult_out__0_n_59\,
      P(45) => \mult_out__0_n_60\,
      P(44) => \mult_out__0_n_61\,
      P(43) => \mult_out__0_n_62\,
      P(42) => \mult_out__0_n_63\,
      P(41) => \mult_out__0_n_64\,
      P(40) => \mult_out__0_n_65\,
      P(39) => \mult_out__0_n_66\,
      P(38) => \mult_out__0_n_67\,
      P(37) => \mult_out__0_n_68\,
      P(36) => \mult_out__0_n_69\,
      P(35) => \mult_out__0_n_70\,
      P(34) => \mult_out__0_n_71\,
      P(33) => \mult_out__0_n_72\,
      P(32) => \mult_out__0_n_73\,
      P(31) => \mult_out__0_n_74\,
      P(30) => \mult_out__0_n_75\,
      P(29) => \mult_out__0_n_76\,
      P(28) => \mult_out__0_n_77\,
      P(27) => \mult_out__0_n_78\,
      P(26) => \mult_out__0_n_79\,
      P(25) => \mult_out__0_n_80\,
      P(24) => \mult_out__0_n_81\,
      P(23) => \mult_out__0_n_82\,
      P(22) => \mult_out__0_n_83\,
      P(21) => \mult_out__0_n_84\,
      P(20) => \mult_out__0_n_85\,
      P(19) => \mult_out__0_n_86\,
      P(18) => \mult_out__0_n_87\,
      P(17) => \mult_out__0_n_88\,
      P(16) => \mult_out__0_n_89\,
      P(15) => \mult_out__0_n_90\,
      P(14) => \mult_out__0_n_91\,
      P(13) => \mult_out__0_n_92\,
      P(12) => \mult_out__0_n_93\,
      P(11) => \mult_out__0_n_94\,
      P(10) => \mult_out__0_n_95\,
      P(9) => \mult_out__0_n_96\,
      P(8) => \mult_out__0_n_97\,
      P(7) => \mult_out__0_n_98\,
      P(6) => \mult_out__0_n_99\,
      P(5) => \mult_out__0_n_100\,
      P(4) => \mult_out__0_n_101\,
      P(3) => \mult_out__0_n_102\,
      P(2) => \mult_out__0_n_103\,
      P(1) => \mult_out__0_n_104\,
      P(0) => \mult_out__0_n_105\,
      PATTERNBDETECT => \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \mult_out__0_n_106\,
      PCOUT(46) => \mult_out__0_n_107\,
      PCOUT(45) => \mult_out__0_n_108\,
      PCOUT(44) => \mult_out__0_n_109\,
      PCOUT(43) => \mult_out__0_n_110\,
      PCOUT(42) => \mult_out__0_n_111\,
      PCOUT(41) => \mult_out__0_n_112\,
      PCOUT(40) => \mult_out__0_n_113\,
      PCOUT(39) => \mult_out__0_n_114\,
      PCOUT(38) => \mult_out__0_n_115\,
      PCOUT(37) => \mult_out__0_n_116\,
      PCOUT(36) => \mult_out__0_n_117\,
      PCOUT(35) => \mult_out__0_n_118\,
      PCOUT(34) => \mult_out__0_n_119\,
      PCOUT(33) => \mult_out__0_n_120\,
      PCOUT(32) => \mult_out__0_n_121\,
      PCOUT(31) => \mult_out__0_n_122\,
      PCOUT(30) => \mult_out__0_n_123\,
      PCOUT(29) => \mult_out__0_n_124\,
      PCOUT(28) => \mult_out__0_n_125\,
      PCOUT(27) => \mult_out__0_n_126\,
      PCOUT(26) => \mult_out__0_n_127\,
      PCOUT(25) => \mult_out__0_n_128\,
      PCOUT(24) => \mult_out__0_n_129\,
      PCOUT(23) => \mult_out__0_n_130\,
      PCOUT(22) => \mult_out__0_n_131\,
      PCOUT(21) => \mult_out__0_n_132\,
      PCOUT(20) => \mult_out__0_n_133\,
      PCOUT(19) => \mult_out__0_n_134\,
      PCOUT(18) => \mult_out__0_n_135\,
      PCOUT(17) => \mult_out__0_n_136\,
      PCOUT(16) => \mult_out__0_n_137\,
      PCOUT(15) => \mult_out__0_n_138\,
      PCOUT(14) => \mult_out__0_n_139\,
      PCOUT(13) => \mult_out__0_n_140\,
      PCOUT(12) => \mult_out__0_n_141\,
      PCOUT(11) => \mult_out__0_n_142\,
      PCOUT(10) => \mult_out__0_n_143\,
      PCOUT(9) => \mult_out__0_n_144\,
      PCOUT(8) => \mult_out__0_n_145\,
      PCOUT(7) => \mult_out__0_n_146\,
      PCOUT(6) => \mult_out__0_n_147\,
      PCOUT(5) => \mult_out__0_n_148\,
      PCOUT(4) => \mult_out__0_n_149\,
      PCOUT(3) => \mult_out__0_n_150\,
      PCOUT(2) => \mult_out__0_n_151\,
      PCOUT(1) => \mult_out__0_n_152\,
      PCOUT(0) => \mult_out__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\
    );
\mult_out__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => v1new(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mult_out__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(9),
      B(16) => B(9),
      B(15) => B(9),
      B(14) => B(9),
      B(13) => B(9),
      B(12) => B(9),
      B(11) => B(9),
      B(10) => B(9),
      B(9 downto 0) => B(9 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_out__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 37) => \NLW_mult_out__1_P_UNCONNECTED\(47 downto 37),
      P(36) => \mult_out__1_n_69\,
      P(35) => \mult_out__1_n_70\,
      P(34) => \mult_out__1_n_71\,
      P(33) => \mult_out__1_n_72\,
      P(32) => \mult_out__1_n_73\,
      P(31) => \mult_out__1_n_74\,
      P(30) => \mult_out__1_n_75\,
      P(29) => \mult_out__1_n_76\,
      P(28) => \mult_out__1_n_77\,
      P(27) => \mult_out__1_n_78\,
      P(26) => \mult_out__1_n_79\,
      P(25) => \mult_out__1_n_80\,
      P(24) => \mult_out__1_n_81\,
      P(23) => \mult_out__1_n_82\,
      P(22) => \mult_out__1_n_83\,
      P(21) => \mult_out__1_n_84\,
      P(20) => \mult_out__1_n_85\,
      P(19) => \mult_out__1_n_86\,
      P(18) => \mult_out__1_n_87\,
      P(17) => \mult_out__1_n_88\,
      P(16) => \mult_out__1_n_89\,
      P(15) => \mult_out__1_n_90\,
      P(14) => \mult_out__1_n_91\,
      P(13) => \mult_out__1_n_92\,
      P(12) => \mult_out__1_n_93\,
      P(11) => \mult_out__1_n_94\,
      P(10) => \mult_out__1_n_95\,
      P(9) => \mult_out__1_n_96\,
      P(8) => \mult_out__1_n_97\,
      P(7) => \mult_out__1_n_98\,
      P(6) => \mult_out__1_n_99\,
      P(5) => \mult_out__1_n_100\,
      P(4) => \mult_out__1_n_101\,
      P(3) => \mult_out__1_n_102\,
      P(2) => \mult_out__1_n_103\,
      P(1) => \mult_out__1_n_104\,
      P(0) => \mult_out__1_n_105\,
      PATTERNBDETECT => \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \mult_out__0_n_106\,
      PCIN(46) => \mult_out__0_n_107\,
      PCIN(45) => \mult_out__0_n_108\,
      PCIN(44) => \mult_out__0_n_109\,
      PCIN(43) => \mult_out__0_n_110\,
      PCIN(42) => \mult_out__0_n_111\,
      PCIN(41) => \mult_out__0_n_112\,
      PCIN(40) => \mult_out__0_n_113\,
      PCIN(39) => \mult_out__0_n_114\,
      PCIN(38) => \mult_out__0_n_115\,
      PCIN(37) => \mult_out__0_n_116\,
      PCIN(36) => \mult_out__0_n_117\,
      PCIN(35) => \mult_out__0_n_118\,
      PCIN(34) => \mult_out__0_n_119\,
      PCIN(33) => \mult_out__0_n_120\,
      PCIN(32) => \mult_out__0_n_121\,
      PCIN(31) => \mult_out__0_n_122\,
      PCIN(30) => \mult_out__0_n_123\,
      PCIN(29) => \mult_out__0_n_124\,
      PCIN(28) => \mult_out__0_n_125\,
      PCIN(27) => \mult_out__0_n_126\,
      PCIN(26) => \mult_out__0_n_127\,
      PCIN(25) => \mult_out__0_n_128\,
      PCIN(24) => \mult_out__0_n_129\,
      PCIN(23) => \mult_out__0_n_130\,
      PCIN(22) => \mult_out__0_n_131\,
      PCIN(21) => \mult_out__0_n_132\,
      PCIN(20) => \mult_out__0_n_133\,
      PCIN(19) => \mult_out__0_n_134\,
      PCIN(18) => \mult_out__0_n_135\,
      PCIN(17) => \mult_out__0_n_136\,
      PCIN(16) => \mult_out__0_n_137\,
      PCIN(15) => \mult_out__0_n_138\,
      PCIN(14) => \mult_out__0_n_139\,
      PCIN(13) => \mult_out__0_n_140\,
      PCIN(12) => \mult_out__0_n_141\,
      PCIN(11) => \mult_out__0_n_142\,
      PCIN(10) => \mult_out__0_n_143\,
      PCIN(9) => \mult_out__0_n_144\,
      PCIN(8) => \mult_out__0_n_145\,
      PCIN(7) => \mult_out__0_n_146\,
      PCIN(6) => \mult_out__0_n_147\,
      PCIN(5) => \mult_out__0_n_148\,
      PCIN(4) => \mult_out__0_n_149\,
      PCIN(3) => \mult_out__0_n_150\,
      PCIN(2) => \mult_out__0_n_151\,
      PCIN(1) => \mult_out__0_n_152\,
      PCIN(0) => \mult_out__0_n_153\,
      PCOUT(47 downto 0) => \NLW_mult_out__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\
    );
\mult_out__11_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out__11_carry_n_0\,
      CO(2) => \mult_out__11_carry_n_1\,
      CO(1) => \mult_out__11_carry_n_2\,
      CO(0) => \mult_out__11_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3) => \mult_out__11_carry_n_4\,
      O(2) => \mult_out__11_carry_n_5\,
      O(1) => \mult_out__11_carry_n_6\,
      O(0) => \mult_out__11_carry_n_7\,
      S(3 downto 0) => \i__carry_i_2__4_0\(3 downto 0)
    );
\mult_out__11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__11_carry_n_0\,
      CO(3) => \mult_out__11_carry__0_n_0\,
      CO(2) => \mult_out__11_carry__0_n_1\,
      CO(1) => \mult_out__11_carry__0_n_2\,
      CO(0) => \mult_out__11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i__carry__0_i_2__4_0\(3 downto 0),
      O(3) => \mult_out__11_carry__0_n_4\,
      O(2) => \mult_out__11_carry__0_n_5\,
      O(1) => \mult_out__11_carry__0_n_6\,
      O(0) => \mult_out__11_carry__0_n_7\,
      S(3 downto 0) => \i__carry__0_i_2__4_1\(3 downto 0)
    );
\mult_out__11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out__11_carry__0_n_0\,
      CO(3) => \v1_reg[25]\(0),
      CO(2) => \mult_out__11_carry__1_n_1\,
      CO(1) => \mult_out__11_carry__1_n_2\,
      CO(0) => \mult_out__11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i__carry__1_i_2__4_0\(3 downto 0),
      O(3) => \mult_out__11_carry__1_n_4\,
      O(2) => \mult_out__11_carry__1_n_5\,
      O(1) => \mult_out__11_carry__1_n_6\,
      O(0) => \mult_out__11_carry__1_n_7\,
      S(3 downto 0) => \i__carry__1_i_2__4_1\(3 downto 0)
    );
\mult_out__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \NLW_mult_out__2_carry_CO_UNCONNECTED\(2),
      CO(1) => \mult_out__2_carry_n_2\,
      CO(0) => \mult_out__2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"01",
      DI(1) => \mult_out__11_carry__0_i_5__0\,
      DI(0) => '0',
      O(3) => \NLW_mult_out__2_carry_O_UNCONNECTED\(3),
      O(2 downto 0) => \v1_reg[17]\(2 downto 0),
      S(3) => '1',
      S(2 downto 0) => S(2 downto 0)
    );
\mult_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__0/i__carry_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_85,
      DI(2) => mult_out_n_86,
      DI(1) => \^mult_out_0\(0),
      DI(0) => mult_out_n_88,
      O(3) => \mult_out_inferred__0/i__carry_n_4\,
      O(2) => \mult_out_inferred__0/i__carry_n_5\,
      O(1) => \mult_out_inferred__0/i__carry_n_6\,
      O(0) => \mult_out_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry__3_i_2__2_0\(0),
      S(0) => \i__carry_i_4__1_n_0\
    );
\mult_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_81,
      DI(2) => mult_out_n_82,
      DI(1) => mult_out_n_83,
      DI(0) => mult_out_n_84,
      O(3) => \mult_out_inferred__0/i__carry__0_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__0_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__0_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__4_n_0\,
      S(2) => \i__carry__0_i_2__4_n_0\,
      S(1) => \i__carry__0_i_3__4_n_0\,
      S(0) => \i__carry__0_i_4__4_n_0\
    );
\mult_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_77,
      DI(2) => mult_out_n_78,
      DI(1) => mult_out_n_79,
      DI(0) => mult_out_n_80,
      O(3) => \mult_out_inferred__0/i__carry__1_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__1_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__1_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__4_n_0\,
      S(2) => \i__carry__1_i_2__4_n_0\,
      S(1) => \i__carry__1_i_3__4_n_0\,
      S(0) => \i__carry__1_i_4__4_n_0\
    );
\mult_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_73,
      DI(2) => mult_out_n_74,
      DI(1) => mult_out_n_75,
      DI(0) => mult_out_n_76,
      O(3) => \mult_out_inferred__0/i__carry__2_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__2_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__2_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__5_n_0\,
      S(2) => \i__carry__2_i_2__4_n_0\,
      S(1) => \i__carry__2_i_3__4_n_0\,
      S(0) => \i__carry__2_i_4__4_n_0\
    );
\mult_out_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(3) => \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \mult_out_inferred__0/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => mult_out_n_70,
      DI(1) => mult_out_n_71,
      DI(0) => mult_out_n_72,
      O(3) => \mult_out_inferred__0/i__carry__3_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__3_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__3_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1__1_n_0\,
      S(2) => \i__carry__3_i_2__4_n_0\,
      S(1) => \i__carry__3_i_3__4_n_0\,
      S(0) => \i__carry__3_i_4__4_n_0\
    );
\mult_out_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__1/i__carry_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_103\,
      DI(2) => \mult_out__1_n_104\,
      DI(1) => \mult_out__1_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3__5_n_0\,
      S(0) => \mult_out__0_n_89\
    );
\mult_out_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_99\,
      DI(2) => \mult_out__1_n_100\,
      DI(1) => \mult_out__1_n_101\,
      DI(0) => \mult_out__1_n_102\,
      O(3 downto 0) => \^mult_out__1_0\(3 downto 0),
      S(3) => \i__carry__0_i_1__5_n_0\,
      S(2) => \i__carry__0_i_2__5_n_0\,
      S(1) => \i__carry__0_i_3__5_n_0\,
      S(0) => \i__carry__0_i_4__5_n_0\
    );
\mult_out_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_95\,
      DI(2) => \mult_out__1_n_96\,
      DI(1) => \mult_out__1_n_97\,
      DI(0) => \mult_out__1_n_98\,
      O(3 downto 0) => \^mult_out__1_0\(7 downto 4),
      S(3) => \i__carry__1_i_1__5_n_0\,
      S(2) => \i__carry__1_i_2__5_n_0\,
      S(1) => \i__carry__1_i_3__5_n_0\,
      S(0) => \i__carry__1_i_4__5_n_0\
    );
\mult_out_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_91\,
      DI(2) => \mult_out__1_n_92\,
      DI(1) => \mult_out__1_n_93\,
      DI(0) => \mult_out__1_n_94\,
      O(3 downto 0) => \^mult_out__1_0\(11 downto 8),
      S(3) => \i__carry__2_i_1__3_n_0\,
      S(2) => \i__carry__2_i_2__2_n_0\,
      S(1) => \i__carry__2_i_3__5_n_0\,
      S(0) => \i__carry__2_i_4__5_n_0\
    );
\mult_out_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_87\,
      DI(2) => \mult_out__1_n_88\,
      DI(1) => \mult_out__1_n_89\,
      DI(0) => \mult_out__1_n_90\,
      O(3 downto 0) => \^mult_out__1_0\(15 downto 12),
      S(3) => \i__carry__3_i_1__5_n_0\,
      S(2) => \i__carry__3_i_2__2_n_0\,
      S(1) => \i__carry__3_i_3__1_n_0\,
      S(0) => \i__carry__3_i_4__1_n_0\
    );
\mult_out_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__4_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__4_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_83\,
      DI(2) => \mult_out__1_n_84\,
      DI(1) => \mult_out__1_n_85\,
      DI(0) => \mult_out__1_n_86\,
      O(3 downto 0) => \^mult_out__1_0\(19 downto 16),
      S(3) => \i__carry__4_i_1__1_n_0\,
      S(2) => \i__carry__4_i_2__1_n_0\,
      S(1) => \i__carry__4_i_3__1_n_0\,
      S(0) => \i__carry__4_i_4__1_n_0\
    );
\mult_out_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__5_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__5_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_79\,
      DI(2) => \mult_out__1_n_80\,
      DI(1) => \mult_out__1_n_81\,
      DI(0) => \mult_out__1_n_82\,
      O(3 downto 0) => \^mult_out__1_0\(23 downto 20),
      S(3) => \i__carry__5_i_1__1_n_0\,
      S(2) => \i__carry__5_i_2__1_n_0\,
      S(1) => \i__carry__5_i_3__1_n_0\,
      S(0) => \i__carry__5_i_4__1_n_0\
    );
\mult_out_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__6_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__6_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_75\,
      DI(2) => \mult_out__1_n_76\,
      DI(1) => \mult_out__1_n_77\,
      DI(0) => \mult_out__1_n_78\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^mult_out__1_0\(25 downto 24),
      S(3) => \i__carry__6_i_1__1_n_0\,
      S(2) => \i__carry__6_i_2__1_n_0\,
      S(1) => \i__carry__6_i_3__1_n_0\,
      S(0) => \i__carry__6_i_4__1_n_0\
    );
\mult_out_inferred__1/i__carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__7_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__7_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_71\,
      DI(2) => \mult_out__1_n_72\,
      DI(1) => \mult_out__1_n_73\,
      DI(0) => \mult_out__1_n_74\,
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__7_i_1__1_n_0\,
      S(2) => \i__carry__7_i_2__1_n_0\,
      S(1) => \i__carry__7_i_3__1_n_0\,
      S(0) => \i__carry__7_i_4__1_n_0\
    );
\mult_out_inferred__1/i__carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(3 downto 1) => \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out_inferred__1/i__carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mult_out__1_n_70\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(3 downto 2),
      O(1) => \mult_out__2\(53),
      O(0) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__8_i_1__1_n_0\,
      S(0) => \i__carry__8_i_2__1_n_0\
    );
\v1[20]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_0\(3),
      I1 => \v1_reg[26]_2\,
      O => \v1[20]_i_2__1_n_0\
    );
\v1[20]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_0\(2),
      I1 => \v1_reg[26]_2\,
      O => \v1[20]_i_3__1_n_0\
    );
\v1[20]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_0\(1),
      I1 => \v1_reg[26]_2\,
      O => \v1[20]_i_4__1_n_0\
    );
\v1[20]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[23]_0\(0),
      I1 => \v1_reg[26]_2\,
      O => \v1[20]_i_5__1_n_0\
    );
\v1[20]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[23]_0\(3),
      I1 => v1_reg(3),
      I2 => \v1_reg[26]_2\,
      O => \v1[20]_i_6__1_n_0\
    );
\v1[20]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_0\(2),
      I1 => \v1_reg[26]_2\,
      I2 => v1_reg(2),
      O => \v1[20]_i_7__1_n_0\
    );
\v1[20]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[23]_0\(1),
      I1 => \v1_reg[26]_2\,
      I2 => v1_reg(1),
      O => \v1[20]_i_8__1_n_0\
    );
\v1[20]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[23]_0\(0),
      I1 => v1_reg(0),
      I2 => \v1_reg[26]_2\,
      O => \v1[20]_i_9__1_n_0\
    );
\v1[24]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[26]_0\(1),
      I1 => \v1_reg[26]_2\,
      O => \v1[24]_i_2__1_n_0\
    );
\v1[24]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v1_reg[26]_0\(0),
      I1 => \v1_reg[26]_2\,
      O => \v1[24]_i_3__1_n_0\
    );
\v1[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \v1_reg[26]_0\(2),
      I1 => \v1_reg[26]_1\(0),
      I2 => \v1_reg[26]_2\,
      O => \v1[24]_i_4_n_0\
    );
\v1[24]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \v1_reg[26]_0\(1),
      I1 => \v1_reg[26]_2\,
      I2 => v1_reg(5),
      O => \v1[24]_i_5__1_n_0\
    );
\v1[24]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \v1_reg[26]_0\(0),
      I1 => v1_reg(4),
      I2 => \v1_reg[26]_2\,
      O => \v1[24]_i_6__1_n_0\
    );
\v1_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[23]_1\(0),
      CO(3) => \v1_reg[20]_i_1__1_n_0\,
      CO(2) => \v1_reg[20]_i_1__1_n_1\,
      CO(1) => \v1_reg[20]_i_1__1_n_2\,
      CO(0) => \v1_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1[20]_i_2__1_n_0\,
      DI(2) => \v1[20]_i_3__1_n_0\,
      DI(1) => \v1[20]_i_4__1_n_0\,
      DI(0) => \v1[20]_i_5__1_n_0\,
      O(3 downto 0) => \v1_reg[23]\(3 downto 0),
      S(3) => \v1[20]_i_6__1_n_0\,
      S(2) => \v1[20]_i_7__1_n_0\,
      S(1) => \v1[20]_i_8__1_n_0\,
      S(0) => \v1[20]_i_9__1_n_0\
    );
\v1_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_reg[20]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_v1_reg[24]_i_1__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v1_reg[24]_i_1__1_n_2\,
      CO(0) => \v1_reg[24]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v1[24]_i_2__1_n_0\,
      DI(0) => \v1[24]_i_3__1_n_0\,
      O(3) => \NLW_v1_reg[24]_i_1__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v1_reg[26]\(2 downto 0),
      S(3) => '0',
      S(2) => \v1[24]_i_4_n_0\,
      S(1) => \v1[24]_i_5__1_n_0\,
      S(0) => \v1[24]_i_6__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_signed_mult_4 is
  port (
    P : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mult_out__1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mult_out__1_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mult_out__1_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    mult_out_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mult_out__0_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \i__carry__6_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry_i_1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i__carry__3_i_2__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry__6_i_2_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry__7_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry__7_i_2_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_signed_mult_4 : entity is "signed_mult";
end design_1_lorenz_reader_0_0_signed_mult_4;

architecture STRUCTURE of design_1_lorenz_reader_0_0_signed_mult_4 is
  signal \^p\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \mult_out__0_n_100\ : STD_LOGIC;
  signal \mult_out__0_n_101\ : STD_LOGIC;
  signal \mult_out__0_n_102\ : STD_LOGIC;
  signal \mult_out__0_n_103\ : STD_LOGIC;
  signal \mult_out__0_n_104\ : STD_LOGIC;
  signal \mult_out__0_n_105\ : STD_LOGIC;
  signal \mult_out__0_n_106\ : STD_LOGIC;
  signal \mult_out__0_n_107\ : STD_LOGIC;
  signal \mult_out__0_n_108\ : STD_LOGIC;
  signal \mult_out__0_n_109\ : STD_LOGIC;
  signal \mult_out__0_n_110\ : STD_LOGIC;
  signal \mult_out__0_n_111\ : STD_LOGIC;
  signal \mult_out__0_n_112\ : STD_LOGIC;
  signal \mult_out__0_n_113\ : STD_LOGIC;
  signal \mult_out__0_n_114\ : STD_LOGIC;
  signal \mult_out__0_n_115\ : STD_LOGIC;
  signal \mult_out__0_n_116\ : STD_LOGIC;
  signal \mult_out__0_n_117\ : STD_LOGIC;
  signal \mult_out__0_n_118\ : STD_LOGIC;
  signal \mult_out__0_n_119\ : STD_LOGIC;
  signal \mult_out__0_n_120\ : STD_LOGIC;
  signal \mult_out__0_n_121\ : STD_LOGIC;
  signal \mult_out__0_n_122\ : STD_LOGIC;
  signal \mult_out__0_n_123\ : STD_LOGIC;
  signal \mult_out__0_n_124\ : STD_LOGIC;
  signal \mult_out__0_n_125\ : STD_LOGIC;
  signal \mult_out__0_n_126\ : STD_LOGIC;
  signal \mult_out__0_n_127\ : STD_LOGIC;
  signal \mult_out__0_n_128\ : STD_LOGIC;
  signal \mult_out__0_n_129\ : STD_LOGIC;
  signal \mult_out__0_n_130\ : STD_LOGIC;
  signal \mult_out__0_n_131\ : STD_LOGIC;
  signal \mult_out__0_n_132\ : STD_LOGIC;
  signal \mult_out__0_n_133\ : STD_LOGIC;
  signal \mult_out__0_n_134\ : STD_LOGIC;
  signal \mult_out__0_n_135\ : STD_LOGIC;
  signal \mult_out__0_n_136\ : STD_LOGIC;
  signal \mult_out__0_n_137\ : STD_LOGIC;
  signal \mult_out__0_n_138\ : STD_LOGIC;
  signal \mult_out__0_n_139\ : STD_LOGIC;
  signal \mult_out__0_n_140\ : STD_LOGIC;
  signal \mult_out__0_n_141\ : STD_LOGIC;
  signal \mult_out__0_n_142\ : STD_LOGIC;
  signal \mult_out__0_n_143\ : STD_LOGIC;
  signal \mult_out__0_n_144\ : STD_LOGIC;
  signal \mult_out__0_n_145\ : STD_LOGIC;
  signal \mult_out__0_n_146\ : STD_LOGIC;
  signal \mult_out__0_n_147\ : STD_LOGIC;
  signal \mult_out__0_n_148\ : STD_LOGIC;
  signal \mult_out__0_n_149\ : STD_LOGIC;
  signal \mult_out__0_n_150\ : STD_LOGIC;
  signal \mult_out__0_n_151\ : STD_LOGIC;
  signal \mult_out__0_n_152\ : STD_LOGIC;
  signal \mult_out__0_n_153\ : STD_LOGIC;
  signal \mult_out__0_n_24\ : STD_LOGIC;
  signal \mult_out__0_n_25\ : STD_LOGIC;
  signal \mult_out__0_n_26\ : STD_LOGIC;
  signal \mult_out__0_n_27\ : STD_LOGIC;
  signal \mult_out__0_n_28\ : STD_LOGIC;
  signal \mult_out__0_n_29\ : STD_LOGIC;
  signal \mult_out__0_n_30\ : STD_LOGIC;
  signal \mult_out__0_n_31\ : STD_LOGIC;
  signal \mult_out__0_n_32\ : STD_LOGIC;
  signal \mult_out__0_n_33\ : STD_LOGIC;
  signal \mult_out__0_n_34\ : STD_LOGIC;
  signal \mult_out__0_n_35\ : STD_LOGIC;
  signal \mult_out__0_n_36\ : STD_LOGIC;
  signal \mult_out__0_n_37\ : STD_LOGIC;
  signal \mult_out__0_n_38\ : STD_LOGIC;
  signal \mult_out__0_n_39\ : STD_LOGIC;
  signal \mult_out__0_n_40\ : STD_LOGIC;
  signal \mult_out__0_n_41\ : STD_LOGIC;
  signal \mult_out__0_n_42\ : STD_LOGIC;
  signal \mult_out__0_n_43\ : STD_LOGIC;
  signal \mult_out__0_n_44\ : STD_LOGIC;
  signal \mult_out__0_n_45\ : STD_LOGIC;
  signal \mult_out__0_n_46\ : STD_LOGIC;
  signal \mult_out__0_n_47\ : STD_LOGIC;
  signal \mult_out__0_n_48\ : STD_LOGIC;
  signal \mult_out__0_n_49\ : STD_LOGIC;
  signal \mult_out__0_n_50\ : STD_LOGIC;
  signal \mult_out__0_n_51\ : STD_LOGIC;
  signal \mult_out__0_n_52\ : STD_LOGIC;
  signal \mult_out__0_n_53\ : STD_LOGIC;
  signal \mult_out__0_n_58\ : STD_LOGIC;
  signal \mult_out__0_n_59\ : STD_LOGIC;
  signal \mult_out__0_n_60\ : STD_LOGIC;
  signal \mult_out__0_n_61\ : STD_LOGIC;
  signal \mult_out__0_n_62\ : STD_LOGIC;
  signal \mult_out__0_n_63\ : STD_LOGIC;
  signal \mult_out__0_n_64\ : STD_LOGIC;
  signal \mult_out__0_n_65\ : STD_LOGIC;
  signal \mult_out__0_n_66\ : STD_LOGIC;
  signal \mult_out__0_n_67\ : STD_LOGIC;
  signal \mult_out__0_n_68\ : STD_LOGIC;
  signal \mult_out__0_n_69\ : STD_LOGIC;
  signal \mult_out__0_n_70\ : STD_LOGIC;
  signal \mult_out__0_n_71\ : STD_LOGIC;
  signal \mult_out__0_n_72\ : STD_LOGIC;
  signal \mult_out__0_n_73\ : STD_LOGIC;
  signal \mult_out__0_n_74\ : STD_LOGIC;
  signal \mult_out__0_n_75\ : STD_LOGIC;
  signal \mult_out__0_n_76\ : STD_LOGIC;
  signal \mult_out__0_n_77\ : STD_LOGIC;
  signal \mult_out__0_n_78\ : STD_LOGIC;
  signal \mult_out__0_n_79\ : STD_LOGIC;
  signal \mult_out__0_n_80\ : STD_LOGIC;
  signal \mult_out__0_n_81\ : STD_LOGIC;
  signal \mult_out__0_n_82\ : STD_LOGIC;
  signal \mult_out__0_n_83\ : STD_LOGIC;
  signal \mult_out__0_n_84\ : STD_LOGIC;
  signal \mult_out__0_n_85\ : STD_LOGIC;
  signal \mult_out__0_n_86\ : STD_LOGIC;
  signal \mult_out__0_n_87\ : STD_LOGIC;
  signal \mult_out__0_n_88\ : STD_LOGIC;
  signal \mult_out__0_n_89\ : STD_LOGIC;
  signal \mult_out__0_n_90\ : STD_LOGIC;
  signal \mult_out__0_n_91\ : STD_LOGIC;
  signal \mult_out__0_n_92\ : STD_LOGIC;
  signal \mult_out__0_n_93\ : STD_LOGIC;
  signal \mult_out__0_n_94\ : STD_LOGIC;
  signal \mult_out__0_n_95\ : STD_LOGIC;
  signal \mult_out__0_n_96\ : STD_LOGIC;
  signal \mult_out__0_n_97\ : STD_LOGIC;
  signal \mult_out__0_n_98\ : STD_LOGIC;
  signal \mult_out__0_n_99\ : STD_LOGIC;
  signal \mult_out__1_n_100\ : STD_LOGIC;
  signal \mult_out__1_n_101\ : STD_LOGIC;
  signal \mult_out__1_n_102\ : STD_LOGIC;
  signal \mult_out__1_n_103\ : STD_LOGIC;
  signal \mult_out__1_n_104\ : STD_LOGIC;
  signal \mult_out__1_n_105\ : STD_LOGIC;
  signal \mult_out__1_n_69\ : STD_LOGIC;
  signal \mult_out__1_n_70\ : STD_LOGIC;
  signal \mult_out__1_n_71\ : STD_LOGIC;
  signal \mult_out__1_n_72\ : STD_LOGIC;
  signal \mult_out__1_n_73\ : STD_LOGIC;
  signal \mult_out__1_n_74\ : STD_LOGIC;
  signal \mult_out__1_n_75\ : STD_LOGIC;
  signal \mult_out__1_n_76\ : STD_LOGIC;
  signal \mult_out__1_n_77\ : STD_LOGIC;
  signal \mult_out__1_n_78\ : STD_LOGIC;
  signal \mult_out__1_n_79\ : STD_LOGIC;
  signal \mult_out__1_n_80\ : STD_LOGIC;
  signal \mult_out__1_n_81\ : STD_LOGIC;
  signal \mult_out__1_n_82\ : STD_LOGIC;
  signal \mult_out__1_n_83\ : STD_LOGIC;
  signal \mult_out__1_n_84\ : STD_LOGIC;
  signal \mult_out__1_n_85\ : STD_LOGIC;
  signal \mult_out__1_n_86\ : STD_LOGIC;
  signal \mult_out__1_n_87\ : STD_LOGIC;
  signal \mult_out__1_n_88\ : STD_LOGIC;
  signal \mult_out__1_n_89\ : STD_LOGIC;
  signal \mult_out__1_n_90\ : STD_LOGIC;
  signal \mult_out__1_n_91\ : STD_LOGIC;
  signal \mult_out__1_n_92\ : STD_LOGIC;
  signal \mult_out__1_n_93\ : STD_LOGIC;
  signal \mult_out__1_n_94\ : STD_LOGIC;
  signal \mult_out__1_n_95\ : STD_LOGIC;
  signal \mult_out__1_n_96\ : STD_LOGIC;
  signal \mult_out__1_n_97\ : STD_LOGIC;
  signal \mult_out__1_n_98\ : STD_LOGIC;
  signal \mult_out__1_n_99\ : STD_LOGIC;
  signal mult_out_carry_n_0 : STD_LOGIC;
  signal mult_out_carry_n_2 : STD_LOGIC;
  signal mult_out_carry_n_3 : STD_LOGIC;
  signal mult_out_carry_n_5 : STD_LOGIC;
  signal mult_out_carry_n_6 : STD_LOGIC;
  signal mult_out_carry_n_7 : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \mult_out_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__7_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry__8_n_3\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \mult_out_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal mult_out_n_100 : STD_LOGIC;
  signal mult_out_n_101 : STD_LOGIC;
  signal mult_out_n_102 : STD_LOGIC;
  signal mult_out_n_103 : STD_LOGIC;
  signal mult_out_n_104 : STD_LOGIC;
  signal mult_out_n_105 : STD_LOGIC;
  signal mult_out_n_58 : STD_LOGIC;
  signal mult_out_n_59 : STD_LOGIC;
  signal mult_out_n_60 : STD_LOGIC;
  signal mult_out_n_61 : STD_LOGIC;
  signal mult_out_n_62 : STD_LOGIC;
  signal mult_out_n_63 : STD_LOGIC;
  signal mult_out_n_64 : STD_LOGIC;
  signal mult_out_n_65 : STD_LOGIC;
  signal mult_out_n_66 : STD_LOGIC;
  signal mult_out_n_67 : STD_LOGIC;
  signal mult_out_n_68 : STD_LOGIC;
  signal mult_out_n_69 : STD_LOGIC;
  signal mult_out_n_70 : STD_LOGIC;
  signal mult_out_n_71 : STD_LOGIC;
  signal mult_out_n_74 : STD_LOGIC;
  signal mult_out_n_75 : STD_LOGIC;
  signal mult_out_n_76 : STD_LOGIC;
  signal mult_out_n_77 : STD_LOGIC;
  signal mult_out_n_78 : STD_LOGIC;
  signal mult_out_n_79 : STD_LOGIC;
  signal mult_out_n_80 : STD_LOGIC;
  signal mult_out_n_81 : STD_LOGIC;
  signal mult_out_n_82 : STD_LOGIC;
  signal mult_out_n_83 : STD_LOGIC;
  signal mult_out_n_84 : STD_LOGIC;
  signal mult_out_n_85 : STD_LOGIC;
  signal mult_out_n_87 : STD_LOGIC;
  signal mult_out_n_88 : STD_LOGIC;
  signal mult_out_n_89 : STD_LOGIC;
  signal mult_out_n_90 : STD_LOGIC;
  signal mult_out_n_91 : STD_LOGIC;
  signal mult_out_n_92 : STD_LOGIC;
  signal mult_out_n_93 : STD_LOGIC;
  signal mult_out_n_94 : STD_LOGIC;
  signal mult_out_n_95 : STD_LOGIC;
  signal mult_out_n_96 : STD_LOGIC;
  signal mult_out_n_97 : STD_LOGIC;
  signal mult_out_n_98 : STD_LOGIC;
  signal mult_out_n_99 : STD_LOGIC;
  signal NLW_mult_out_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_out_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_out_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_out_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult_out_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_out__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_out__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_out__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal \NLW_mult_out__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mult_out_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_mult_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_out : label is "{SYNTH-10 {cell *THIS*} {string 10x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_out__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x10 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \mult_out_inferred__1/i__carry__8\ : label is 35;
begin
  P(2 downto 0) <= \^p\(2 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_81,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_99\,
      I1 => mult_out_n_99,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_82,
      I1 => mult_out_carry_n_0,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_100\,
      I1 => mult_out_n_100,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_83,
      I1 => mult_out_carry_n_5,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_101\,
      I1 => mult_out_n_101,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_84,
      I1 => mult_out_carry_n_6,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_102\,
      I1 => mult_out_n_102,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_77,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_95\,
      I1 => mult_out_n_95,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_78,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_96\,
      I1 => mult_out_n_96,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_79,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_97\,
      I1 => mult_out_n_97,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_80,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_98\,
      I1 => mult_out_n_98,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_91\,
      I1 => mult_out_n_91,
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_74,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_92\,
      I1 => mult_out_n_92,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_75,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_93\,
      I1 => mult_out_n_93,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_76,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_94\,
      I1 => mult_out_n_94,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__3_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_87\,
      I1 => \mult_out_inferred__0/i__carry_n_6\,
      O => \i__carry__3_i_1__3_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_70,
      I1 => mult_out_n_69,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_88\,
      I1 => \mult_out_inferred__0/i__carry_n_7\,
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_89\,
      I1 => mult_out_n_89,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mult_out_n_71,
      I1 => mult_out_n_70,
      O => \i__carry__3_i_3__2_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_90\,
      I1 => mult_out_n_90,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p\(2),
      I1 => mult_out_n_71,
      O => \i__carry__3_i_4__2_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_83\,
      I1 => \mult_out_inferred__0/i__carry__0_n_6\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_84\,
      I1 => \mult_out_inferred__0/i__carry__0_n_7\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_85\,
      I1 => \mult_out_inferred__0/i__carry_n_4\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_86\,
      I1 => \mult_out_inferred__0/i__carry_n_5\,
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_79\,
      I1 => \mult_out_inferred__0/i__carry__1_n_6\,
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_80\,
      I1 => \mult_out_inferred__0/i__carry__1_n_7\,
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_81\,
      I1 => \mult_out_inferred__0/i__carry__0_n_4\,
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_82\,
      I1 => \mult_out_inferred__0/i__carry__0_n_5\,
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_75\,
      I1 => \mult_out_inferred__0/i__carry__2_n_6\,
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_76\,
      I1 => \mult_out_inferred__0/i__carry__2_n_7\,
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_77\,
      I1 => \mult_out_inferred__0/i__carry__1_n_4\,
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_78\,
      I1 => \mult_out_inferred__0/i__carry__1_n_5\,
      O => \i__carry__6_i_4_n_0\
    );
\i__carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_71\,
      I1 => \mult_out_inferred__0/i__carry__3_n_6\,
      O => \i__carry__7_i_1_n_0\
    );
\i__carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_72\,
      I1 => \mult_out_inferred__0/i__carry__3_n_7\,
      O => \i__carry__7_i_2_n_0\
    );
\i__carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_73\,
      I1 => \mult_out_inferred__0/i__carry__2_n_4\,
      O => \i__carry__7_i_3_n_0\
    );
\i__carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_74\,
      I1 => \mult_out_inferred__0/i__carry__2_n_5\,
      O => \i__carry__7_i_4_n_0\
    );
\i__carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_69\,
      I1 => \mult_out_inferred__0/i__carry__3_n_4\,
      O => \i__carry__8_i_1_n_0\
    );
\i__carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_70\,
      I1 => \mult_out_inferred__0/i__carry__3_n_5\,
      O => \i__carry__8_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_85,
      I1 => mult_out_carry_n_7,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_103\,
      I1 => mult_out_n_103,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_104\,
      I1 => mult_out_n_104,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_87,
      I1 => \i__carry__6_i_2_0\(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_out__1_n_105\,
      I1 => mult_out_n_105,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mult_out_n_88,
      I1 => v1_reg(0),
      O => \i__carry_i_4_n_0\
    );
mult_out: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => mult_out_0(1),
      A(28) => mult_out_0(1),
      A(27) => mult_out_0(1),
      A(26) => mult_out_0(1),
      A(25) => mult_out_0(1),
      A(24) => mult_out_0(1),
      A(23) => mult_out_0(1),
      A(22) => mult_out_0(1),
      A(21) => mult_out_0(1),
      A(20) => mult_out_0(1),
      A(19) => mult_out_0(1),
      A(18) => mult_out_0(1),
      A(17) => mult_out_0(1),
      A(16) => mult_out_0(1),
      A(15) => mult_out_0(1),
      A(14) => mult_out_0(1),
      A(13) => mult_out_0(1),
      A(12) => mult_out_0(1),
      A(11) => mult_out_0(1),
      A(10) => mult_out_0(1),
      A(9) => mult_out_0(1),
      A(8) => mult_out_0(1),
      A(7) => mult_out_0(1),
      A(6) => mult_out_0(1),
      A(5) => mult_out_0(1),
      A(4) => mult_out_0(1),
      A(3) => mult_out_0(1),
      A(2) => mult_out_0(1),
      A(1 downto 0) => mult_out_0(1 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_out_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001010101010101011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_out_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_out_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_out_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_out_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_out_OVERFLOW_UNCONNECTED,
      P(47) => mult_out_n_58,
      P(46) => mult_out_n_59,
      P(45) => mult_out_n_60,
      P(44) => mult_out_n_61,
      P(43) => mult_out_n_62,
      P(42) => mult_out_n_63,
      P(41) => mult_out_n_64,
      P(40) => mult_out_n_65,
      P(39) => mult_out_n_66,
      P(38) => mult_out_n_67,
      P(37) => mult_out_n_68,
      P(36) => mult_out_n_69,
      P(35) => mult_out_n_70,
      P(34) => mult_out_n_71,
      P(33 downto 32) => \^p\(2 downto 1),
      P(31) => mult_out_n_74,
      P(30) => mult_out_n_75,
      P(29) => mult_out_n_76,
      P(28) => mult_out_n_77,
      P(27) => mult_out_n_78,
      P(26) => mult_out_n_79,
      P(25) => mult_out_n_80,
      P(24) => mult_out_n_81,
      P(23) => mult_out_n_82,
      P(22) => mult_out_n_83,
      P(21) => mult_out_n_84,
      P(20) => mult_out_n_85,
      P(19) => \^p\(0),
      P(18) => mult_out_n_87,
      P(17) => mult_out_n_88,
      P(16) => mult_out_n_89,
      P(15) => mult_out_n_90,
      P(14) => mult_out_n_91,
      P(13) => mult_out_n_92,
      P(12) => mult_out_n_93,
      P(11) => mult_out_n_94,
      P(10) => mult_out_n_95,
      P(9) => mult_out_n_96,
      P(8) => mult_out_n_97,
      P(7) => mult_out_n_98,
      P(6) => mult_out_n_99,
      P(5) => mult_out_n_100,
      P(4) => mult_out_n_101,
      P(3) => mult_out_n_102,
      P(2) => mult_out_n_103,
      P(1) => mult_out_n_104,
      P(0) => mult_out_n_105,
      PATTERNBDETECT => NLW_mult_out_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_out_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult_out_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_out_UNDERFLOW_UNCONNECTED
    );
\mult_out__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => \mult_out__0_0\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \mult_out__0_n_24\,
      ACOUT(28) => \mult_out__0_n_25\,
      ACOUT(27) => \mult_out__0_n_26\,
      ACOUT(26) => \mult_out__0_n_27\,
      ACOUT(25) => \mult_out__0_n_28\,
      ACOUT(24) => \mult_out__0_n_29\,
      ACOUT(23) => \mult_out__0_n_30\,
      ACOUT(22) => \mult_out__0_n_31\,
      ACOUT(21) => \mult_out__0_n_32\,
      ACOUT(20) => \mult_out__0_n_33\,
      ACOUT(19) => \mult_out__0_n_34\,
      ACOUT(18) => \mult_out__0_n_35\,
      ACOUT(17) => \mult_out__0_n_36\,
      ACOUT(16) => \mult_out__0_n_37\,
      ACOUT(15) => \mult_out__0_n_38\,
      ACOUT(14) => \mult_out__0_n_39\,
      ACOUT(13) => \mult_out__0_n_40\,
      ACOUT(12) => \mult_out__0_n_41\,
      ACOUT(11) => \mult_out__0_n_42\,
      ACOUT(10) => \mult_out__0_n_43\,
      ACOUT(9) => \mult_out__0_n_44\,
      ACOUT(8) => \mult_out__0_n_45\,
      ACOUT(7) => \mult_out__0_n_46\,
      ACOUT(6) => \mult_out__0_n_47\,
      ACOUT(5) => \mult_out__0_n_48\,
      ACOUT(4) => \mult_out__0_n_49\,
      ACOUT(3) => \mult_out__0_n_50\,
      ACOUT(2) => \mult_out__0_n_51\,
      ACOUT(1) => \mult_out__0_n_52\,
      ACOUT(0) => \mult_out__0_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001010101010101011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_mult_out__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_out__0_n_58\,
      P(46) => \mult_out__0_n_59\,
      P(45) => \mult_out__0_n_60\,
      P(44) => \mult_out__0_n_61\,
      P(43) => \mult_out__0_n_62\,
      P(42) => \mult_out__0_n_63\,
      P(41) => \mult_out__0_n_64\,
      P(40) => \mult_out__0_n_65\,
      P(39) => \mult_out__0_n_66\,
      P(38) => \mult_out__0_n_67\,
      P(37) => \mult_out__0_n_68\,
      P(36) => \mult_out__0_n_69\,
      P(35) => \mult_out__0_n_70\,
      P(34) => \mult_out__0_n_71\,
      P(33) => \mult_out__0_n_72\,
      P(32) => \mult_out__0_n_73\,
      P(31) => \mult_out__0_n_74\,
      P(30) => \mult_out__0_n_75\,
      P(29) => \mult_out__0_n_76\,
      P(28) => \mult_out__0_n_77\,
      P(27) => \mult_out__0_n_78\,
      P(26) => \mult_out__0_n_79\,
      P(25) => \mult_out__0_n_80\,
      P(24) => \mult_out__0_n_81\,
      P(23) => \mult_out__0_n_82\,
      P(22) => \mult_out__0_n_83\,
      P(21) => \mult_out__0_n_84\,
      P(20) => \mult_out__0_n_85\,
      P(19) => \mult_out__0_n_86\,
      P(18) => \mult_out__0_n_87\,
      P(17) => \mult_out__0_n_88\,
      P(16) => \mult_out__0_n_89\,
      P(15) => \mult_out__0_n_90\,
      P(14) => \mult_out__0_n_91\,
      P(13) => \mult_out__0_n_92\,
      P(12) => \mult_out__0_n_93\,
      P(11) => \mult_out__0_n_94\,
      P(10) => \mult_out__0_n_95\,
      P(9) => \mult_out__0_n_96\,
      P(8) => \mult_out__0_n_97\,
      P(7) => \mult_out__0_n_98\,
      P(6) => \mult_out__0_n_99\,
      P(5) => \mult_out__0_n_100\,
      P(4) => \mult_out__0_n_101\,
      P(3) => \mult_out__0_n_102\,
      P(2) => \mult_out__0_n_103\,
      P(1) => \mult_out__0_n_104\,
      P(0) => \mult_out__0_n_105\,
      PATTERNBDETECT => \NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \mult_out__0_n_106\,
      PCOUT(46) => \mult_out__0_n_107\,
      PCOUT(45) => \mult_out__0_n_108\,
      PCOUT(44) => \mult_out__0_n_109\,
      PCOUT(43) => \mult_out__0_n_110\,
      PCOUT(42) => \mult_out__0_n_111\,
      PCOUT(41) => \mult_out__0_n_112\,
      PCOUT(40) => \mult_out__0_n_113\,
      PCOUT(39) => \mult_out__0_n_114\,
      PCOUT(38) => \mult_out__0_n_115\,
      PCOUT(37) => \mult_out__0_n_116\,
      PCOUT(36) => \mult_out__0_n_117\,
      PCOUT(35) => \mult_out__0_n_118\,
      PCOUT(34) => \mult_out__0_n_119\,
      PCOUT(33) => \mult_out__0_n_120\,
      PCOUT(32) => \mult_out__0_n_121\,
      PCOUT(31) => \mult_out__0_n_122\,
      PCOUT(30) => \mult_out__0_n_123\,
      PCOUT(29) => \mult_out__0_n_124\,
      PCOUT(28) => \mult_out__0_n_125\,
      PCOUT(27) => \mult_out__0_n_126\,
      PCOUT(26) => \mult_out__0_n_127\,
      PCOUT(25) => \mult_out__0_n_128\,
      PCOUT(24) => \mult_out__0_n_129\,
      PCOUT(23) => \mult_out__0_n_130\,
      PCOUT(22) => \mult_out__0_n_131\,
      PCOUT(21) => \mult_out__0_n_132\,
      PCOUT(20) => \mult_out__0_n_133\,
      PCOUT(19) => \mult_out__0_n_134\,
      PCOUT(18) => \mult_out__0_n_135\,
      PCOUT(17) => \mult_out__0_n_136\,
      PCOUT(16) => \mult_out__0_n_137\,
      PCOUT(15) => \mult_out__0_n_138\,
      PCOUT(14) => \mult_out__0_n_139\,
      PCOUT(13) => \mult_out__0_n_140\,
      PCOUT(12) => \mult_out__0_n_141\,
      PCOUT(11) => \mult_out__0_n_142\,
      PCOUT(10) => \mult_out__0_n_143\,
      PCOUT(9) => \mult_out__0_n_144\,
      PCOUT(8) => \mult_out__0_n_145\,
      PCOUT(7) => \mult_out__0_n_146\,
      PCOUT(6) => \mult_out__0_n_147\,
      PCOUT(5) => \mult_out__0_n_148\,
      PCOUT(4) => \mult_out__0_n_149\,
      PCOUT(3) => \mult_out__0_n_150\,
      PCOUT(2) => \mult_out__0_n_151\,
      PCOUT(1) => \mult_out__0_n_152\,
      PCOUT(0) => \mult_out__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__0_UNDERFLOW_UNCONNECTED\
    );
\mult_out__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \mult_out__0_n_24\,
      ACIN(28) => \mult_out__0_n_25\,
      ACIN(27) => \mult_out__0_n_26\,
      ACIN(26) => \mult_out__0_n_27\,
      ACIN(25) => \mult_out__0_n_28\,
      ACIN(24) => \mult_out__0_n_29\,
      ACIN(23) => \mult_out__0_n_30\,
      ACIN(22) => \mult_out__0_n_31\,
      ACIN(21) => \mult_out__0_n_32\,
      ACIN(20) => \mult_out__0_n_33\,
      ACIN(19) => \mult_out__0_n_34\,
      ACIN(18) => \mult_out__0_n_35\,
      ACIN(17) => \mult_out__0_n_36\,
      ACIN(16) => \mult_out__0_n_37\,
      ACIN(15) => \mult_out__0_n_38\,
      ACIN(14) => \mult_out__0_n_39\,
      ACIN(13) => \mult_out__0_n_40\,
      ACIN(12) => \mult_out__0_n_41\,
      ACIN(11) => \mult_out__0_n_42\,
      ACIN(10) => \mult_out__0_n_43\,
      ACIN(9) => \mult_out__0_n_44\,
      ACIN(8) => \mult_out__0_n_45\,
      ACIN(7) => \mult_out__0_n_46\,
      ACIN(6) => \mult_out__0_n_47\,
      ACIN(5) => \mult_out__0_n_48\,
      ACIN(4) => \mult_out__0_n_49\,
      ACIN(3) => \mult_out__0_n_50\,
      ACIN(2) => \mult_out__0_n_51\,
      ACIN(1) => \mult_out__0_n_52\,
      ACIN(0) => \mult_out__0_n_53\,
      ACOUT(29 downto 0) => \NLW_mult_out__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000010101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_out__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_out__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_out__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 37) => \NLW_mult_out__1_P_UNCONNECTED\(47 downto 37),
      P(36) => \mult_out__1_n_69\,
      P(35) => \mult_out__1_n_70\,
      P(34) => \mult_out__1_n_71\,
      P(33) => \mult_out__1_n_72\,
      P(32) => \mult_out__1_n_73\,
      P(31) => \mult_out__1_n_74\,
      P(30) => \mult_out__1_n_75\,
      P(29) => \mult_out__1_n_76\,
      P(28) => \mult_out__1_n_77\,
      P(27) => \mult_out__1_n_78\,
      P(26) => \mult_out__1_n_79\,
      P(25) => \mult_out__1_n_80\,
      P(24) => \mult_out__1_n_81\,
      P(23) => \mult_out__1_n_82\,
      P(22) => \mult_out__1_n_83\,
      P(21) => \mult_out__1_n_84\,
      P(20) => \mult_out__1_n_85\,
      P(19) => \mult_out__1_n_86\,
      P(18) => \mult_out__1_n_87\,
      P(17) => \mult_out__1_n_88\,
      P(16) => \mult_out__1_n_89\,
      P(15) => \mult_out__1_n_90\,
      P(14) => \mult_out__1_n_91\,
      P(13) => \mult_out__1_n_92\,
      P(12) => \mult_out__1_n_93\,
      P(11) => \mult_out__1_n_94\,
      P(10) => \mult_out__1_n_95\,
      P(9) => \mult_out__1_n_96\,
      P(8) => \mult_out__1_n_97\,
      P(7) => \mult_out__1_n_98\,
      P(6) => \mult_out__1_n_99\,
      P(5) => \mult_out__1_n_100\,
      P(4) => \mult_out__1_n_101\,
      P(3) => \mult_out__1_n_102\,
      P(2) => \mult_out__1_n_103\,
      P(1) => \mult_out__1_n_104\,
      P(0) => \mult_out__1_n_105\,
      PATTERNBDETECT => \NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_out__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \mult_out__0_n_106\,
      PCIN(46) => \mult_out__0_n_107\,
      PCIN(45) => \mult_out__0_n_108\,
      PCIN(44) => \mult_out__0_n_109\,
      PCIN(43) => \mult_out__0_n_110\,
      PCIN(42) => \mult_out__0_n_111\,
      PCIN(41) => \mult_out__0_n_112\,
      PCIN(40) => \mult_out__0_n_113\,
      PCIN(39) => \mult_out__0_n_114\,
      PCIN(38) => \mult_out__0_n_115\,
      PCIN(37) => \mult_out__0_n_116\,
      PCIN(36) => \mult_out__0_n_117\,
      PCIN(35) => \mult_out__0_n_118\,
      PCIN(34) => \mult_out__0_n_119\,
      PCIN(33) => \mult_out__0_n_120\,
      PCIN(32) => \mult_out__0_n_121\,
      PCIN(31) => \mult_out__0_n_122\,
      PCIN(30) => \mult_out__0_n_123\,
      PCIN(29) => \mult_out__0_n_124\,
      PCIN(28) => \mult_out__0_n_125\,
      PCIN(27) => \mult_out__0_n_126\,
      PCIN(26) => \mult_out__0_n_127\,
      PCIN(25) => \mult_out__0_n_128\,
      PCIN(24) => \mult_out__0_n_129\,
      PCIN(23) => \mult_out__0_n_130\,
      PCIN(22) => \mult_out__0_n_131\,
      PCIN(21) => \mult_out__0_n_132\,
      PCIN(20) => \mult_out__0_n_133\,
      PCIN(19) => \mult_out__0_n_134\,
      PCIN(18) => \mult_out__0_n_135\,
      PCIN(17) => \mult_out__0_n_136\,
      PCIN(16) => \mult_out__0_n_137\,
      PCIN(15) => \mult_out__0_n_138\,
      PCIN(14) => \mult_out__0_n_139\,
      PCIN(13) => \mult_out__0_n_140\,
      PCIN(12) => \mult_out__0_n_141\,
      PCIN(11) => \mult_out__0_n_142\,
      PCIN(10) => \mult_out__0_n_143\,
      PCIN(9) => \mult_out__0_n_144\,
      PCIN(8) => \mult_out__0_n_145\,
      PCIN(7) => \mult_out__0_n_146\,
      PCIN(6) => \mult_out__0_n_147\,
      PCIN(5) => \mult_out__0_n_148\,
      PCIN(4) => \mult_out__0_n_149\,
      PCIN(3) => \mult_out__0_n_150\,
      PCIN(2) => \mult_out__0_n_151\,
      PCIN(1) => \mult_out__0_n_152\,
      PCIN(0) => \mult_out__0_n_153\,
      PCOUT(47 downto 0) => \NLW_mult_out__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_out__1_UNDERFLOW_UNCONNECTED\
    );
mult_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mult_out_carry_n_0,
      CO(2) => NLW_mult_out_carry_CO_UNCONNECTED(2),
      CO(1) => mult_out_carry_n_2,
      CO(0) => mult_out_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__6_i_2_0\(0),
      DI(1) => \i__carry__6_i_2_0\(0),
      DI(0) => '0',
      O(3) => NLW_mult_out_carry_O_UNCONNECTED(3),
      O(2) => mult_out_carry_n_5,
      O(1) => mult_out_carry_n_6,
      O(0) => mult_out_carry_n_7,
      S(3 downto 2) => B"10",
      S(1 downto 0) => \i__carry_i_1_0\(1 downto 0)
    );
\mult_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__0/i__carry_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_85,
      DI(2) => \^p\(0),
      DI(1) => mult_out_n_87,
      DI(0) => mult_out_n_88,
      O(3) => \mult_out_inferred__0/i__carry_n_4\,
      O(2) => \mult_out_inferred__0/i__carry_n_5\,
      O(1) => \mult_out_inferred__0/i__carry_n_6\,
      O(0) => \mult_out_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry__3_i_2__0_0\(0),
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\mult_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_81,
      DI(2) => mult_out_n_82,
      DI(1) => mult_out_n_83,
      DI(0) => mult_out_n_84,
      O(3) => \mult_out_inferred__0/i__carry__0_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__0_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__0_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\mult_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => mult_out_n_77,
      DI(2) => mult_out_n_78,
      DI(1) => mult_out_n_79,
      DI(0) => mult_out_n_80,
      O(3) => \mult_out_inferred__0/i__carry__1_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__1_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__1_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\mult_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__6_i_2_0\(0),
      DI(2) => mult_out_n_74,
      DI(1) => mult_out_n_75,
      DI(0) => mult_out_n_76,
      O(3) => \mult_out_inferred__0/i__carry__2_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__2_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__2_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__6_i_2_1\(0),
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\mult_out_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__0/i__carry__2_n_0\,
      CO(3) => \NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \mult_out_inferred__0/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__0/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => mult_out_n_71,
      DI(1) => \^p\(2),
      DI(0) => \i__carry__7_i_2_0\(0),
      O(3) => \mult_out_inferred__0/i__carry__3_n_4\,
      O(2) => \mult_out_inferred__0/i__carry__3_n_5\,
      O(1) => \mult_out_inferred__0/i__carry__3_n_6\,
      O(0) => \mult_out_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_2_n_0\,
      S(2) => \i__carry__3_i_3__2_n_0\,
      S(1) => \i__carry__3_i_4__2_n_0\,
      S(0) => \i__carry__7_i_2_1\(0)
    );
\mult_out_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_out_inferred__1/i__carry_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_103\,
      DI(2) => \mult_out__1_n_104\,
      DI(1) => \mult_out__1_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \mult_out__0_n_89\
    );
\mult_out_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__0_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__0_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_99\,
      DI(2) => \mult_out__1_n_100\,
      DI(1) => \mult_out__1_n_101\,
      DI(0) => \mult_out__1_n_102\,
      O(3 downto 0) => \mult_out__1_0\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__0_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__1_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__1_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_95\,
      DI(2) => \mult_out__1_n_96\,
      DI(1) => \mult_out__1_n_97\,
      DI(0) => \mult_out__1_n_98\,
      O(3 downto 0) => \mult_out__1_1\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__1_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__2_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__2_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_91\,
      DI(2) => \mult_out__1_n_92\,
      DI(1) => \mult_out__1_n_93\,
      DI(0) => \mult_out__1_n_94\,
      O(3 downto 0) => \mult_out__1_2\(3 downto 0),
      S(3) => \i__carry__2_i_1__1_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\mult_out_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__2_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__3_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__3_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_87\,
      DI(2) => \mult_out__1_n_88\,
      DI(1) => \mult_out__1_n_89\,
      DI(0) => \mult_out__1_n_90\,
      O(3 downto 0) => \mult_out__1_3\(3 downto 0),
      S(3) => \i__carry__3_i_1__3_n_0\,
      S(2) => \i__carry__3_i_2__0_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\mult_out_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__3_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__4_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__4_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_83\,
      DI(2) => \mult_out__1_n_84\,
      DI(1) => \mult_out__1_n_85\,
      DI(0) => \mult_out__1_n_86\,
      O(3 downto 0) => \mult_out__1_4\(3 downto 0),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\mult_out_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__4_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__5_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__5_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_79\,
      DI(2) => \mult_out__1_n_80\,
      DI(1) => \mult_out__1_n_81\,
      DI(0) => \mult_out__1_n_82\,
      O(3 downto 0) => \mult_out__1_5\(3 downto 0),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\mult_out_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__5_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__6_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__6_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_75\,
      DI(2) => \mult_out__1_n_76\,
      DI(1) => \mult_out__1_n_77\,
      DI(0) => \mult_out__1_n_78\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => O(1 downto 0),
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\mult_out_inferred__1/i__carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__6_n_0\,
      CO(3) => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(2) => \mult_out_inferred__1/i__carry__7_n_1\,
      CO(1) => \mult_out_inferred__1/i__carry__7_n_2\,
      CO(0) => \mult_out_inferred__1/i__carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \mult_out__1_n_71\,
      DI(2) => \mult_out__1_n_72\,
      DI(1) => \mult_out__1_n_73\,
      DI(0) => \mult_out__1_n_74\,
      O(3 downto 0) => \NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__7_i_1_n_0\,
      S(2) => \i__carry__7_i_2_n_0\,
      S(1) => \i__carry__7_i_3_n_0\,
      S(0) => \i__carry__7_i_4_n_0\
    );
\mult_out_inferred__1/i__carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_out_inferred__1/i__carry__7_n_0\,
      CO(3 downto 1) => \NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mult_out_inferred__1/i__carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mult_out__1_n_70\,
      O(3 downto 2) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(3 downto 2),
      O(1) => \mult_out__1_6\(0),
      O(0) => \NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__8_i_1_n_0\,
      S(0) => \i__carry__8_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_solver is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 26 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 26 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 26 downto 0 );
    solver_reset : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    restart_counter_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_solver : entity is "solver";
end design_1_lorenz_reader_0_0_solver;

architecture STRUCTURE of design_1_lorenz_reader_0_0_solver is
  signal diff_rho_z : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal diff_y_x : STD_LOGIC_VECTOR ( 26 downto 25 );
  signal \diff_y_x__0\ : STD_LOGIC_VECTOR ( 24 downto 8 );
  signal \diff_y_x_carry__0_n_0\ : STD_LOGIC;
  signal \diff_y_x_carry__0_n_1\ : STD_LOGIC;
  signal \diff_y_x_carry__0_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__0_n_3\ : STD_LOGIC;
  signal \diff_y_x_carry__1_n_0\ : STD_LOGIC;
  signal \diff_y_x_carry__1_n_1\ : STD_LOGIC;
  signal \diff_y_x_carry__1_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__1_n_3\ : STD_LOGIC;
  signal \diff_y_x_carry__2_n_0\ : STD_LOGIC;
  signal \diff_y_x_carry__2_n_1\ : STD_LOGIC;
  signal \diff_y_x_carry__2_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__2_n_3\ : STD_LOGIC;
  signal \diff_y_x_carry__3_n_0\ : STD_LOGIC;
  signal \diff_y_x_carry__3_n_1\ : STD_LOGIC;
  signal \diff_y_x_carry__3_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__3_n_3\ : STD_LOGIC;
  signal \diff_y_x_carry__4_n_0\ : STD_LOGIC;
  signal \diff_y_x_carry__4_n_1\ : STD_LOGIC;
  signal \diff_y_x_carry__4_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__4_n_3\ : STD_LOGIC;
  signal \diff_y_x_carry__5_n_2\ : STD_LOGIC;
  signal \diff_y_x_carry__5_n_3\ : STD_LOGIC;
  signal diff_y_x_carry_n_0 : STD_LOGIC;
  signal diff_y_x_carry_n_1 : STD_LOGIC;
  signal diff_y_x_carry_n_2 : STD_LOGIC;
  signal diff_y_x_carry_n_3 : STD_LOGIC;
  signal \funct_y_carry__0_n_0\ : STD_LOGIC;
  signal \funct_y_carry__0_n_1\ : STD_LOGIC;
  signal \funct_y_carry__0_n_2\ : STD_LOGIC;
  signal \funct_y_carry__0_n_3\ : STD_LOGIC;
  signal \funct_y_carry__0_n_4\ : STD_LOGIC;
  signal \funct_y_carry__0_n_5\ : STD_LOGIC;
  signal \funct_y_carry__0_n_6\ : STD_LOGIC;
  signal \funct_y_carry__0_n_7\ : STD_LOGIC;
  signal \funct_y_carry__1_n_0\ : STD_LOGIC;
  signal \funct_y_carry__1_n_1\ : STD_LOGIC;
  signal \funct_y_carry__1_n_2\ : STD_LOGIC;
  signal \funct_y_carry__1_n_3\ : STD_LOGIC;
  signal \funct_y_carry__1_n_4\ : STD_LOGIC;
  signal \funct_y_carry__1_n_5\ : STD_LOGIC;
  signal \funct_y_carry__1_n_6\ : STD_LOGIC;
  signal \funct_y_carry__1_n_7\ : STD_LOGIC;
  signal \funct_y_carry__2_n_0\ : STD_LOGIC;
  signal \funct_y_carry__2_n_1\ : STD_LOGIC;
  signal \funct_y_carry__2_n_2\ : STD_LOGIC;
  signal \funct_y_carry__2_n_3\ : STD_LOGIC;
  signal \funct_y_carry__2_n_4\ : STD_LOGIC;
  signal \funct_y_carry__2_n_5\ : STD_LOGIC;
  signal \funct_y_carry__2_n_6\ : STD_LOGIC;
  signal \funct_y_carry__2_n_7\ : STD_LOGIC;
  signal \funct_y_carry__3_n_0\ : STD_LOGIC;
  signal \funct_y_carry__3_n_1\ : STD_LOGIC;
  signal \funct_y_carry__3_n_2\ : STD_LOGIC;
  signal \funct_y_carry__3_n_3\ : STD_LOGIC;
  signal \funct_y_carry__3_n_4\ : STD_LOGIC;
  signal \funct_y_carry__3_n_5\ : STD_LOGIC;
  signal \funct_y_carry__3_n_6\ : STD_LOGIC;
  signal \funct_y_carry__3_n_7\ : STD_LOGIC;
  signal \funct_y_carry__4_n_0\ : STD_LOGIC;
  signal \funct_y_carry__4_n_1\ : STD_LOGIC;
  signal \funct_y_carry__4_n_2\ : STD_LOGIC;
  signal \funct_y_carry__4_n_3\ : STD_LOGIC;
  signal \funct_y_carry__4_n_4\ : STD_LOGIC;
  signal \funct_y_carry__4_n_5\ : STD_LOGIC;
  signal \funct_y_carry__4_n_6\ : STD_LOGIC;
  signal \funct_y_carry__4_n_7\ : STD_LOGIC;
  signal \funct_y_carry__5_n_2\ : STD_LOGIC;
  signal \funct_y_carry__5_n_3\ : STD_LOGIC;
  signal \funct_y_carry__5_n_5\ : STD_LOGIC;
  signal \funct_y_carry__5_n_6\ : STD_LOGIC;
  signal \funct_y_carry__5_n_7\ : STD_LOGIC;
  signal funct_y_carry_n_0 : STD_LOGIC;
  signal funct_y_carry_n_1 : STD_LOGIC;
  signal funct_y_carry_n_2 : STD_LOGIC;
  signal funct_y_carry_n_3 : STD_LOGIC;
  signal funct_y_carry_n_4 : STD_LOGIC;
  signal funct_y_carry_n_5 : STD_LOGIC;
  signal funct_y_carry_n_6 : STD_LOGIC;
  signal funct_y_carry_n_7 : STD_LOGIC;
  signal \funct_z_carry__0_n_0\ : STD_LOGIC;
  signal \funct_z_carry__0_n_1\ : STD_LOGIC;
  signal \funct_z_carry__0_n_2\ : STD_LOGIC;
  signal \funct_z_carry__0_n_3\ : STD_LOGIC;
  signal \funct_z_carry__0_n_4\ : STD_LOGIC;
  signal \funct_z_carry__0_n_5\ : STD_LOGIC;
  signal \funct_z_carry__0_n_6\ : STD_LOGIC;
  signal \funct_z_carry__0_n_7\ : STD_LOGIC;
  signal \funct_z_carry__1_n_0\ : STD_LOGIC;
  signal \funct_z_carry__1_n_1\ : STD_LOGIC;
  signal \funct_z_carry__1_n_2\ : STD_LOGIC;
  signal \funct_z_carry__1_n_3\ : STD_LOGIC;
  signal \funct_z_carry__1_n_4\ : STD_LOGIC;
  signal \funct_z_carry__1_n_5\ : STD_LOGIC;
  signal \funct_z_carry__1_n_6\ : STD_LOGIC;
  signal \funct_z_carry__1_n_7\ : STD_LOGIC;
  signal \funct_z_carry__2_n_0\ : STD_LOGIC;
  signal \funct_z_carry__2_n_1\ : STD_LOGIC;
  signal \funct_z_carry__2_n_2\ : STD_LOGIC;
  signal \funct_z_carry__2_n_3\ : STD_LOGIC;
  signal \funct_z_carry__2_n_4\ : STD_LOGIC;
  signal \funct_z_carry__2_n_5\ : STD_LOGIC;
  signal \funct_z_carry__2_n_6\ : STD_LOGIC;
  signal \funct_z_carry__2_n_7\ : STD_LOGIC;
  signal \funct_z_carry__3_n_0\ : STD_LOGIC;
  signal \funct_z_carry__3_n_1\ : STD_LOGIC;
  signal \funct_z_carry__3_n_2\ : STD_LOGIC;
  signal \funct_z_carry__3_n_3\ : STD_LOGIC;
  signal \funct_z_carry__3_n_4\ : STD_LOGIC;
  signal \funct_z_carry__3_n_5\ : STD_LOGIC;
  signal \funct_z_carry__3_n_6\ : STD_LOGIC;
  signal \funct_z_carry__3_n_7\ : STD_LOGIC;
  signal \funct_z_carry__4_n_0\ : STD_LOGIC;
  signal \funct_z_carry__4_n_1\ : STD_LOGIC;
  signal \funct_z_carry__4_n_2\ : STD_LOGIC;
  signal \funct_z_carry__4_n_3\ : STD_LOGIC;
  signal \funct_z_carry__4_n_4\ : STD_LOGIC;
  signal \funct_z_carry__4_n_5\ : STD_LOGIC;
  signal \funct_z_carry__4_n_6\ : STD_LOGIC;
  signal \funct_z_carry__4_n_7\ : STD_LOGIC;
  signal \funct_z_carry__5_n_2\ : STD_LOGIC;
  signal \funct_z_carry__5_n_3\ : STD_LOGIC;
  signal \funct_z_carry__5_n_5\ : STD_LOGIC;
  signal \funct_z_carry__5_n_6\ : STD_LOGIC;
  signal \funct_z_carry__5_n_7\ : STD_LOGIC;
  signal funct_z_carry_n_0 : STD_LOGIC;
  signal funct_z_carry_n_1 : STD_LOGIC;
  signal funct_z_carry_n_2 : STD_LOGIC;
  signal funct_z_carry_n_3 : STD_LOGIC;
  signal funct_z_carry_n_4 : STD_LOGIC;
  signal funct_z_carry_n_5 : STD_LOGIC;
  signal funct_z_carry_n_6 : STD_LOGIC;
  signal funct_z_carry_n_7 : STD_LOGIC;
  signal integrator_x_n_46 : STD_LOGIC;
  signal integrator_x_n_47 : STD_LOGIC;
  signal integrator_x_n_48 : STD_LOGIC;
  signal integrator_x_n_49 : STD_LOGIC;
  signal integrator_x_n_50 : STD_LOGIC;
  signal integrator_x_n_51 : STD_LOGIC;
  signal integrator_y_n_100 : STD_LOGIC;
  signal integrator_y_n_101 : STD_LOGIC;
  signal integrator_y_n_102 : STD_LOGIC;
  signal integrator_y_n_103 : STD_LOGIC;
  signal integrator_y_n_104 : STD_LOGIC;
  signal integrator_y_n_105 : STD_LOGIC;
  signal integrator_y_n_106 : STD_LOGIC;
  signal integrator_y_n_107 : STD_LOGIC;
  signal integrator_y_n_108 : STD_LOGIC;
  signal integrator_y_n_109 : STD_LOGIC;
  signal integrator_y_n_110 : STD_LOGIC;
  signal integrator_y_n_111 : STD_LOGIC;
  signal integrator_y_n_112 : STD_LOGIC;
  signal integrator_y_n_113 : STD_LOGIC;
  signal integrator_y_n_114 : STD_LOGIC;
  signal integrator_y_n_27 : STD_LOGIC;
  signal integrator_y_n_28 : STD_LOGIC;
  signal integrator_y_n_29 : STD_LOGIC;
  signal integrator_y_n_30 : STD_LOGIC;
  signal integrator_y_n_31 : STD_LOGIC;
  signal integrator_y_n_32 : STD_LOGIC;
  signal integrator_y_n_33 : STD_LOGIC;
  signal integrator_y_n_34 : STD_LOGIC;
  signal integrator_y_n_35 : STD_LOGIC;
  signal integrator_y_n_36 : STD_LOGIC;
  signal integrator_y_n_37 : STD_LOGIC;
  signal integrator_y_n_38 : STD_LOGIC;
  signal integrator_y_n_39 : STD_LOGIC;
  signal integrator_y_n_40 : STD_LOGIC;
  signal integrator_y_n_41 : STD_LOGIC;
  signal integrator_y_n_42 : STD_LOGIC;
  signal integrator_y_n_43 : STD_LOGIC;
  signal integrator_y_n_44 : STD_LOGIC;
  signal integrator_y_n_45 : STD_LOGIC;
  signal integrator_y_n_46 : STD_LOGIC;
  signal integrator_y_n_47 : STD_LOGIC;
  signal integrator_y_n_48 : STD_LOGIC;
  signal integrator_y_n_49 : STD_LOGIC;
  signal integrator_y_n_50 : STD_LOGIC;
  signal integrator_y_n_51 : STD_LOGIC;
  signal integrator_y_n_52 : STD_LOGIC;
  signal integrator_y_n_53 : STD_LOGIC;
  signal integrator_y_n_54 : STD_LOGIC;
  signal integrator_y_n_55 : STD_LOGIC;
  signal integrator_y_n_56 : STD_LOGIC;
  signal integrator_y_n_57 : STD_LOGIC;
  signal integrator_y_n_58 : STD_LOGIC;
  signal integrator_y_n_59 : STD_LOGIC;
  signal integrator_y_n_60 : STD_LOGIC;
  signal integrator_y_n_61 : STD_LOGIC;
  signal integrator_y_n_62 : STD_LOGIC;
  signal integrator_y_n_63 : STD_LOGIC;
  signal integrator_y_n_64 : STD_LOGIC;
  signal integrator_y_n_65 : STD_LOGIC;
  signal integrator_y_n_66 : STD_LOGIC;
  signal integrator_y_n_67 : STD_LOGIC;
  signal integrator_y_n_68 : STD_LOGIC;
  signal integrator_y_n_69 : STD_LOGIC;
  signal integrator_y_n_70 : STD_LOGIC;
  signal integrator_y_n_71 : STD_LOGIC;
  signal integrator_y_n_72 : STD_LOGIC;
  signal integrator_y_n_73 : STD_LOGIC;
  signal integrator_y_n_74 : STD_LOGIC;
  signal integrator_y_n_75 : STD_LOGIC;
  signal integrator_y_n_76 : STD_LOGIC;
  signal integrator_y_n_77 : STD_LOGIC;
  signal integrator_y_n_78 : STD_LOGIC;
  signal integrator_y_n_79 : STD_LOGIC;
  signal integrator_y_n_80 : STD_LOGIC;
  signal integrator_y_n_81 : STD_LOGIC;
  signal integrator_y_n_82 : STD_LOGIC;
  signal integrator_y_n_83 : STD_LOGIC;
  signal integrator_y_n_84 : STD_LOGIC;
  signal integrator_y_n_85 : STD_LOGIC;
  signal integrator_y_n_86 : STD_LOGIC;
  signal integrator_y_n_87 : STD_LOGIC;
  signal integrator_y_n_88 : STD_LOGIC;
  signal integrator_y_n_89 : STD_LOGIC;
  signal integrator_y_n_90 : STD_LOGIC;
  signal integrator_y_n_91 : STD_LOGIC;
  signal integrator_y_n_92 : STD_LOGIC;
  signal integrator_y_n_93 : STD_LOGIC;
  signal integrator_y_n_94 : STD_LOGIC;
  signal integrator_y_n_95 : STD_LOGIC;
  signal integrator_y_n_96 : STD_LOGIC;
  signal integrator_y_n_97 : STD_LOGIC;
  signal integrator_y_n_98 : STD_LOGIC;
  signal integrator_y_n_99 : STD_LOGIC;
  signal integrator_z_n_100 : STD_LOGIC;
  signal integrator_z_n_101 : STD_LOGIC;
  signal integrator_z_n_102 : STD_LOGIC;
  signal integrator_z_n_103 : STD_LOGIC;
  signal integrator_z_n_104 : STD_LOGIC;
  signal integrator_z_n_105 : STD_LOGIC;
  signal integrator_z_n_43 : STD_LOGIC;
  signal integrator_z_n_44 : STD_LOGIC;
  signal integrator_z_n_45 : STD_LOGIC;
  signal integrator_z_n_46 : STD_LOGIC;
  signal integrator_z_n_57 : STD_LOGIC;
  signal integrator_z_n_58 : STD_LOGIC;
  signal integrator_z_n_59 : STD_LOGIC;
  signal integrator_z_n_60 : STD_LOGIC;
  signal integrator_z_n_61 : STD_LOGIC;
  signal integrator_z_n_62 : STD_LOGIC;
  signal integrator_z_n_63 : STD_LOGIC;
  signal integrator_z_n_64 : STD_LOGIC;
  signal integrator_z_n_66 : STD_LOGIC;
  signal integrator_z_n_67 : STD_LOGIC;
  signal integrator_z_n_68 : STD_LOGIC;
  signal integrator_z_n_69 : STD_LOGIC;
  signal integrator_z_n_70 : STD_LOGIC;
  signal integrator_z_n_71 : STD_LOGIC;
  signal integrator_z_n_72 : STD_LOGIC;
  signal integrator_z_n_73 : STD_LOGIC;
  signal integrator_z_n_74 : STD_LOGIC;
  signal integrator_z_n_75 : STD_LOGIC;
  signal integrator_z_n_76 : STD_LOGIC;
  signal integrator_z_n_77 : STD_LOGIC;
  signal integrator_z_n_78 : STD_LOGIC;
  signal integrator_z_n_79 : STD_LOGIC;
  signal integrator_z_n_80 : STD_LOGIC;
  signal integrator_z_n_81 : STD_LOGIC;
  signal integrator_z_n_82 : STD_LOGIC;
  signal integrator_z_n_83 : STD_LOGIC;
  signal integrator_z_n_84 : STD_LOGIC;
  signal integrator_z_n_85 : STD_LOGIC;
  signal integrator_z_n_86 : STD_LOGIC;
  signal integrator_z_n_87 : STD_LOGIC;
  signal integrator_z_n_88 : STD_LOGIC;
  signal integrator_z_n_89 : STD_LOGIC;
  signal integrator_z_n_90 : STD_LOGIC;
  signal integrator_z_n_91 : STD_LOGIC;
  signal integrator_z_n_92 : STD_LOGIC;
  signal integrator_z_n_93 : STD_LOGIC;
  signal integrator_z_n_94 : STD_LOGIC;
  signal integrator_z_n_95 : STD_LOGIC;
  signal integrator_z_n_96 : STD_LOGIC;
  signal integrator_z_n_97 : STD_LOGIC;
  signal integrator_z_n_98 : STD_LOGIC;
  signal integrator_z_n_99 : STD_LOGIC;
  signal mult_dx_n_0 : STD_LOGIC;
  signal mult_dx_n_1 : STD_LOGIC;
  signal mult_dx_n_10 : STD_LOGIC;
  signal mult_dx_n_11 : STD_LOGIC;
  signal mult_dx_n_12 : STD_LOGIC;
  signal mult_dx_n_13 : STD_LOGIC;
  signal mult_dx_n_14 : STD_LOGIC;
  signal mult_dx_n_15 : STD_LOGIC;
  signal mult_dx_n_16 : STD_LOGIC;
  signal mult_dx_n_17 : STD_LOGIC;
  signal mult_dx_n_18 : STD_LOGIC;
  signal mult_dx_n_19 : STD_LOGIC;
  signal mult_dx_n_2 : STD_LOGIC;
  signal mult_dx_n_20 : STD_LOGIC;
  signal mult_dx_n_21 : STD_LOGIC;
  signal mult_dx_n_22 : STD_LOGIC;
  signal mult_dx_n_23 : STD_LOGIC;
  signal mult_dx_n_24 : STD_LOGIC;
  signal mult_dx_n_25 : STD_LOGIC;
  signal mult_dx_n_26 : STD_LOGIC;
  signal mult_dx_n_27 : STD_LOGIC;
  signal mult_dx_n_28 : STD_LOGIC;
  signal mult_dx_n_29 : STD_LOGIC;
  signal mult_dx_n_3 : STD_LOGIC;
  signal mult_dx_n_30 : STD_LOGIC;
  signal mult_dx_n_31 : STD_LOGIC;
  signal mult_dx_n_32 : STD_LOGIC;
  signal mult_dx_n_33 : STD_LOGIC;
  signal mult_dx_n_34 : STD_LOGIC;
  signal mult_dx_n_35 : STD_LOGIC;
  signal mult_dx_n_36 : STD_LOGIC;
  signal mult_dx_n_37 : STD_LOGIC;
  signal mult_dx_n_38 : STD_LOGIC;
  signal mult_dx_n_39 : STD_LOGIC;
  signal mult_dx_n_4 : STD_LOGIC;
  signal mult_dx_n_40 : STD_LOGIC;
  signal mult_dx_n_41 : STD_LOGIC;
  signal mult_dx_n_42 : STD_LOGIC;
  signal mult_dx_n_43 : STD_LOGIC;
  signal mult_dx_n_44 : STD_LOGIC;
  signal mult_dx_n_45 : STD_LOGIC;
  signal mult_dx_n_46 : STD_LOGIC;
  signal mult_dx_n_47 : STD_LOGIC;
  signal mult_dx_n_48 : STD_LOGIC;
  signal mult_dx_n_49 : STD_LOGIC;
  signal mult_dx_n_5 : STD_LOGIC;
  signal mult_dx_n_50 : STD_LOGIC;
  signal mult_dx_n_51 : STD_LOGIC;
  signal mult_dx_n_52 : STD_LOGIC;
  signal mult_dx_n_53 : STD_LOGIC;
  signal mult_dx_n_54 : STD_LOGIC;
  signal mult_dx_n_55 : STD_LOGIC;
  signal mult_dx_n_56 : STD_LOGIC;
  signal mult_dx_n_57 : STD_LOGIC;
  signal mult_dx_n_6 : STD_LOGIC;
  signal mult_dx_n_7 : STD_LOGIC;
  signal mult_dx_n_8 : STD_LOGIC;
  signal mult_dx_n_9 : STD_LOGIC;
  signal mult_out : STD_LOGIC_VECTOR ( 45 downto 20 );
  signal mult_xrhoz_out : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal multiplier_y_n_0 : STD_LOGIC;
  signal multiplier_y_n_1 : STD_LOGIC;
  signal multiplier_y_n_2 : STD_LOGIC;
  signal multiplier_y_n_3 : STD_LOGIC;
  signal multiplier_y_n_31 : STD_LOGIC;
  signal multiplier_y_n_32 : STD_LOGIC;
  signal multiplier_y_n_33 : STD_LOGIC;
  signal multiplier_y_n_34 : STD_LOGIC;
  signal multiplier_y_n_35 : STD_LOGIC;
  signal multiplier_y_n_36 : STD_LOGIC;
  signal multiplier_y_n_37 : STD_LOGIC;
  signal multiplier_y_n_38 : STD_LOGIC;
  signal multiplier_y_n_39 : STD_LOGIC;
  signal multiplier_y_n_4 : STD_LOGIC;
  signal multiplier_y_n_40 : STD_LOGIC;
  signal multiplier_y_n_41 : STD_LOGIC;
  signal multiplier_y_n_42 : STD_LOGIC;
  signal multiplier_y_n_43 : STD_LOGIC;
  signal multiplier_y_n_44 : STD_LOGIC;
  signal multiplier_y_n_45 : STD_LOGIC;
  signal multiplier_y_n_46 : STD_LOGIC;
  signal multiplier_y_n_47 : STD_LOGIC;
  signal multiplier_y_n_48 : STD_LOGIC;
  signal multiplier_y_n_49 : STD_LOGIC;
  signal multiplier_y_n_5 : STD_LOGIC;
  signal multiplier_y_n_50 : STD_LOGIC;
  signal multiplier_y_n_51 : STD_LOGIC;
  signal multiplier_y_n_52 : STD_LOGIC;
  signal multiplier_y_n_53 : STD_LOGIC;
  signal multiplier_y_n_54 : STD_LOGIC;
  signal multiplier_y_n_55 : STD_LOGIC;
  signal multiplier_y_n_56 : STD_LOGIC;
  signal multiplier_y_n_57 : STD_LOGIC;
  signal multiplier_y_n_58 : STD_LOGIC;
  signal multiplier_z1_n_0 : STD_LOGIC;
  signal multiplier_z1_n_1 : STD_LOGIC;
  signal multiplier_z1_n_2 : STD_LOGIC;
  signal multiplier_z1_n_3 : STD_LOGIC;
  signal multiplier_z1_n_32 : STD_LOGIC;
  signal multiplier_z1_n_33 : STD_LOGIC;
  signal multiplier_z1_n_34 : STD_LOGIC;
  signal multiplier_z1_n_35 : STD_LOGIC;
  signal multiplier_z1_n_36 : STD_LOGIC;
  signal multiplier_z1_n_37 : STD_LOGIC;
  signal multiplier_z1_n_38 : STD_LOGIC;
  signal multiplier_z1_n_39 : STD_LOGIC;
  signal multiplier_z1_n_4 : STD_LOGIC;
  signal multiplier_z1_n_40 : STD_LOGIC;
  signal multiplier_z1_n_41 : STD_LOGIC;
  signal multiplier_z1_n_42 : STD_LOGIC;
  signal multiplier_z1_n_43 : STD_LOGIC;
  signal multiplier_z1_n_44 : STD_LOGIC;
  signal multiplier_z1_n_45 : STD_LOGIC;
  signal multiplier_z1_n_46 : STD_LOGIC;
  signal multiplier_z1_n_47 : STD_LOGIC;
  signal multiplier_z1_n_48 : STD_LOGIC;
  signal multiplier_z1_n_49 : STD_LOGIC;
  signal multiplier_z1_n_5 : STD_LOGIC;
  signal multiplier_z1_n_50 : STD_LOGIC;
  signal multiplier_z1_n_51 : STD_LOGIC;
  signal multiplier_z1_n_52 : STD_LOGIC;
  signal multiplier_z1_n_53 : STD_LOGIC;
  signal multiplier_z1_n_54 : STD_LOGIC;
  signal multiplier_z1_n_55 : STD_LOGIC;
  signal multiplier_z1_n_56 : STD_LOGIC;
  signal multiplier_z1_n_57 : STD_LOGIC;
  signal multiplier_z1_n_58 : STD_LOGIC;
  signal multiplier_z1_n_59 : STD_LOGIC;
  signal multiplier_z1_n_60 : STD_LOGIC;
  signal multiplier_z1_n_61 : STD_LOGIC;
  signal multiplier_z1_n_62 : STD_LOGIC;
  signal multiplier_z1_n_63 : STD_LOGIC;
  signal multiplier_z1_n_64 : STD_LOGIC;
  signal multiplier_z1_n_65 : STD_LOGIC;
  signal multiplier_z2_n_0 : STD_LOGIC;
  signal multiplier_z2_n_1 : STD_LOGIC;
  signal multiplier_z2_n_10 : STD_LOGIC;
  signal multiplier_z2_n_11 : STD_LOGIC;
  signal multiplier_z2_n_12 : STD_LOGIC;
  signal multiplier_z2_n_13 : STD_LOGIC;
  signal multiplier_z2_n_14 : STD_LOGIC;
  signal multiplier_z2_n_15 : STD_LOGIC;
  signal multiplier_z2_n_16 : STD_LOGIC;
  signal multiplier_z2_n_17 : STD_LOGIC;
  signal multiplier_z2_n_18 : STD_LOGIC;
  signal multiplier_z2_n_19 : STD_LOGIC;
  signal multiplier_z2_n_2 : STD_LOGIC;
  signal multiplier_z2_n_20 : STD_LOGIC;
  signal multiplier_z2_n_21 : STD_LOGIC;
  signal multiplier_z2_n_22 : STD_LOGIC;
  signal multiplier_z2_n_23 : STD_LOGIC;
  signal multiplier_z2_n_24 : STD_LOGIC;
  signal multiplier_z2_n_25 : STD_LOGIC;
  signal multiplier_z2_n_26 : STD_LOGIC;
  signal multiplier_z2_n_27 : STD_LOGIC;
  signal multiplier_z2_n_28 : STD_LOGIC;
  signal multiplier_z2_n_29 : STD_LOGIC;
  signal multiplier_z2_n_3 : STD_LOGIC;
  signal multiplier_z2_n_4 : STD_LOGIC;
  signal multiplier_z2_n_5 : STD_LOGIC;
  signal multiplier_z2_n_6 : STD_LOGIC;
  signal multiplier_z2_n_7 : STD_LOGIC;
  signal multiplier_z2_n_8 : STD_LOGIC;
  signal multiplier_z2_n_9 : STD_LOGIC;
  signal \^solver_reset\ : STD_LOGIC;
  signal \^v1_reg\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \^v1_reg_0\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \^v1_reg_1\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal v1new : STD_LOGIC_VECTOR ( 26 downto 8 );
  signal NLW_diff_y_x_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_diff_y_x_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_diff_y_x_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_y_x_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_funct_y_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_funct_y_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_funct_z_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_funct_z_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of diff_y_x_carry : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_y_x_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of funct_y_carry : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of funct_z_carry : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \funct_z_carry__5\ : label is 35;
begin
  solver_reset <= \^solver_reset\;
  v1_reg(26 downto 0) <= \^v1_reg\(26 downto 0);
  v1_reg_0(26 downto 0) <= \^v1_reg_0\(26 downto 0);
  v1_reg_1(26 downto 0) <= \^v1_reg_1\(26 downto 0);
diff_y_x_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => diff_y_x_carry_n_0,
      CO(2) => diff_y_x_carry_n_1,
      CO(1) => diff_y_x_carry_n_2,
      CO(0) => diff_y_x_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^v1_reg_0\(3 downto 0),
      O(3 downto 0) => NLW_diff_y_x_carry_O_UNCONNECTED(3 downto 0),
      S(3) => integrator_y_n_61,
      S(2) => integrator_y_n_62,
      S(1) => integrator_y_n_63,
      S(0) => integrator_y_n_64
    );
\diff_y_x_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => diff_y_x_carry_n_0,
      CO(3) => \diff_y_x_carry__0_n_0\,
      CO(2) => \diff_y_x_carry__0_n_1\,
      CO(1) => \diff_y_x_carry__0_n_2\,
      CO(0) => \diff_y_x_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg_0\(7 downto 4),
      O(3 downto 0) => \NLW_diff_y_x_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => integrator_y_n_57,
      S(2) => integrator_y_n_58,
      S(1) => integrator_y_n_59,
      S(0) => integrator_y_n_60
    );
\diff_y_x_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_y_x_carry__0_n_0\,
      CO(3) => \diff_y_x_carry__1_n_0\,
      CO(2) => \diff_y_x_carry__1_n_1\,
      CO(1) => \diff_y_x_carry__1_n_2\,
      CO(0) => \diff_y_x_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg_0\(11 downto 8),
      O(3 downto 0) => \diff_y_x__0\(11 downto 8),
      S(3) => integrator_y_n_53,
      S(2) => integrator_y_n_54,
      S(1) => integrator_y_n_55,
      S(0) => integrator_y_n_56
    );
\diff_y_x_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_y_x_carry__1_n_0\,
      CO(3) => \diff_y_x_carry__2_n_0\,
      CO(2) => \diff_y_x_carry__2_n_1\,
      CO(1) => \diff_y_x_carry__2_n_2\,
      CO(0) => \diff_y_x_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg_0\(15 downto 12),
      O(3 downto 0) => \diff_y_x__0\(15 downto 12),
      S(3) => integrator_y_n_49,
      S(2) => integrator_y_n_50,
      S(1) => integrator_y_n_51,
      S(0) => integrator_y_n_52
    );
\diff_y_x_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_y_x_carry__2_n_0\,
      CO(3) => \diff_y_x_carry__3_n_0\,
      CO(2) => \diff_y_x_carry__3_n_1\,
      CO(1) => \diff_y_x_carry__3_n_2\,
      CO(0) => \diff_y_x_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg_0\(19 downto 16),
      O(3 downto 0) => \diff_y_x__0\(19 downto 16),
      S(3) => integrator_y_n_45,
      S(2) => integrator_y_n_46,
      S(1) => integrator_y_n_47,
      S(0) => integrator_y_n_48
    );
\diff_y_x_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_y_x_carry__3_n_0\,
      CO(3) => \diff_y_x_carry__4_n_0\,
      CO(2) => \diff_y_x_carry__4_n_1\,
      CO(1) => \diff_y_x_carry__4_n_2\,
      CO(0) => \diff_y_x_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^v1_reg_0\(23 downto 20),
      O(3 downto 0) => \diff_y_x__0\(23 downto 20),
      S(3) => integrator_y_n_41,
      S(2) => integrator_y_n_42,
      S(1) => integrator_y_n_43,
      S(0) => integrator_y_n_44
    );
\diff_y_x_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_y_x_carry__4_n_0\,
      CO(3 downto 2) => \NLW_diff_y_x_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_y_x_carry__5_n_2\,
      CO(0) => \diff_y_x_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^v1_reg_0\(25 downto 24),
      O(3) => \NLW_diff_y_x_carry__5_O_UNCONNECTED\(3),
      O(2 downto 1) => diff_y_x(26 downto 25),
      O(0) => \diff_y_x__0\(24),
      S(3) => '0',
      S(2) => integrator_y_n_38,
      S(1) => integrator_y_n_39,
      S(0) => integrator_y_n_40
    );
funct_y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => funct_y_carry_n_0,
      CO(2) => funct_y_carry_n_1,
      CO(1) => funct_y_carry_n_2,
      CO(0) => funct_y_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => mult_xrhoz_out(3 downto 0),
      O(3) => funct_y_carry_n_4,
      O(2) => funct_y_carry_n_5,
      O(1) => funct_y_carry_n_6,
      O(0) => funct_y_carry_n_7,
      S(3) => multiplier_y_n_52,
      S(2) => multiplier_y_n_53,
      S(1) => multiplier_y_n_54,
      S(0) => multiplier_y_n_55
    );
\funct_y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => funct_y_carry_n_0,
      CO(3) => \funct_y_carry__0_n_0\,
      CO(2) => \funct_y_carry__0_n_1\,
      CO(1) => \funct_y_carry__0_n_2\,
      CO(0) => \funct_y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_xrhoz_out(7 downto 4),
      O(3) => \funct_y_carry__0_n_4\,
      O(2) => \funct_y_carry__0_n_5\,
      O(1) => \funct_y_carry__0_n_6\,
      O(0) => \funct_y_carry__0_n_7\,
      S(3) => multiplier_y_n_48,
      S(2) => multiplier_y_n_49,
      S(1) => multiplier_y_n_50,
      S(0) => multiplier_y_n_51
    );
\funct_y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_y_carry__0_n_0\,
      CO(3) => \funct_y_carry__1_n_0\,
      CO(2) => \funct_y_carry__1_n_1\,
      CO(1) => \funct_y_carry__1_n_2\,
      CO(0) => \funct_y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_xrhoz_out(11 downto 8),
      O(3) => \funct_y_carry__1_n_4\,
      O(2) => \funct_y_carry__1_n_5\,
      O(1) => \funct_y_carry__1_n_6\,
      O(0) => \funct_y_carry__1_n_7\,
      S(3) => multiplier_y_n_44,
      S(2) => multiplier_y_n_45,
      S(1) => multiplier_y_n_46,
      S(0) => multiplier_y_n_47
    );
\funct_y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_y_carry__1_n_0\,
      CO(3) => \funct_y_carry__2_n_0\,
      CO(2) => \funct_y_carry__2_n_1\,
      CO(1) => \funct_y_carry__2_n_2\,
      CO(0) => \funct_y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_xrhoz_out(15 downto 12),
      O(3) => \funct_y_carry__2_n_4\,
      O(2) => \funct_y_carry__2_n_5\,
      O(1) => \funct_y_carry__2_n_6\,
      O(0) => \funct_y_carry__2_n_7\,
      S(3) => multiplier_y_n_40,
      S(2) => multiplier_y_n_41,
      S(1) => multiplier_y_n_42,
      S(0) => multiplier_y_n_43
    );
\funct_y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_y_carry__2_n_0\,
      CO(3) => \funct_y_carry__3_n_0\,
      CO(2) => \funct_y_carry__3_n_1\,
      CO(1) => \funct_y_carry__3_n_2\,
      CO(0) => \funct_y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_xrhoz_out(19 downto 16),
      O(3) => \funct_y_carry__3_n_4\,
      O(2) => \funct_y_carry__3_n_5\,
      O(1) => \funct_y_carry__3_n_6\,
      O(0) => \funct_y_carry__3_n_7\,
      S(3) => integrator_y_n_37,
      S(2) => multiplier_y_n_37,
      S(1) => multiplier_y_n_38,
      S(0) => multiplier_y_n_39
    );
\funct_y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_y_carry__3_n_0\,
      CO(3) => \funct_y_carry__4_n_0\,
      CO(2) => \funct_y_carry__4_n_1\,
      CO(1) => \funct_y_carry__4_n_2\,
      CO(0) => \funct_y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => mult_xrhoz_out(22 downto 20),
      DI(0) => \^v1_reg_0\(26),
      O(3) => \funct_y_carry__4_n_4\,
      O(2) => \funct_y_carry__4_n_5\,
      O(1) => \funct_y_carry__4_n_6\,
      O(0) => \funct_y_carry__4_n_7\,
      S(3) => multiplier_y_n_31,
      S(2) => multiplier_y_n_32,
      S(1) => multiplier_y_n_33,
      S(0) => integrator_y_n_36
    );
\funct_y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_y_carry__4_n_0\,
      CO(3 downto 2) => \NLW_funct_y_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \funct_y_carry__5_n_2\,
      CO(0) => \funct_y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => mult_xrhoz_out(24 downto 23),
      O(3) => \NLW_funct_y_carry__5_O_UNCONNECTED\(3),
      O(2) => \funct_y_carry__5_n_5\,
      O(1) => \funct_y_carry__5_n_6\,
      O(0) => \funct_y_carry__5_n_7\,
      S(3) => '0',
      S(2) => multiplier_y_n_34,
      S(1) => multiplier_y_n_35,
      S(0) => multiplier_y_n_36
    );
funct_z_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => funct_z_carry_n_0,
      CO(2) => funct_z_carry_n_1,
      CO(1) => funct_z_carry_n_2,
      CO(0) => funct_z_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => mult_out(23 downto 20),
      O(3) => funct_z_carry_n_4,
      O(2) => funct_z_carry_n_5,
      O(1) => funct_z_carry_n_6,
      O(0) => funct_z_carry_n_7,
      S(3) => multiplier_z1_n_55,
      S(2) => multiplier_z1_n_56,
      S(1) => multiplier_z1_n_57,
      S(0) => multiplier_z1_n_58
    );
\funct_z_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => funct_z_carry_n_0,
      CO(3) => \funct_z_carry__0_n_0\,
      CO(2) => \funct_z_carry__0_n_1\,
      CO(1) => \funct_z_carry__0_n_2\,
      CO(0) => \funct_z_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_out(27 downto 24),
      O(3) => \funct_z_carry__0_n_4\,
      O(2) => \funct_z_carry__0_n_5\,
      O(1) => \funct_z_carry__0_n_6\,
      O(0) => \funct_z_carry__0_n_7\,
      S(3) => multiplier_z1_n_51,
      S(2) => multiplier_z1_n_52,
      S(1) => multiplier_z1_n_53,
      S(0) => multiplier_z1_n_54
    );
\funct_z_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_z_carry__0_n_0\,
      CO(3) => \funct_z_carry__1_n_0\,
      CO(2) => \funct_z_carry__1_n_1\,
      CO(1) => \funct_z_carry__1_n_2\,
      CO(0) => \funct_z_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_out(31 downto 28),
      O(3) => \funct_z_carry__1_n_4\,
      O(2) => \funct_z_carry__1_n_5\,
      O(1) => \funct_z_carry__1_n_6\,
      O(0) => \funct_z_carry__1_n_7\,
      S(3) => multiplier_z1_n_47,
      S(2) => multiplier_z1_n_48,
      S(1) => multiplier_z1_n_49,
      S(0) => multiplier_z1_n_50
    );
\funct_z_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_z_carry__1_n_0\,
      CO(3) => \funct_z_carry__2_n_0\,
      CO(2) => \funct_z_carry__2_n_1\,
      CO(1) => \funct_z_carry__2_n_2\,
      CO(0) => \funct_z_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_out(35 downto 32),
      O(3) => \funct_z_carry__2_n_4\,
      O(2) => \funct_z_carry__2_n_5\,
      O(1) => \funct_z_carry__2_n_6\,
      O(0) => \funct_z_carry__2_n_7\,
      S(3) => multiplier_z1_n_43,
      S(2) => multiplier_z1_n_44,
      S(1) => multiplier_z1_n_45,
      S(0) => multiplier_z1_n_46
    );
\funct_z_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_z_carry__2_n_0\,
      CO(3) => \funct_z_carry__3_n_0\,
      CO(2) => \funct_z_carry__3_n_1\,
      CO(1) => \funct_z_carry__3_n_2\,
      CO(0) => \funct_z_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_out(39 downto 36),
      O(3) => \funct_z_carry__3_n_4\,
      O(2) => \funct_z_carry__3_n_5\,
      O(1) => \funct_z_carry__3_n_6\,
      O(0) => \funct_z_carry__3_n_7\,
      S(3) => multiplier_z1_n_39,
      S(2) => multiplier_z1_n_40,
      S(1) => multiplier_z1_n_41,
      S(0) => multiplier_z1_n_42
    );
\funct_z_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_z_carry__3_n_0\,
      CO(3) => \funct_z_carry__4_n_0\,
      CO(2) => \funct_z_carry__4_n_1\,
      CO(1) => \funct_z_carry__4_n_2\,
      CO(0) => \funct_z_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mult_out(43 downto 40),
      O(3) => \funct_z_carry__4_n_4\,
      O(2) => \funct_z_carry__4_n_5\,
      O(1) => \funct_z_carry__4_n_6\,
      O(0) => \funct_z_carry__4_n_7\,
      S(3) => multiplier_z1_n_35,
      S(2) => multiplier_z1_n_36,
      S(1) => multiplier_z1_n_37,
      S(0) => multiplier_z1_n_38
    );
\funct_z_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \funct_z_carry__4_n_0\,
      CO(3 downto 2) => \NLW_funct_z_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \funct_z_carry__5_n_2\,
      CO(0) => \funct_z_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => mult_out(45 downto 44),
      O(3) => \NLW_funct_z_carry__5_O_UNCONNECTED\(3),
      O(2) => \funct_z_carry__5_n_5\,
      O(1) => \funct_z_carry__5_n_6\,
      O(0) => \funct_z_carry__5_n_7\,
      S(3) => '0',
      S(2) => multiplier_z1_n_32,
      S(1) => multiplier_z1_n_33,
      S(0) => multiplier_z1_n_34
    );
integrator_x: entity work.design_1_lorenz_reader_0_0_integrator
     port map (
      B(3) => diff_rho_z(26),
      B(2) => diff_rho_z(20),
      B(1 downto 0) => diff_rho_z(18 downto 17),
      DI(3 downto 0) => \^v1_reg_1\(3 downto 0),
      O(3) => mult_dx_n_31,
      O(2) => mult_dx_n_32,
      O(1) => mult_dx_n_33,
      O(0) => mult_dx_n_34,
      P(16) => mult_dx_n_4,
      P(15) => mult_dx_n_5,
      P(14) => mult_dx_n_6,
      P(13) => mult_dx_n_7,
      P(12) => mult_dx_n_8,
      P(11) => mult_dx_n_9,
      P(10) => mult_dx_n_10,
      P(9) => mult_dx_n_11,
      P(8) => mult_dx_n_12,
      P(7) => mult_dx_n_13,
      P(6) => mult_dx_n_14,
      P(5) => mult_dx_n_15,
      P(4) => mult_dx_n_16,
      P(3) => mult_dx_n_17,
      P(2) => mult_dx_n_18,
      P(1) => mult_dx_n_19,
      P(0) => mult_dx_n_20,
      S(0) => integrator_x_n_46,
      \adder_out_carry__4_0\(3) => mult_dx_n_21,
      \adder_out_carry__4_0\(2) => mult_dx_n_22,
      \adder_out_carry__4_0\(1) => mult_dx_n_23,
      \adder_out_carry__4_0\(0) => mult_dx_n_24,
      \adder_out_carry__5_0\(0) => mult_dx_n_30,
      \adder_out_carry__5_1\(3) => mult_dx_n_25,
      \adder_out_carry__5_1\(2) => mult_dx_n_26,
      \adder_out_carry__5_1\(1) => mult_dx_n_27,
      \adder_out_carry__5_1\(0) => mult_dx_n_28,
      \adder_out_carry__5_2\(0) => mult_dx_n_29,
      mult_out(0) => integrator_x_n_50,
      mult_out_0(0) => integrator_x_n_51,
      \mult_out__0\ => \^solver_reset\,
      \mult_out__11_carry\(0) => \^v1_reg_0\(20),
      \mult_out__2_carry\(0) => \^v1_reg_0\(26),
      \mult_out_inferred__0/i__carry\(0) => multiplier_y_n_0,
      \mult_out_inferred__0/i__carry_0\(0) => multiplier_z1_n_0,
      \mult_out_inferred__0/i__carry_1\(1 downto 0) => \^v1_reg_0\(18 downto 17),
      s00_axi_aclk => s00_axi_aclk,
      \v1_reg[11]_0\(3 downto 0) => \^v1_reg_1\(11 downto 8),
      \v1_reg[11]_1\(3) => mult_dx_n_39,
      \v1_reg[11]_1\(2) => mult_dx_n_40,
      \v1_reg[11]_1\(1) => mult_dx_n_41,
      \v1_reg[11]_1\(0) => mult_dx_n_42,
      \v1_reg[15]_0\(3 downto 0) => \^v1_reg_1\(15 downto 12),
      \v1_reg[15]_1\(3) => mult_dx_n_43,
      \v1_reg[15]_1\(2) => mult_dx_n_44,
      \v1_reg[15]_1\(1) => mult_dx_n_45,
      \v1_reg[15]_1\(0) => mult_dx_n_46,
      \v1_reg[19]_0\(3 downto 0) => \^v1_reg_1\(19 downto 16),
      \v1_reg[19]_1\(3) => mult_dx_n_47,
      \v1_reg[19]_1\(2) => mult_dx_n_48,
      \v1_reg[19]_1\(1) => mult_dx_n_49,
      \v1_reg[19]_1\(0) => mult_dx_n_50,
      \v1_reg[23]_0\(3 downto 0) => \^v1_reg_1\(23 downto 20),
      \v1_reg[23]_1\(3) => mult_dx_n_51,
      \v1_reg[23]_1\(2) => mult_dx_n_52,
      \v1_reg[23]_1\(1) => mult_dx_n_53,
      \v1_reg[23]_1\(0) => mult_dx_n_54,
      \v1_reg[25]_0\(1 downto 0) => \^v1_reg_1\(25 downto 24),
      \v1_reg[25]_1\(0) => integrator_x_n_47,
      \v1_reg[25]_2\(0) => integrator_x_n_49,
      \v1_reg[26]_0\ => \^v1_reg_1\(26),
      \v1_reg[26]_1\(0) => integrator_x_n_48,
      \v1_reg[26]_2\(2) => mult_dx_n_55,
      \v1_reg[26]_2\(1) => mult_dx_n_56,
      \v1_reg[26]_2\(0) => mult_dx_n_57,
      \v1_reg[7]_0\(3 downto 0) => \^v1_reg_1\(7 downto 4),
      \v1_reg[7]_1\(3) => mult_dx_n_35,
      \v1_reg[7]_1\(2) => mult_dx_n_36,
      \v1_reg[7]_1\(1) => mult_dx_n_37,
      \v1_reg[7]_1\(0) => mult_dx_n_38,
      v1new(18 downto 0) => v1new(26 downto 8)
    );
integrator_y: entity work.design_1_lorenz_reader_0_0_integrator_0
     port map (
      B(9) => integrator_y_n_67,
      B(8) => integrator_y_n_68,
      B(7) => integrator_y_n_69,
      B(6) => integrator_y_n_70,
      B(5) => integrator_y_n_71,
      B(4) => integrator_y_n_72,
      B(3) => integrator_y_n_73,
      B(2) => integrator_y_n_74,
      B(1) => integrator_y_n_75,
      B(0) => integrator_y_n_76,
      CO(0) => multiplier_z1_n_1,
      DI(3 downto 0) => \^v1_reg_0\(3 downto 0),
      O(2) => multiplier_y_n_56,
      O(1) => multiplier_y_n_57,
      O(0) => multiplier_y_n_58,
      P(3) => mult_dx_n_0,
      P(2) => mult_dx_n_1,
      P(1) => mult_dx_n_2,
      P(0) => mult_dx_n_3,
      S(3) => integrator_y_n_27,
      S(2) => integrator_y_n_28,
      S(1) => integrator_y_n_29,
      S(0) => integrator_y_n_30,
      \adder_out_carry__5_0\(2) => \funct_y_carry__5_n_5\,
      \adder_out_carry__5_0\(1) => \funct_y_carry__5_n_6\,
      \adder_out_carry__5_0\(0) => \funct_y_carry__5_n_7\,
      \i__carry__3_i_2__4\(0) => multiplier_z1_n_5,
      mult_out(1) => integrator_y_n_65,
      mult_out(0) => integrator_y_n_66,
      mult_out_0(0) => integrator_y_n_103,
      mult_out_1(0) => integrator_y_n_104,
      mult_out_2(1 downto 0) => \^v1_reg_1\(25 downto 24),
      mult_out_3 => \^v1_reg_1\(26),
      mult_out_4 => \^solver_reset\,
      \mult_out__11_carry__1\(0) => integrator_y_n_102,
      \mult_out__11_carry__1_0\(2) => multiplier_z1_n_2,
      \mult_out__11_carry__1_0\(1) => multiplier_z1_n_3,
      \mult_out__11_carry__1_0\(0) => multiplier_z1_n_4,
      \mult_out_inferred__0/i__carry__2\(1 downto 0) => diff_y_x(26 downto 25),
      mult_xrhoz_out(1 downto 0) => mult_xrhoz_out(20 downto 19),
      s00_axi_aclk => s00_axi_aclk,
      \v1_reg[11]_0\(3 downto 0) => \^v1_reg_0\(11 downto 8),
      \v1_reg[11]_1\(3) => integrator_y_n_53,
      \v1_reg[11]_1\(2) => integrator_y_n_54,
      \v1_reg[11]_1\(1) => integrator_y_n_55,
      \v1_reg[11]_1\(0) => integrator_y_n_56,
      \v1_reg[11]_2\(3) => \funct_y_carry__1_n_4\,
      \v1_reg[11]_2\(2) => \funct_y_carry__1_n_5\,
      \v1_reg[11]_2\(1) => \funct_y_carry__1_n_6\,
      \v1_reg[11]_2\(0) => \funct_y_carry__1_n_7\,
      \v1_reg[15]_0\(3 downto 0) => \^v1_reg_0\(15 downto 12),
      \v1_reg[15]_1\(3) => integrator_y_n_49,
      \v1_reg[15]_1\(2) => integrator_y_n_50,
      \v1_reg[15]_1\(1) => integrator_y_n_51,
      \v1_reg[15]_1\(0) => integrator_y_n_52,
      \v1_reg[15]_2\(3) => \funct_y_carry__2_n_4\,
      \v1_reg[15]_2\(2) => \funct_y_carry__2_n_5\,
      \v1_reg[15]_2\(1) => \funct_y_carry__2_n_6\,
      \v1_reg[15]_2\(0) => \funct_y_carry__2_n_7\,
      \v1_reg[17]_0\ => integrator_y_n_31,
      \v1_reg[19]_0\(3 downto 0) => \^v1_reg_0\(19 downto 16),
      \v1_reg[19]_1\(3) => integrator_y_n_45,
      \v1_reg[19]_1\(2) => integrator_y_n_46,
      \v1_reg[19]_1\(1) => integrator_y_n_47,
      \v1_reg[19]_1\(0) => integrator_y_n_48,
      \v1_reg[19]_2\(16) => integrator_y_n_77,
      \v1_reg[19]_2\(15) => integrator_y_n_78,
      \v1_reg[19]_2\(14) => integrator_y_n_79,
      \v1_reg[19]_2\(13) => integrator_y_n_80,
      \v1_reg[19]_2\(12) => integrator_y_n_81,
      \v1_reg[19]_2\(11) => integrator_y_n_82,
      \v1_reg[19]_2\(10) => integrator_y_n_83,
      \v1_reg[19]_2\(9) => integrator_y_n_84,
      \v1_reg[19]_2\(8) => integrator_y_n_85,
      \v1_reg[19]_2\(7) => integrator_y_n_86,
      \v1_reg[19]_2\(6) => integrator_y_n_87,
      \v1_reg[19]_2\(5) => integrator_y_n_88,
      \v1_reg[19]_2\(4) => integrator_y_n_89,
      \v1_reg[19]_2\(3) => integrator_y_n_90,
      \v1_reg[19]_2\(2) => integrator_y_n_91,
      \v1_reg[19]_2\(1) => integrator_y_n_92,
      \v1_reg[19]_2\(0) => integrator_y_n_93,
      \v1_reg[19]_3\(3) => \funct_y_carry__3_n_4\,
      \v1_reg[19]_3\(2) => \funct_y_carry__3_n_5\,
      \v1_reg[19]_3\(1) => \funct_y_carry__3_n_6\,
      \v1_reg[19]_3\(0) => \funct_y_carry__3_n_7\,
      \v1_reg[20]_0\(1) => integrator_y_n_105,
      \v1_reg[20]_0\(0) => integrator_y_n_106,
      \v1_reg[22]_0\(3) => integrator_y_n_32,
      \v1_reg[22]_0\(2) => integrator_y_n_33,
      \v1_reg[22]_0\(1) => integrator_y_n_34,
      \v1_reg[22]_0\(0) => integrator_y_n_35,
      \v1_reg[22]_1\(3) => integrator_y_n_107,
      \v1_reg[22]_1\(2) => integrator_y_n_108,
      \v1_reg[22]_1\(1) => integrator_y_n_109,
      \v1_reg[22]_1\(0) => integrator_y_n_110,
      \v1_reg[22]_2\(3) => integrator_y_n_111,
      \v1_reg[22]_2\(2) => integrator_y_n_112,
      \v1_reg[22]_2\(1) => integrator_y_n_113,
      \v1_reg[22]_2\(0) => integrator_y_n_114,
      \v1_reg[23]_0\(3 downto 0) => \^v1_reg_0\(23 downto 20),
      \v1_reg[23]_1\(3) => integrator_y_n_41,
      \v1_reg[23]_1\(2) => integrator_y_n_42,
      \v1_reg[23]_1\(1) => integrator_y_n_43,
      \v1_reg[23]_1\(0) => integrator_y_n_44,
      \v1_reg[23]_2\(0) => integrator_y_n_101,
      \v1_reg[23]_3\(3) => \funct_y_carry__4_n_4\,
      \v1_reg[23]_3\(2) => \funct_y_carry__4_n_5\,
      \v1_reg[23]_3\(1) => \funct_y_carry__4_n_6\,
      \v1_reg[23]_3\(0) => \funct_y_carry__4_n_7\,
      \v1_reg[25]_0\(1 downto 0) => \^v1_reg_0\(25 downto 24),
      \v1_reg[25]_1\(3) => integrator_y_n_94,
      \v1_reg[25]_1\(2) => integrator_y_n_95,
      \v1_reg[25]_1\(1) => integrator_y_n_96,
      \v1_reg[25]_1\(0) => integrator_y_n_97,
      \v1_reg[25]_2\(0) => integrator_y_n_98,
      \v1_reg[26]_0\(0) => \^v1_reg_0\(26),
      \v1_reg[26]_1\(0) => integrator_y_n_36,
      \v1_reg[26]_2\(0) => integrator_y_n_37,
      \v1_reg[26]_3\(2) => integrator_y_n_38,
      \v1_reg[26]_3\(1) => integrator_y_n_39,
      \v1_reg[26]_3\(0) => integrator_y_n_40,
      \v1_reg[26]_4\(1) => integrator_y_n_99,
      \v1_reg[26]_4\(0) => integrator_y_n_100,
      \v1_reg[3]_0\(3) => integrator_y_n_61,
      \v1_reg[3]_0\(2) => integrator_y_n_62,
      \v1_reg[3]_0\(1) => integrator_y_n_63,
      \v1_reg[3]_0\(0) => integrator_y_n_64,
      \v1_reg[3]_1\(3) => funct_y_carry_n_4,
      \v1_reg[3]_1\(2) => funct_y_carry_n_5,
      \v1_reg[3]_1\(1) => funct_y_carry_n_6,
      \v1_reg[3]_1\(0) => funct_y_carry_n_7,
      \v1_reg[7]_0\(3 downto 0) => \^v1_reg_0\(7 downto 4),
      \v1_reg[7]_1\(3) => integrator_y_n_57,
      \v1_reg[7]_1\(2) => integrator_y_n_58,
      \v1_reg[7]_1\(1) => integrator_y_n_59,
      \v1_reg[7]_1\(0) => integrator_y_n_60,
      \v1_reg[7]_2\(3) => \funct_y_carry__0_n_4\,
      \v1_reg[7]_2\(2) => \funct_y_carry__0_n_5\,
      \v1_reg[7]_2\(1) => \funct_y_carry__0_n_6\,
      \v1_reg[7]_2\(0) => \funct_y_carry__0_n_7\,
      v1_reg_1(23 downto 0) => \^v1_reg_1\(23 downto 0)
    );
integrator_z: entity work.design_1_lorenz_reader_0_0_integrator_1
     port map (
      A(16 downto 1) => diff_rho_z(16 downto 1),
      A(0) => \^v1_reg\(0),
      CO(0) => multiplier_y_n_1,
      DI(2 downto 0) => \^v1_reg\(3 downto 1),
      O(3) => multiplier_z1_n_59,
      O(2) => multiplier_z1_n_60,
      O(1) => multiplier_z1_n_61,
      O(0) => multiplier_z1_n_62,
      P(2) => multiplier_z2_n_0,
      P(1) => multiplier_z2_n_1,
      P(0) => multiplier_z2_n_2,
      S(3) => integrator_z_n_43,
      S(2) => integrator_z_n_44,
      S(1) => integrator_z_n_45,
      S(0) => integrator_z_n_46,
      \adder_out_carry__4_0\(3) => \funct_z_carry__4_n_4\,
      \adder_out_carry__4_0\(2) => \funct_z_carry__4_n_5\,
      \adder_out_carry__4_0\(1) => \funct_z_carry__4_n_6\,
      \adder_out_carry__4_0\(0) => \funct_z_carry__4_n_7\,
      \adder_out_carry__5_0\(2) => \funct_z_carry__5_n_5\,
      \adder_out_carry__5_0\(1) => \funct_z_carry__5_n_6\,
      \adder_out_carry__5_0\(0) => \funct_z_carry__5_n_7\,
      diff_rho_z(9 downto 0) => diff_rho_z(26 downto 17),
      \i__carry__3_i_2__3\(0) => multiplier_y_n_5,
      mult_out(0) => integrator_z_n_94,
      \mult_out__11_carry\(0) => \^v1_reg_1\(25),
      \mult_out__11_carry_0\ => \^v1_reg_1\(26),
      \mult_out__11_carry__1\(0) => integrator_z_n_92,
      \mult_out__11_carry__1_0\(2) => multiplier_y_n_2,
      \mult_out__11_carry__1_0\(1) => multiplier_y_n_3,
      \mult_out__11_carry__1_0\(0) => multiplier_y_n_4,
      restart_counter_reg(10 downto 0) => restart_counter_reg(10 downto 0),
      restart_counter_reg_2_sp_1 => \^solver_reset\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \v1_reg[11]_0\(3 downto 0) => \^v1_reg\(11 downto 8),
      \v1_reg[11]_1\(3) => \funct_z_carry__1_n_4\,
      \v1_reg[11]_1\(2) => \funct_z_carry__1_n_5\,
      \v1_reg[11]_1\(1) => \funct_z_carry__1_n_6\,
      \v1_reg[11]_1\(0) => \funct_z_carry__1_n_7\,
      \v1_reg[15]_0\(3 downto 0) => \^v1_reg\(15 downto 12),
      \v1_reg[15]_1\(3) => \funct_z_carry__2_n_4\,
      \v1_reg[15]_1\(2) => \funct_z_carry__2_n_5\,
      \v1_reg[15]_1\(1) => \funct_z_carry__2_n_6\,
      \v1_reg[15]_1\(0) => \funct_z_carry__2_n_7\,
      \v1_reg[19]_0\(3 downto 0) => \^v1_reg\(19 downto 16),
      \v1_reg[19]_1\(0) => integrator_z_n_93,
      \v1_reg[19]_2\(3) => \funct_z_carry__3_n_4\,
      \v1_reg[19]_2\(2) => \funct_z_carry__3_n_5\,
      \v1_reg[19]_2\(1) => \funct_z_carry__3_n_6\,
      \v1_reg[19]_2\(0) => \funct_z_carry__3_n_7\,
      \v1_reg[23]_0\(3 downto 0) => \^v1_reg\(23 downto 20),
      \v1_reg[25]_0\(1 downto 0) => \^v1_reg\(25 downto 24),
      \v1_reg[25]_1\(1) => integrator_z_n_66,
      \v1_reg[25]_1\(0) => integrator_z_n_67,
      \v1_reg[25]_2\(16) => integrator_z_n_68,
      \v1_reg[25]_2\(15) => integrator_z_n_69,
      \v1_reg[25]_2\(14) => integrator_z_n_70,
      \v1_reg[25]_2\(13) => integrator_z_n_71,
      \v1_reg[25]_2\(12) => integrator_z_n_72,
      \v1_reg[25]_2\(11) => integrator_z_n_73,
      \v1_reg[25]_2\(10) => integrator_z_n_74,
      \v1_reg[25]_2\(9) => integrator_z_n_75,
      \v1_reg[25]_2\(8) => integrator_z_n_76,
      \v1_reg[25]_2\(7) => integrator_z_n_77,
      \v1_reg[25]_2\(6) => integrator_z_n_78,
      \v1_reg[25]_2\(5) => integrator_z_n_79,
      \v1_reg[25]_2\(4) => integrator_z_n_80,
      \v1_reg[25]_2\(3) => integrator_z_n_81,
      \v1_reg[25]_2\(2) => integrator_z_n_82,
      \v1_reg[25]_2\(1) => integrator_z_n_83,
      \v1_reg[25]_2\(0) => integrator_z_n_84,
      \v1_reg[25]_3\(1) => integrator_z_n_89,
      \v1_reg[25]_3\(0) => integrator_z_n_90,
      \v1_reg[26]_0\(0) => \^v1_reg\(26),
      \v1_reg[26]_1\ => integrator_z_n_57,
      \v1_reg[26]_10\(3) => integrator_z_n_102,
      \v1_reg[26]_10\(2) => integrator_z_n_103,
      \v1_reg[26]_10\(1) => integrator_z_n_104,
      \v1_reg[26]_10\(0) => integrator_z_n_105,
      \v1_reg[26]_11\(2) => multiplier_z1_n_63,
      \v1_reg[26]_11\(1) => multiplier_z1_n_64,
      \v1_reg[26]_11\(0) => multiplier_z1_n_65,
      \v1_reg[26]_2\(3) => integrator_z_n_58,
      \v1_reg[26]_2\(2) => integrator_z_n_59,
      \v1_reg[26]_2\(1) => integrator_z_n_60,
      \v1_reg[26]_2\(0) => integrator_z_n_61,
      \v1_reg[26]_3\(0) => integrator_z_n_62,
      \v1_reg[26]_4\(1) => integrator_z_n_63,
      \v1_reg[26]_4\(0) => integrator_z_n_64,
      \v1_reg[26]_5\(3) => integrator_z_n_85,
      \v1_reg[26]_5\(2) => integrator_z_n_86,
      \v1_reg[26]_5\(1) => integrator_z_n_87,
      \v1_reg[26]_5\(0) => integrator_z_n_88,
      \v1_reg[26]_6\(0) => integrator_z_n_91,
      \v1_reg[26]_7\(0) => integrator_z_n_95,
      \v1_reg[26]_8\(1) => integrator_z_n_96,
      \v1_reg[26]_8\(0) => integrator_z_n_97,
      \v1_reg[26]_9\(3) => integrator_z_n_98,
      \v1_reg[26]_9\(2) => integrator_z_n_99,
      \v1_reg[26]_9\(1) => integrator_z_n_100,
      \v1_reg[26]_9\(0) => integrator_z_n_101,
      \v1_reg[3]_0\(3) => funct_z_carry_n_4,
      \v1_reg[3]_0\(2) => funct_z_carry_n_5,
      \v1_reg[3]_0\(1) => funct_z_carry_n_6,
      \v1_reg[3]_0\(0) => funct_z_carry_n_7,
      \v1_reg[7]_0\(3 downto 0) => \^v1_reg\(7 downto 4),
      \v1_reg[7]_1\(3) => \funct_z_carry__0_n_4\,
      \v1_reg[7]_1\(2) => \funct_z_carry__0_n_5\,
      \v1_reg[7]_1\(1) => \funct_z_carry__0_n_6\,
      \v1_reg[7]_1\(0) => \funct_z_carry__0_n_7\
    );
mult_dx: entity work.design_1_lorenz_reader_0_0_signed_mult
     port map (
      A(16 downto 0) => \diff_y_x__0\(24 downto 8),
      DI(1) => integrator_y_n_98,
      DI(0) => diff_y_x(26),
      O(3) => mult_dx_n_31,
      O(2) => mult_dx_n_32,
      O(1) => mult_dx_n_33,
      O(0) => mult_dx_n_34,
      P(20) => mult_dx_n_0,
      P(19) => mult_dx_n_1,
      P(18) => mult_dx_n_2,
      P(17) => mult_dx_n_3,
      P(16) => mult_dx_n_4,
      P(15) => mult_dx_n_5,
      P(14) => mult_dx_n_6,
      P(13) => mult_dx_n_7,
      P(12) => mult_dx_n_8,
      P(11) => mult_dx_n_9,
      P(10) => mult_dx_n_10,
      P(9) => mult_dx_n_11,
      P(8) => mult_dx_n_12,
      P(7) => mult_dx_n_13,
      P(6) => mult_dx_n_14,
      P(5) => mult_dx_n_15,
      P(4) => mult_dx_n_16,
      P(3) => mult_dx_n_17,
      P(2) => mult_dx_n_18,
      P(1) => mult_dx_n_19,
      P(0) => mult_dx_n_20,
      \adder_out_carry__3_i_3__0\(0) => integrator_y_n_103,
      \adder_out_carry__4_i_3__0\(0) => integrator_y_n_104,
      mult_out_0(3) => mult_dx_n_21,
      mult_out_0(2) => mult_dx_n_22,
      mult_out_0(1) => mult_dx_n_23,
      mult_out_0(0) => mult_dx_n_24,
      mult_out_1(3) => mult_dx_n_25,
      mult_out_1(2) => mult_dx_n_26,
      mult_out_1(1) => mult_dx_n_27,
      mult_out_1(0) => mult_dx_n_28,
      mult_out_2(0) => mult_dx_n_29,
      mult_out_3(0) => mult_dx_n_30,
      mult_out_4(3) => mult_dx_n_35,
      mult_out_4(2) => mult_dx_n_36,
      mult_out_4(1) => mult_dx_n_37,
      mult_out_4(0) => mult_dx_n_38,
      mult_out_5(3) => mult_dx_n_39,
      mult_out_5(2) => mult_dx_n_40,
      mult_out_5(1) => mult_dx_n_41,
      mult_out_5(0) => mult_dx_n_42,
      mult_out_6(3) => mult_dx_n_43,
      mult_out_6(2) => mult_dx_n_44,
      mult_out_6(1) => mult_dx_n_45,
      mult_out_6(0) => mult_dx_n_46,
      mult_out_7(3) => mult_dx_n_47,
      mult_out_7(2) => mult_dx_n_48,
      mult_out_7(1) => mult_dx_n_49,
      mult_out_7(0) => mult_dx_n_50,
      \mult_out_inferred__0/i__carry_0\(0) => diff_y_x(25),
      \mult_out_inferred__0/i__carry__3_0\(1) => integrator_y_n_65,
      \mult_out_inferred__0/i__carry__3_0\(0) => integrator_y_n_66,
      \v1_reg[23]\(3) => mult_dx_n_51,
      \v1_reg[23]\(2) => mult_dx_n_52,
      \v1_reg[23]\(1) => mult_dx_n_53,
      \v1_reg[23]\(0) => mult_dx_n_54,
      \v1_reg[26]\(2) => mult_dx_n_55,
      \v1_reg[26]\(1) => mult_dx_n_56,
      \v1_reg[26]\(0) => mult_dx_n_57,
      \v1_reg[26]_0\ => \^solver_reset\,
      \v1_reg[26]_1\ => \^v1_reg_1\(26),
      v1_reg_1(25 downto 0) => \^v1_reg_1\(25 downto 0)
    );
multiplier_y: entity work.design_1_lorenz_reader_0_0_signed_mult_2
     port map (
      CO(0) => multiplier_y_n_1,
      DI(2) => integrator_z_n_96,
      DI(1) => integrator_z_n_97,
      DI(0) => integrator_x_n_47,
      O(2) => multiplier_y_n_56,
      O(1) => multiplier_y_n_57,
      O(0) => multiplier_y_n_58,
      S(2) => integrator_x_n_46,
      S(1) => integrator_z_n_89,
      S(0) => integrator_z_n_90,
      diff_rho_z(25 downto 0) => diff_rho_z(26 downto 1),
      \i__carry__0_i_2__2_0\(3) => integrator_z_n_58,
      \i__carry__0_i_2__2_0\(2) => integrator_z_n_59,
      \i__carry__0_i_2__2_0\(1) => integrator_z_n_60,
      \i__carry__0_i_2__2_0\(0) => integrator_z_n_61,
      \i__carry__0_i_2__2_1\(3) => integrator_z_n_98,
      \i__carry__0_i_2__2_1\(2) => integrator_z_n_99,
      \i__carry__0_i_2__2_1\(1) => integrator_z_n_100,
      \i__carry__0_i_2__2_1\(0) => integrator_z_n_101,
      \i__carry__1_i_2__2_0\(3) => integrator_z_n_85,
      \i__carry__1_i_2__2_0\(2) => integrator_z_n_86,
      \i__carry__1_i_2__2_0\(1) => integrator_z_n_87,
      \i__carry__1_i_2__2_0\(0) => integrator_z_n_88,
      \i__carry__1_i_2__2_1\(3) => integrator_z_n_102,
      \i__carry__1_i_2__2_1\(2) => integrator_z_n_103,
      \i__carry__1_i_2__2_1\(1) => integrator_z_n_104,
      \i__carry__1_i_2__2_1\(0) => integrator_z_n_105,
      \i__carry__3_i_2__1_0\(0) => integrator_x_n_50,
      \i__carry_i_2__2_0\(3) => integrator_z_n_43,
      \i__carry_i_2__2_0\(2) => integrator_z_n_44,
      \i__carry_i_2__2_0\(1) => integrator_z_n_45,
      \i__carry_i_2__2_0\(0) => integrator_z_n_46,
      mult_out_0(0) => multiplier_y_n_0,
      \mult_out__11_carry__0_i_5\ => integrator_z_n_57,
      \mult_out__1_0\(24 downto 0) => mult_xrhoz_out(24 downto 0),
      \mult_out__1_1\(2) => multiplier_y_n_31,
      \mult_out__1_1\(1) => multiplier_y_n_32,
      \mult_out__1_1\(0) => multiplier_y_n_33,
      \mult_out__1_2\(2) => multiplier_y_n_34,
      \mult_out__1_2\(1) => multiplier_y_n_35,
      \mult_out__1_2\(0) => multiplier_y_n_36,
      \mult_out_inferred__0/i__carry_0\(0) => \^v1_reg_1\(25),
      \mult_out_inferred__0/i__carry__3_0\(0) => integrator_z_n_92,
      s00_axi_aclk => s00_axi_aclk,
      v1_reg(0) => \^v1_reg\(0),
      \v1_reg[11]\(3) => multiplier_y_n_52,
      \v1_reg[11]\(2) => multiplier_y_n_53,
      \v1_reg[11]\(1) => multiplier_y_n_54,
      \v1_reg[11]\(0) => multiplier_y_n_55,
      \v1_reg[15]\(3) => multiplier_y_n_48,
      \v1_reg[15]\(2) => multiplier_y_n_49,
      \v1_reg[15]\(1) => multiplier_y_n_50,
      \v1_reg[15]\(0) => multiplier_y_n_51,
      \v1_reg[19]\(3) => multiplier_y_n_44,
      \v1_reg[19]\(2) => multiplier_y_n_45,
      \v1_reg[19]\(1) => multiplier_y_n_46,
      \v1_reg[19]\(0) => multiplier_y_n_47,
      \v1_reg[23]\(3) => multiplier_y_n_40,
      \v1_reg[23]\(2) => multiplier_y_n_41,
      \v1_reg[23]\(1) => multiplier_y_n_42,
      \v1_reg[23]\(0) => multiplier_y_n_43,
      \v1_reg[26]\(2) => multiplier_y_n_2,
      \v1_reg[26]\(1) => multiplier_y_n_3,
      \v1_reg[26]\(0) => multiplier_y_n_4,
      \v1_reg[26]_0\(0) => multiplier_y_n_5,
      \v1_reg[26]_1\(2) => multiplier_y_n_37,
      \v1_reg[26]_1\(1) => multiplier_y_n_38,
      \v1_reg[26]_1\(0) => multiplier_y_n_39,
      \v1_reg[26]_2\(0) => \^v1_reg_0\(26),
      \v1_reg[26]_3\(1 downto 0) => \^v1_reg_0\(25 downto 24),
      \v1_reg[26]_4\(2) => \funct_y_carry__5_n_5\,
      \v1_reg[26]_4\(1) => \funct_y_carry__5_n_6\,
      \v1_reg[26]_4\(0) => \funct_y_carry__5_n_7\,
      \v1_reg[26]_5\ => \^solver_reset\,
      \v1_reg[26]_6\(0) => integrator_y_n_101,
      v1_reg_0(15 downto 0) => \^v1_reg_0\(23 downto 8),
      v1new(18 downto 0) => v1new(26 downto 8)
    );
multiplier_z1: entity work.design_1_lorenz_reader_0_0_signed_mult_3
     port map (
      B(9) => integrator_y_n_67,
      B(8) => integrator_y_n_68,
      B(7) => integrator_y_n_69,
      B(6) => integrator_y_n_70,
      B(5) => integrator_y_n_71,
      B(4) => integrator_y_n_72,
      B(3) => integrator_y_n_73,
      B(2) => integrator_y_n_74,
      B(1) => integrator_y_n_75,
      B(0) => integrator_y_n_76,
      CO(0) => multiplier_z1_n_1,
      DI(2) => integrator_y_n_105,
      DI(1) => integrator_y_n_106,
      DI(0) => integrator_x_n_49,
      O(1) => multiplier_z2_n_27,
      O(0) => multiplier_z2_n_28,
      S(2) => integrator_x_n_48,
      S(1) => integrator_y_n_99,
      S(0) => integrator_y_n_100,
      funct_z_carry(3) => multiplier_z2_n_3,
      funct_z_carry(2) => multiplier_z2_n_4,
      funct_z_carry(1) => multiplier_z2_n_5,
      funct_z_carry(0) => multiplier_z2_n_6,
      \funct_z_carry__0\(3) => multiplier_z2_n_7,
      \funct_z_carry__0\(2) => multiplier_z2_n_8,
      \funct_z_carry__0\(1) => multiplier_z2_n_9,
      \funct_z_carry__0\(0) => multiplier_z2_n_10,
      \funct_z_carry__1\(3) => multiplier_z2_n_11,
      \funct_z_carry__1\(2) => multiplier_z2_n_12,
      \funct_z_carry__1\(1) => multiplier_z2_n_13,
      \funct_z_carry__1\(0) => multiplier_z2_n_14,
      \funct_z_carry__2\(3) => multiplier_z2_n_15,
      \funct_z_carry__2\(2) => multiplier_z2_n_16,
      \funct_z_carry__2\(1) => multiplier_z2_n_17,
      \funct_z_carry__2\(0) => multiplier_z2_n_18,
      \funct_z_carry__3\(3) => multiplier_z2_n_19,
      \funct_z_carry__3\(2) => multiplier_z2_n_20,
      \funct_z_carry__3\(1) => multiplier_z2_n_21,
      \funct_z_carry__3\(0) => multiplier_z2_n_22,
      \funct_z_carry__4\(3) => multiplier_z2_n_23,
      \funct_z_carry__4\(2) => multiplier_z2_n_24,
      \funct_z_carry__4\(1) => multiplier_z2_n_25,
      \funct_z_carry__4\(0) => multiplier_z2_n_26,
      \funct_z_carry__5\(0) => multiplier_z2_n_29,
      \i__carry__0_i_2__4_0\(3) => integrator_y_n_32,
      \i__carry__0_i_2__4_0\(2) => integrator_y_n_33,
      \i__carry__0_i_2__4_0\(1) => integrator_y_n_34,
      \i__carry__0_i_2__4_0\(0) => integrator_y_n_35,
      \i__carry__0_i_2__4_1\(3) => integrator_y_n_107,
      \i__carry__0_i_2__4_1\(2) => integrator_y_n_108,
      \i__carry__0_i_2__4_1\(1) => integrator_y_n_109,
      \i__carry__0_i_2__4_1\(0) => integrator_y_n_110,
      \i__carry__1_i_2__4_0\(3) => integrator_y_n_94,
      \i__carry__1_i_2__4_0\(2) => integrator_y_n_95,
      \i__carry__1_i_2__4_0\(1) => integrator_y_n_96,
      \i__carry__1_i_2__4_0\(0) => integrator_y_n_97,
      \i__carry__1_i_2__4_1\(3) => integrator_y_n_111,
      \i__carry__1_i_2__4_1\(2) => integrator_y_n_112,
      \i__carry__1_i_2__4_1\(1) => integrator_y_n_113,
      \i__carry__1_i_2__4_1\(0) => integrator_y_n_114,
      \i__carry__3_i_2__2_0\(0) => integrator_x_n_51,
      \i__carry_i_2__4_0\(3) => integrator_y_n_27,
      \i__carry_i_2__4_0\(2) => integrator_y_n_28,
      \i__carry_i_2__4_0\(1) => integrator_y_n_29,
      \i__carry_i_2__4_0\(0) => integrator_y_n_30,
      mult_out_0(0) => multiplier_z1_n_0,
      mult_out_1(16) => integrator_y_n_77,
      mult_out_1(15) => integrator_y_n_78,
      mult_out_1(14) => integrator_y_n_79,
      mult_out_1(13) => integrator_y_n_80,
      mult_out_1(12) => integrator_y_n_81,
      mult_out_1(11) => integrator_y_n_82,
      mult_out_1(10) => integrator_y_n_83,
      mult_out_1(9) => integrator_y_n_84,
      mult_out_1(8) => integrator_y_n_85,
      mult_out_1(7) => integrator_y_n_86,
      mult_out_1(6) => integrator_y_n_87,
      mult_out_1(5) => integrator_y_n_88,
      mult_out_1(4) => integrator_y_n_89,
      mult_out_1(3) => integrator_y_n_90,
      mult_out_1(2) => integrator_y_n_91,
      mult_out_1(1) => integrator_y_n_92,
      mult_out_1(0) => integrator_y_n_93,
      \mult_out__11_carry__0_i_5__0\ => integrator_y_n_31,
      \mult_out__1_0\(25 downto 0) => mult_out(45 downto 20),
      \mult_out__1_1\(2) => multiplier_z1_n_32,
      \mult_out__1_1\(1) => multiplier_z1_n_33,
      \mult_out__1_1\(0) => multiplier_z1_n_34,
      \mult_out__1_2\(3) => multiplier_z1_n_35,
      \mult_out__1_2\(2) => multiplier_z1_n_36,
      \mult_out__1_2\(1) => multiplier_z1_n_37,
      \mult_out__1_2\(0) => multiplier_z1_n_38,
      \mult_out__1_3\(3) => multiplier_z1_n_39,
      \mult_out__1_3\(2) => multiplier_z1_n_40,
      \mult_out__1_3\(1) => multiplier_z1_n_41,
      \mult_out__1_3\(0) => multiplier_z1_n_42,
      \mult_out__1_4\(3) => multiplier_z1_n_43,
      \mult_out__1_4\(2) => multiplier_z1_n_44,
      \mult_out__1_4\(1) => multiplier_z1_n_45,
      \mult_out__1_4\(0) => multiplier_z1_n_46,
      \mult_out__1_5\(3) => multiplier_z1_n_47,
      \mult_out__1_5\(2) => multiplier_z1_n_48,
      \mult_out__1_5\(1) => multiplier_z1_n_49,
      \mult_out__1_5\(0) => multiplier_z1_n_50,
      \mult_out__1_6\(3) => multiplier_z1_n_51,
      \mult_out__1_6\(2) => multiplier_z1_n_52,
      \mult_out__1_6\(1) => multiplier_z1_n_53,
      \mult_out__1_6\(0) => multiplier_z1_n_54,
      \mult_out__1_7\(3) => multiplier_z1_n_55,
      \mult_out__1_7\(2) => multiplier_z1_n_56,
      \mult_out__1_7\(1) => multiplier_z1_n_57,
      \mult_out__1_7\(0) => multiplier_z1_n_58,
      \mult_out_inferred__0/i__carry_0\(0) => \^v1_reg_0\(17),
      \mult_out_inferred__0/i__carry_1\(0) => \^v1_reg_1\(25),
      \mult_out_inferred__0/i__carry__3_0\(0) => integrator_y_n_102,
      s00_axi_aclk => s00_axi_aclk,
      v1_reg(5 downto 0) => \^v1_reg\(25 downto 20),
      \v1_reg[17]\(2) => multiplier_z1_n_2,
      \v1_reg[17]\(1) => multiplier_z1_n_3,
      \v1_reg[17]\(0) => multiplier_z1_n_4,
      \v1_reg[23]\(3) => multiplier_z1_n_59,
      \v1_reg[23]\(2) => multiplier_z1_n_60,
      \v1_reg[23]\(1) => multiplier_z1_n_61,
      \v1_reg[23]\(0) => multiplier_z1_n_62,
      \v1_reg[23]_0\(3) => \funct_z_carry__4_n_4\,
      \v1_reg[23]_0\(2) => \funct_z_carry__4_n_5\,
      \v1_reg[23]_0\(1) => \funct_z_carry__4_n_6\,
      \v1_reg[23]_0\(0) => \funct_z_carry__4_n_7\,
      \v1_reg[23]_1\(0) => integrator_z_n_93,
      \v1_reg[25]\(0) => multiplier_z1_n_5,
      \v1_reg[26]\(2) => multiplier_z1_n_63,
      \v1_reg[26]\(1) => multiplier_z1_n_64,
      \v1_reg[26]\(0) => multiplier_z1_n_65,
      \v1_reg[26]_0\(2) => \funct_z_carry__5_n_5\,
      \v1_reg[26]_0\(1) => \funct_z_carry__5_n_6\,
      \v1_reg[26]_0\(0) => \funct_z_carry__5_n_7\,
      \v1_reg[26]_1\(0) => \^v1_reg\(26),
      \v1_reg[26]_2\ => \^solver_reset\,
      v1new(18 downto 0) => v1new(26 downto 8)
    );
multiplier_z2: entity work.design_1_lorenz_reader_0_0_signed_mult_4
     port map (
      O(1) => multiplier_z2_n_27,
      O(0) => multiplier_z2_n_28,
      P(2) => multiplier_z2_n_0,
      P(1) => multiplier_z2_n_1,
      P(0) => multiplier_z2_n_2,
      \i__carry__3_i_2__0_0\(0) => integrator_z_n_94,
      \i__carry__6_i_2_0\(0) => \^v1_reg\(26),
      \i__carry__6_i_2_1\(0) => integrator_z_n_95,
      \i__carry__7_i_2_0\(0) => integrator_z_n_91,
      \i__carry__7_i_2_1\(0) => integrator_z_n_62,
      \i__carry_i_1_0\(1) => integrator_z_n_63,
      \i__carry_i_1_0\(0) => integrator_z_n_64,
      mult_out_0(1) => integrator_z_n_66,
      mult_out_0(0) => integrator_z_n_67,
      \mult_out__0_0\(16) => integrator_z_n_68,
      \mult_out__0_0\(15) => integrator_z_n_69,
      \mult_out__0_0\(14) => integrator_z_n_70,
      \mult_out__0_0\(13) => integrator_z_n_71,
      \mult_out__0_0\(12) => integrator_z_n_72,
      \mult_out__0_0\(11) => integrator_z_n_73,
      \mult_out__0_0\(10) => integrator_z_n_74,
      \mult_out__0_0\(9) => integrator_z_n_75,
      \mult_out__0_0\(8) => integrator_z_n_76,
      \mult_out__0_0\(7) => integrator_z_n_77,
      \mult_out__0_0\(6) => integrator_z_n_78,
      \mult_out__0_0\(5) => integrator_z_n_79,
      \mult_out__0_0\(4) => integrator_z_n_80,
      \mult_out__0_0\(3) => integrator_z_n_81,
      \mult_out__0_0\(2) => integrator_z_n_82,
      \mult_out__0_0\(1) => integrator_z_n_83,
      \mult_out__0_0\(0) => integrator_z_n_84,
      \mult_out__1_0\(3) => multiplier_z2_n_3,
      \mult_out__1_0\(2) => multiplier_z2_n_4,
      \mult_out__1_0\(1) => multiplier_z2_n_5,
      \mult_out__1_0\(0) => multiplier_z2_n_6,
      \mult_out__1_1\(3) => multiplier_z2_n_7,
      \mult_out__1_1\(2) => multiplier_z2_n_8,
      \mult_out__1_1\(1) => multiplier_z2_n_9,
      \mult_out__1_1\(0) => multiplier_z2_n_10,
      \mult_out__1_2\(3) => multiplier_z2_n_11,
      \mult_out__1_2\(2) => multiplier_z2_n_12,
      \mult_out__1_2\(1) => multiplier_z2_n_13,
      \mult_out__1_2\(0) => multiplier_z2_n_14,
      \mult_out__1_3\(3) => multiplier_z2_n_15,
      \mult_out__1_3\(2) => multiplier_z2_n_16,
      \mult_out__1_3\(1) => multiplier_z2_n_17,
      \mult_out__1_3\(0) => multiplier_z2_n_18,
      \mult_out__1_4\(3) => multiplier_z2_n_19,
      \mult_out__1_4\(2) => multiplier_z2_n_20,
      \mult_out__1_4\(1) => multiplier_z2_n_21,
      \mult_out__1_4\(0) => multiplier_z2_n_22,
      \mult_out__1_5\(3) => multiplier_z2_n_23,
      \mult_out__1_5\(2) => multiplier_z2_n_24,
      \mult_out__1_5\(1) => multiplier_z2_n_25,
      \mult_out__1_5\(0) => multiplier_z2_n_26,
      \mult_out__1_6\(0) => multiplier_z2_n_29,
      s00_axi_aclk => s00_axi_aclk,
      v1_reg(0) => \^v1_reg\(25)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0_lorenz_reader is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lorenz_reader_0_0_lorenz_reader : entity is "lorenz_reader";
end design_1_lorenz_reader_0_0_lorenz_reader;

architecture STRUCTURE of design_1_lorenz_reader_0_0_lorenz_reader is
  signal \integrator_x/v1_reg\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \integrator_y/v1_reg\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \integrator_z/v1_reg\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \restart_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal restart_counter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \restart_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \restart_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \restart_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \restart_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \restart_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \restart_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \restart_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \restart_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal solver_reset : STD_LOGIC;
  signal \NLW_restart_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_restart_counter_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
lorenz_reader_slave_lite_v1_0_S00_AXI_inst: entity work.design_1_lorenz_reader_0_0_lorenz_reader_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      v1_reg(26 downto 0) => \integrator_z/v1_reg\(26 downto 0),
      v1_reg_0(26 downto 0) => \integrator_y/v1_reg\(26 downto 0),
      v1_reg_1(26 downto 0) => \integrator_x/v1_reg\(26 downto 0)
    );
\restart_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => restart_counter_reg(0),
      O => \restart_counter[0]_i_5_n_0\
    );
\restart_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[0]_i_2_n_7\,
      Q => restart_counter_reg(0),
      R => solver_reset
    );
\restart_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \restart_counter_reg[0]_i_2_n_0\,
      CO(2) => \restart_counter_reg[0]_i_2_n_1\,
      CO(1) => \restart_counter_reg[0]_i_2_n_2\,
      CO(0) => \restart_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \restart_counter_reg[0]_i_2_n_4\,
      O(2) => \restart_counter_reg[0]_i_2_n_5\,
      O(1) => \restart_counter_reg[0]_i_2_n_6\,
      O(0) => \restart_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => restart_counter_reg(3 downto 1),
      S(0) => \restart_counter[0]_i_5_n_0\
    );
\restart_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[8]_i_1_n_5\,
      Q => restart_counter_reg(10),
      R => solver_reset
    );
\restart_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[0]_i_2_n_6\,
      Q => restart_counter_reg(1),
      R => solver_reset
    );
\restart_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[0]_i_2_n_5\,
      Q => restart_counter_reg(2),
      R => solver_reset
    );
\restart_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[0]_i_2_n_4\,
      Q => restart_counter_reg(3),
      R => solver_reset
    );
\restart_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[4]_i_1_n_7\,
      Q => restart_counter_reg(4),
      R => solver_reset
    );
\restart_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \restart_counter_reg[0]_i_2_n_0\,
      CO(3) => \restart_counter_reg[4]_i_1_n_0\,
      CO(2) => \restart_counter_reg[4]_i_1_n_1\,
      CO(1) => \restart_counter_reg[4]_i_1_n_2\,
      CO(0) => \restart_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \restart_counter_reg[4]_i_1_n_4\,
      O(2) => \restart_counter_reg[4]_i_1_n_5\,
      O(1) => \restart_counter_reg[4]_i_1_n_6\,
      O(0) => \restart_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => restart_counter_reg(7 downto 4)
    );
\restart_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[4]_i_1_n_6\,
      Q => restart_counter_reg(5),
      R => solver_reset
    );
\restart_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[4]_i_1_n_5\,
      Q => restart_counter_reg(6),
      R => solver_reset
    );
\restart_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[4]_i_1_n_4\,
      Q => restart_counter_reg(7),
      R => solver_reset
    );
\restart_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[8]_i_1_n_7\,
      Q => restart_counter_reg(8),
      R => solver_reset
    );
\restart_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \restart_counter_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_restart_counter_reg[8]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \restart_counter_reg[8]_i_1_n_2\,
      CO(0) => \restart_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_restart_counter_reg[8]_i_1_O_UNCONNECTED\(3),
      O(2) => \restart_counter_reg[8]_i_1_n_5\,
      O(1) => \restart_counter_reg[8]_i_1_n_6\,
      O(0) => \restart_counter_reg[8]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => restart_counter_reg(10 downto 8)
    );
\restart_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \restart_counter_reg[8]_i_1_n_6\,
      Q => restart_counter_reg(9),
      R => solver_reset
    );
solver_i: entity work.design_1_lorenz_reader_0_0_solver
     port map (
      restart_counter_reg(10 downto 0) => restart_counter_reg(10 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      solver_reset => solver_reset,
      v1_reg(26 downto 0) => \integrator_z/v1_reg\(26 downto 0),
      v1_reg_0(26 downto 0) => \integrator_y/v1_reg\(26 downto 0),
      v1_reg_1(26 downto 0) => \integrator_x/v1_reg\(26 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lorenz_reader_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_lorenz_reader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_lorenz_reader_0_0 : entity is "design_1_lorenz_reader_0_0,lorenz_reader,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_lorenz_reader_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_lorenz_reader_0_0 : entity is "lorenz_reader,Vivado 2024.1";
end design_1_lorenz_reader_0_0;

architecture STRUCTURE of design_1_lorenz_reader_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_lorenz_reader_0_0_lorenz_reader
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
