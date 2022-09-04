-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/20/2022 18:26:07"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	data_package_transmission IS
    PORT (
	clk : IN std_logic;
	resetn : IN std_logic;
	seqdec : OUT std_logic_vector(0 TO 7);
	valid_out : OUT std_logic
	);
END data_package_transmission;

-- Design Ports Information
-- seqdec[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[1]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seqdec[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valid_out	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF data_package_transmission IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_seqdec : std_logic_vector(0 TO 7);
SIGNAL ww_valid_out : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \det_dec|seq_cod[7]~0_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[2]~2_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[6]~4_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[3]~6_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[4]~8_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[0]~12_combout\ : std_logic;
SIGNAL \gen_cod|count_package[1]~1_combout\ : std_logic;
SIGNAL \det_dec|y.B_0~regout\ : std_logic;
SIGNAL \det_dec|y.A_0~regout\ : std_logic;
SIGNAL \det_dec|y~23_combout\ : std_logic;
SIGNAL \det_dec|Selector2~1_combout\ : std_logic;
SIGNAL \det_dec|y.A_0~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \gen_cod|count_bit_tr~3_combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \gen_cod|Add0~0_combout\ : std_logic;
SIGNAL \gen_cod|count_bit_tr~0_combout\ : std_logic;
SIGNAL \gen_cod|Equal1~0_combout\ : std_logic;
SIGNAL \gen_cod|Equal1~1_combout\ : std_logic;
SIGNAL \gen_cod|count_bit~3_combout\ : std_logic;
SIGNAL \gen_cod|count_bit~2_combout\ : std_logic;
SIGNAL \gen_cod|count_bit~1_combout\ : std_logic;
SIGNAL \gen_cod|Add1~0_combout\ : std_logic;
SIGNAL \gen_cod|count_bit~0_combout\ : std_logic;
SIGNAL \gen_cod|Equal0~0_combout\ : std_logic;
SIGNAL \gen_cod|count_bit_tr~1_combout\ : std_logic;
SIGNAL \gen_cod|Add0~1_combout\ : std_logic;
SIGNAL \gen_cod|count_bit_tr~2_combout\ : std_logic;
SIGNAL \gen_cod|count_package[0]~0_combout\ : std_logic;
SIGNAL \gen_cod|header_in[1]~feeder_combout\ : std_logic;
SIGNAL \gen_cod|Mux0~1_combout\ : std_logic;
SIGNAL \gen_cod|Mux0~0_combout\ : std_logic;
SIGNAL \gen_cod|Mux0~2_combout\ : std_logic;
SIGNAL \gen_cod|Mux0~3_combout\ : std_logic;
SIGNAL \gen_cod|Mux0~4_combout\ : std_logic;
SIGNAL \resetn~clkctrl_outclk\ : std_logic;
SIGNAL \gen_cod|seq~regout\ : std_logic;
SIGNAL \det_dec|Selector5~0_combout\ : std_logic;
SIGNAL \det_dec|y.D_2~regout\ : std_logic;
SIGNAL \det_dec|y~21_combout\ : std_logic;
SIGNAL \det_dec|y.E_2~regout\ : std_logic;
SIGNAL \det_dec|WideOr0~0_combout\ : std_logic;
SIGNAL \det_dec|y.C_0~regout\ : std_logic;
SIGNAL \det_dec|WideOr1~0_combout\ : std_logic;
SIGNAL \det_dec|y.D_0~regout\ : std_logic;
SIGNAL \det_dec|y~18_combout\ : std_logic;
SIGNAL \det_dec|y.F_2~regout\ : std_logic;
SIGNAL \det_dec|Selector2~2_combout\ : std_logic;
SIGNAL \det_dec|y.B_1~regout\ : std_logic;
SIGNAL \det_dec|WideOr3~0_combout\ : std_logic;
SIGNAL \det_dec|y.C_1~regout\ : std_logic;
SIGNAL \det_dec|Selector4~0_combout\ : std_logic;
SIGNAL \det_dec|y.D_1~regout\ : std_logic;
SIGNAL \det_dec|y~22_combout\ : std_logic;
SIGNAL \det_dec|y.E_1~regout\ : std_logic;
SIGNAL \det_dec|y~19_combout\ : std_logic;
SIGNAL \det_dec|y.F_1~regout\ : std_logic;
SIGNAL \det_dec|y~20_combout\ : std_logic;
SIGNAL \det_dec|y.E_0~regout\ : std_logic;
SIGNAL \det_dec|y~17_combout\ : std_logic;
SIGNAL \det_dec|y.F_0~regout\ : std_logic;
SIGNAL \det_dec|Selector2~0_combout\ : std_logic;
SIGNAL \det_dec|count[3]~0_combout\ : std_logic;
SIGNAL \det_dec|count_bit~1_combout\ : std_logic;
SIGNAL \det_dec|count_bit~0_combout\ : std_logic;
SIGNAL \det_dec|Add0~0_combout\ : std_logic;
SIGNAL \det_dec|Add0~1_combout\ : std_logic;
SIGNAL \det_dec|count_bit~3_combout\ : std_logic;
SIGNAL \det_dec|Equal1~0_combout\ : std_logic;
SIGNAL \det_dec|count[1]~1_combout\ : std_logic;
SIGNAL \det_dec|count[2]~2_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[7]~1_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[2]~3_combout\ : std_logic;
SIGNAL \det_dec|seqdec~0_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[3]~7_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[6]~5_combout\ : std_logic;
SIGNAL \det_dec|seqdec~1_combout\ : std_logic;
SIGNAL \det_dec|count[0]~3_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[5]~10_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[5]~11_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[4]~9_combout\ : std_logic;
SIGNAL \det_dec|seqdec~2_combout\ : std_logic;
SIGNAL \det_dec|seqdec~3_combout\ : std_logic;
SIGNAL \det_dec|seqdec~4_combout\ : std_logic;
SIGNAL \det_dec|seqdec~5_combout\ : std_logic;
SIGNAL \det_dec|seqdec[1]~feeder_combout\ : std_logic;
SIGNAL \det_dec|comb~0_combout\ : std_logic;
SIGNAL \det_dec|seq_cod[0]~13_combout\ : std_logic;
SIGNAL \det_dec|seqdec~6_combout\ : std_logic;
SIGNAL \det_dec|count_bit~2_combout\ : std_logic;
SIGNAL \det_dec|Add0~2_combout\ : std_logic;
SIGNAL \det_dec|Equal0~0_combout\ : std_logic;
SIGNAL \det_dec|valid_out~regout\ : std_logic;
SIGNAL \gen_cod|header_in\ : std_logic_vector(0 TO 1);
SIGNAL \gen_cod|count_package\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \gen_cod|count_bit_tr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_cod|count_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \det_dec|seqdec\ : std_logic_vector(0 TO 7);
SIGNAL \det_dec|seq_cod\ : std_logic_vector(0 TO 7);
SIGNAL \det_dec|header\ : std_logic_vector(0 TO 4);
SIGNAL \det_dec|count_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_resetn~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \gen_cod|ALT_INV_seq~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_resetn <= resetn;
seqdec <= ww_seqdec;
valid_out <= ww_valid_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~combout\);
\ALT_INV_resetn~clkctrl_outclk\ <= NOT \resetn~clkctrl_outclk\;
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;
\gen_cod|ALT_INV_seq~regout\ <= NOT \gen_cod|seq~regout\;

-- Location: LCCOMB_X19_Y25_N4
\det_dec|seq_cod[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[7]~0_combout\ = (\det_dec|count[0]~3_combout\ & (\det_dec|seq_cod\(7))) # (!\det_dec|count[0]~3_combout\ & ((\gen_cod|seq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod\(7),
	datac => \gen_cod|seq~regout\,
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[7]~0_combout\);

-- Location: LCCOMB_X19_Y25_N2
\det_dec|seq_cod[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[2]~2_combout\ = (\det_dec|count[0]~3_combout\ & ((\gen_cod|seq~regout\))) # (!\det_dec|count[0]~3_combout\ & (\det_dec|seq_cod\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|seq_cod\(2),
	datac => \gen_cod|seq~regout\,
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N8
\det_dec|seq_cod[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[6]~4_combout\ = (\det_dec|count[0]~3_combout\ & ((\gen_cod|seq~regout\))) # (!\det_dec|count[0]~3_combout\ & (\det_dec|seq_cod\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod\(6),
	datac => \gen_cod|seq~regout\,
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[6]~4_combout\);

-- Location: LCCOMB_X19_Y25_N18
\det_dec|seq_cod[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[3]~6_combout\ = (\det_dec|count[0]~3_combout\ & (\det_dec|seq_cod\(3))) # (!\det_dec|count[0]~3_combout\ & ((\gen_cod|seq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|seq_cod\(3),
	datac => \gen_cod|seq~regout\,
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[3]~6_combout\);

-- Location: LCCOMB_X20_Y25_N6
\det_dec|seq_cod[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[4]~8_combout\ = (\det_dec|count[0]~3_combout\ & (\gen_cod|seq~regout\)) # (!\det_dec|count[0]~3_combout\ & ((\det_dec|seq_cod\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datab => \det_dec|seq_cod\(4),
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[4]~8_combout\);

-- Location: LCCOMB_X20_Y25_N30
\det_dec|seq_cod[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[0]~12_combout\ = (\det_dec|count[0]~3_combout\ & (\gen_cod|seq~regout\)) # (!\det_dec|count[0]~3_combout\ & ((\det_dec|seq_cod\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datac => \det_dec|seq_cod\(0),
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[0]~12_combout\);

-- Location: LCFF_X22_Y25_N17
\gen_cod|header_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gen_cod|count_package\(1),
	sload => VCC,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|header_in\(0));

-- Location: LCFF_X22_Y25_N9
\gen_cod|count_package[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_package[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_package\(1));

-- Location: LCCOMB_X22_Y25_N8
\gen_cod|count_package[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_package[1]~1_combout\ = \gen_cod|count_package\(1) $ (((\resetn~combout\ & (\gen_cod|count_package\(0) & \gen_cod|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datab => \gen_cod|count_package\(0),
	datac => \gen_cod|count_package\(1),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_package[1]~1_combout\);

-- Location: LCFF_X21_Y25_N13
\det_dec|y.B_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y~23_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.B_0~regout\);

-- Location: LCFF_X21_Y25_N5
\det_dec|y.A_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y.A_0~feeder_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.A_0~regout\);

-- Location: LCCOMB_X21_Y25_N12
\det_dec|y~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~23_combout\ = (!\det_dec|y.A_0~regout\ & \gen_cod|seq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|y.A_0~regout\,
	datad => \gen_cod|seq~regout\,
	combout => \det_dec|y~23_combout\);

-- Location: LCCOMB_X21_Y25_N10
\det_dec|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Selector2~1_combout\ = (!\det_dec|y.F_1~regout\ & (!\gen_cod|seq~regout\ & (!\det_dec|y.F_0~regout\ & !\det_dec|y.E_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_1~regout\,
	datab => \gen_cod|seq~regout\,
	datac => \det_dec|y.F_0~regout\,
	datad => \det_dec|y.E_2~regout\,
	combout => \det_dec|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y25_N4
\det_dec|y.A_0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y.A_0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \det_dec|y.A_0~feeder_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y25_N20
\gen_cod|count_bit_tr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit_tr~3_combout\ = (\gen_cod|count_bit_tr\(1) & (\gen_cod|Equal0~0_combout\ $ ((!\gen_cod|count_bit_tr\(0))))) # (!\gen_cod|count_bit_tr\(1) & (!\gen_cod|Equal1~0_combout\ & (\gen_cod|Equal0~0_combout\ $ (!\gen_cod|count_bit_tr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|Equal0~0_combout\,
	datab => \gen_cod|count_bit_tr\(1),
	datac => \gen_cod|count_bit_tr\(0),
	datad => \gen_cod|Equal1~0_combout\,
	combout => \gen_cod|count_bit_tr~3_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: LCFF_X22_Y25_N21
\gen_cod|count_bit_tr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit_tr~3_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit_tr\(0));

-- Location: LCCOMB_X22_Y25_N2
\gen_cod|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Add0~0_combout\ = (\gen_cod|count_bit_tr\(1) & \gen_cod|count_bit_tr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_cod|count_bit_tr\(1),
	datac => \gen_cod|count_bit_tr\(0),
	combout => \gen_cod|Add0~0_combout\);

-- Location: LCCOMB_X22_Y25_N28
\gen_cod|count_bit_tr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit_tr~0_combout\ = (!\gen_cod|Equal1~1_combout\ & (\gen_cod|count_bit_tr\(2) $ (((!\gen_cod|Equal0~0_combout\ & \gen_cod|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|Equal0~0_combout\,
	datab => \gen_cod|Add0~0_combout\,
	datac => \gen_cod|count_bit_tr\(2),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit_tr~0_combout\);

-- Location: LCFF_X22_Y25_N29
\gen_cod|count_bit_tr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit_tr~0_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit_tr\(2));

-- Location: LCCOMB_X22_Y25_N12
\gen_cod|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Equal1~0_combout\ = (\gen_cod|count_bit_tr\(3) & (\gen_cod|count_bit_tr\(2) $ (((!\gen_cod|Equal0~0_combout\ & \gen_cod|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit_tr\(3),
	datab => \gen_cod|count_bit_tr\(2),
	datac => \gen_cod|Equal0~0_combout\,
	datad => \gen_cod|Add0~0_combout\,
	combout => \gen_cod|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y25_N10
\gen_cod|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Equal1~1_combout\ = (!\gen_cod|count_bit_tr\(1) & (\gen_cod|Equal1~0_combout\ & (\gen_cod|count_bit_tr\(0) $ (!\gen_cod|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit_tr\(0),
	datab => \gen_cod|count_bit_tr\(1),
	datac => \gen_cod|Equal0~0_combout\,
	datad => \gen_cod|Equal1~0_combout\,
	combout => \gen_cod|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y25_N30
\gen_cod|count_bit~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit~3_combout\ = (!\gen_cod|count_bit\(0) & !\gen_cod|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_cod|count_bit\(0),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit~3_combout\);

-- Location: LCFF_X18_Y25_N31
\gen_cod|count_bit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit~3_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit\(0));

-- Location: LCCOMB_X18_Y25_N12
\gen_cod|count_bit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit~2_combout\ = (!\gen_cod|Equal1~1_combout\ & (\gen_cod|count_bit\(0) $ (\gen_cod|count_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_cod|count_bit\(0),
	datac => \gen_cod|count_bit\(1),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit~2_combout\);

-- Location: LCFF_X18_Y25_N13
\gen_cod|count_bit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit~2_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit\(1));

-- Location: LCCOMB_X18_Y25_N14
\gen_cod|count_bit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit~1_combout\ = (!\gen_cod|Equal1~1_combout\ & (\gen_cod|count_bit\(2) $ (((\gen_cod|count_bit\(0) & \gen_cod|count_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit\(0),
	datab => \gen_cod|count_bit\(1),
	datac => \gen_cod|count_bit\(2),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit~1_combout\);

-- Location: LCFF_X18_Y25_N15
\gen_cod|count_bit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit~1_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit\(2));

-- Location: LCCOMB_X18_Y25_N26
\gen_cod|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Add1~0_combout\ = \gen_cod|count_bit\(3) $ (((\gen_cod|count_bit\(0) & (\gen_cod|count_bit\(2) & \gen_cod|count_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit\(0),
	datab => \gen_cod|count_bit\(2),
	datac => \gen_cod|count_bit\(3),
	datad => \gen_cod|count_bit\(1),
	combout => \gen_cod|Add1~0_combout\);

-- Location: LCCOMB_X18_Y25_N16
\gen_cod|count_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit~0_combout\ = (\gen_cod|Add1~0_combout\ & !\gen_cod|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_cod|Add1~0_combout\,
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit~0_combout\);

-- Location: LCFF_X18_Y25_N17
\gen_cod|count_bit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit~0_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit\(3));

-- Location: LCCOMB_X18_Y25_N4
\gen_cod|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Equal0~0_combout\ = (!\gen_cod|count_bit\(1) & (!\gen_cod|count_bit\(2) & (!\gen_cod|count_bit\(3) & !\gen_cod|count_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit\(1),
	datab => \gen_cod|count_bit\(2),
	datac => \gen_cod|count_bit\(3),
	datad => \gen_cod|count_bit\(0),
	combout => \gen_cod|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y25_N14
\gen_cod|count_bit_tr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit_tr~1_combout\ = \gen_cod|count_bit_tr\(1) $ (((\gen_cod|count_bit_tr\(0) & !\gen_cod|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit_tr\(0),
	datac => \gen_cod|count_bit_tr\(1),
	datad => \gen_cod|Equal0~0_combout\,
	combout => \gen_cod|count_bit_tr~1_combout\);

-- Location: LCFF_X22_Y25_N15
\gen_cod|count_bit_tr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit_tr~1_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit_tr\(1));

-- Location: LCCOMB_X22_Y25_N4
\gen_cod|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Add0~1_combout\ = \gen_cod|count_bit_tr\(3) $ (((\gen_cod|count_bit_tr\(1) & (\gen_cod|count_bit_tr\(0) & \gen_cod|count_bit_tr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit_tr\(3),
	datab => \gen_cod|count_bit_tr\(1),
	datac => \gen_cod|count_bit_tr\(0),
	datad => \gen_cod|count_bit_tr\(2),
	combout => \gen_cod|Add0~1_combout\);

-- Location: LCCOMB_X22_Y25_N24
\gen_cod|count_bit_tr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_bit_tr~2_combout\ = (!\gen_cod|Equal1~1_combout\ & ((\gen_cod|Equal0~0_combout\ & ((\gen_cod|count_bit_tr\(3)))) # (!\gen_cod|Equal0~0_combout\ & (\gen_cod|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|Equal0~0_combout\,
	datab => \gen_cod|Add0~1_combout\,
	datac => \gen_cod|count_bit_tr\(3),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_bit_tr~2_combout\);

-- Location: LCFF_X22_Y25_N25
\gen_cod|count_bit_tr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_bit_tr~2_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_bit_tr\(3));

-- Location: LCCOMB_X22_Y25_N22
\gen_cod|count_package[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|count_package[0]~0_combout\ = \gen_cod|count_package\(0) $ (((\resetn~combout\ & \gen_cod|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datac => \gen_cod|count_package\(0),
	datad => \gen_cod|Equal1~1_combout\,
	combout => \gen_cod|count_package[0]~0_combout\);

-- Location: LCFF_X22_Y25_N23
\gen_cod|count_package[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|count_package[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|count_package\(0));

-- Location: LCCOMB_X22_Y25_N26
\gen_cod|header_in[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|header_in[1]~feeder_combout\ = \gen_cod|count_package\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_cod|count_package\(0),
	combout => \gen_cod|header_in[1]~feeder_combout\);

-- Location: LCFF_X22_Y25_N27
\gen_cod|header_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gen_cod|header_in[1]~feeder_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|header_in\(1));

-- Location: LCCOMB_X22_Y25_N18
\gen_cod|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Mux0~1_combout\ = (\gen_cod|count_bit_tr\(2) & (((\gen_cod|count_bit_tr\(1))) # (!\gen_cod|header_in\(0)))) # (!\gen_cod|count_bit_tr\(2) & (!\gen_cod|header_in\(1) & (\gen_cod|header_in\(0) $ (!\gen_cod|count_bit_tr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|header_in\(0),
	datab => \gen_cod|header_in\(1),
	datac => \gen_cod|count_bit_tr\(1),
	datad => \gen_cod|count_bit_tr\(2),
	combout => \gen_cod|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y25_N6
\gen_cod|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Mux0~0_combout\ = (\gen_cod|header_in\(0) & (\gen_cod|header_in\(1) $ (((!\gen_cod|count_bit_tr\(2)))))) # (!\gen_cod|header_in\(0) & ((\gen_cod|header_in\(1)) # ((!\gen_cod|count_bit_tr\(1) & !\gen_cod|count_bit_tr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|header_in\(0),
	datab => \gen_cod|header_in\(1),
	datac => \gen_cod|count_bit_tr\(1),
	datad => \gen_cod|count_bit_tr\(2),
	combout => \gen_cod|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y25_N0
\gen_cod|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Mux0~2_combout\ = (\gen_cod|count_bit_tr\(3) & (((\gen_cod|count_bit_tr\(0))))) # (!\gen_cod|count_bit_tr\(3) & ((\gen_cod|count_bit_tr\(0) & ((\gen_cod|Mux0~0_combout\))) # (!\gen_cod|count_bit_tr\(0) & (\gen_cod|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|count_bit_tr\(3),
	datab => \gen_cod|Mux0~1_combout\,
	datac => \gen_cod|count_bit_tr\(0),
	datad => \gen_cod|Mux0~0_combout\,
	combout => \gen_cod|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y25_N30
\gen_cod|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Mux0~3_combout\ = (\gen_cod|Mux0~2_combout\ & ((\gen_cod|header_in\(1)) # ((!\gen_cod|count_bit_tr\(2) & !\gen_cod|count_bit_tr\(1))))) # (!\gen_cod|Mux0~2_combout\ & ((\gen_cod|count_bit_tr\(2) $ (\gen_cod|count_bit_tr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|header_in\(1),
	datab => \gen_cod|count_bit_tr\(2),
	datac => \gen_cod|count_bit_tr\(1),
	datad => \gen_cod|Mux0~2_combout\,
	combout => \gen_cod|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y25_N0
\gen_cod|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen_cod|Mux0~4_combout\ = (\gen_cod|header_in\(1) & (\gen_cod|Mux0~3_combout\ & (\gen_cod|count_bit_tr\(3) $ (\gen_cod|Mux0~2_combout\)))) # (!\gen_cod|header_in\(1) & ((\gen_cod|count_bit_tr\(3) & ((\gen_cod|Mux0~3_combout\))) # 
-- (!\gen_cod|count_bit_tr\(3) & (\gen_cod|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|header_in\(1),
	datab => \gen_cod|count_bit_tr\(3),
	datac => \gen_cod|Mux0~2_combout\,
	datad => \gen_cod|Mux0~3_combout\,
	combout => \gen_cod|Mux0~4_combout\);

-- Location: CLKCTRL_G1
\resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~clkctrl_outclk\);

-- Location: LCFF_X20_Y25_N9
\gen_cod|seq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gen_cod|Mux0~4_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gen_cod|seq~regout\);

-- Location: LCCOMB_X21_Y25_N24
\det_dec|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Selector5~0_combout\ = (\gen_cod|seq~regout\ & ((\det_dec|y.F_0~regout\) # (\det_dec|y.C_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datac => \det_dec|y.C_1~regout\,
	datad => \gen_cod|seq~regout\,
	combout => \det_dec|Selector5~0_combout\);

-- Location: LCFF_X21_Y25_N25
\det_dec|y.D_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|Selector5~0_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.D_2~regout\);

-- Location: LCCOMB_X21_Y25_N26
\det_dec|y~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~21_combout\ = (\det_dec|y.D_2~regout\ & \gen_cod|seq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \det_dec|y.D_2~regout\,
	datad => \gen_cod|seq~regout\,
	combout => \det_dec|y~21_combout\);

-- Location: LCFF_X21_Y25_N27
\det_dec|y.E_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y~21_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.E_2~regout\);

-- Location: LCCOMB_X21_Y25_N28
\det_dec|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|WideOr0~0_combout\ = (\det_dec|y.B_0~regout\) # ((\det_dec|y.E_2~regout\) # ((\det_dec|y.C_0~regout\) # (\det_dec|y.F_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.B_0~regout\,
	datab => \det_dec|y.E_2~regout\,
	datac => \det_dec|y.C_0~regout\,
	datad => \det_dec|y.F_1~regout\,
	combout => \det_dec|WideOr0~0_combout\);

-- Location: LCFF_X21_Y25_N29
\det_dec|y.C_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|WideOr0~0_combout\,
	sclr => \gen_cod|ALT_INV_seq~regout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.C_0~regout\);

-- Location: LCCOMB_X18_Y25_N20
\det_dec|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|WideOr1~0_combout\ = (\det_dec|y.F_1~regout\) # (\det_dec|y.C_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \det_dec|y.F_1~regout\,
	datad => \det_dec|y.C_0~regout\,
	combout => \det_dec|WideOr1~0_combout\);

-- Location: LCFF_X18_Y25_N21
\det_dec|y.D_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|WideOr1~0_combout\,
	sclr => \gen_cod|seq~regout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.D_0~regout\);

-- Location: LCCOMB_X21_Y25_N16
\det_dec|y~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~18_combout\ = (!\gen_cod|seq~regout\ & \det_dec|y.E_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datad => \det_dec|y.E_2~regout\,
	combout => \det_dec|y~18_combout\);

-- Location: LCFF_X20_Y25_N19
\det_dec|y.F_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \det_dec|y~18_combout\,
	sload => VCC,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.F_2~regout\);

-- Location: LCCOMB_X21_Y25_N18
\det_dec|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Selector2~2_combout\ = (\det_dec|Selector2~1_combout\ & (!\det_dec|y.D_0~regout\ & (!\det_dec|y.C_1~regout\ & !\det_dec|y.C_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|Selector2~1_combout\,
	datab => \det_dec|y.D_0~regout\,
	datac => \det_dec|y.C_1~regout\,
	datad => \det_dec|y.C_0~regout\,
	combout => \det_dec|Selector2~2_combout\);

-- Location: LCFF_X21_Y25_N19
\det_dec|y.B_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|Selector2~2_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.B_1~regout\);

-- Location: LCCOMB_X21_Y25_N14
\det_dec|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|WideOr3~0_combout\ = (\det_dec|y.D_0~regout\) # ((\det_dec|y.F_2~regout\) # (\det_dec|y.B_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|y.D_0~regout\,
	datac => \det_dec|y.F_2~regout\,
	datad => \det_dec|y.B_1~regout\,
	combout => \det_dec|WideOr3~0_combout\);

-- Location: LCFF_X21_Y25_N15
\det_dec|y.C_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|WideOr3~0_combout\,
	sclr => \gen_cod|ALT_INV_seq~regout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.C_1~regout\);

-- Location: LCCOMB_X21_Y25_N6
\det_dec|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Selector4~0_combout\ = (!\gen_cod|seq~regout\ & ((\det_dec|y.F_0~regout\) # (\det_dec|y.C_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datac => \det_dec|y.C_1~regout\,
	datad => \gen_cod|seq~regout\,
	combout => \det_dec|Selector4~0_combout\);

-- Location: LCFF_X21_Y25_N7
\det_dec|y.D_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|Selector4~0_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.D_1~regout\);

-- Location: LCCOMB_X21_Y25_N30
\det_dec|y~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~22_combout\ = (\gen_cod|seq~regout\ & \det_dec|y.D_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datad => \det_dec|y.D_1~regout\,
	combout => \det_dec|y~22_combout\);

-- Location: LCFF_X21_Y25_N31
\det_dec|y.E_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y~22_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.E_1~regout\);

-- Location: LCCOMB_X20_Y25_N28
\det_dec|y~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~19_combout\ = (\gen_cod|seq~regout\ & \det_dec|y.E_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datad => \det_dec|y.E_1~regout\,
	combout => \det_dec|y~19_combout\);

-- Location: LCFF_X20_Y25_N29
\det_dec|y.F_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y~19_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.F_1~regout\);

-- Location: LCCOMB_X21_Y25_N2
\det_dec|y~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~20_combout\ = (!\gen_cod|seq~regout\ & \det_dec|y.D_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datad => \det_dec|y.D_0~regout\,
	combout => \det_dec|y~20_combout\);

-- Location: LCFF_X21_Y25_N3
\det_dec|y.E_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|y~20_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.E_0~regout\);

-- Location: LCCOMB_X21_Y25_N8
\det_dec|y~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|y~17_combout\ = (\gen_cod|seq~regout\ & \det_dec|y.E_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datad => \det_dec|y.E_0~regout\,
	combout => \det_dec|y~17_combout\);

-- Location: LCFF_X20_Y25_N25
\det_dec|y.F_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \det_dec|y~17_combout\,
	sload => VCC,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|y.F_0~regout\);

-- Location: LCCOMB_X18_Y25_N18
\det_dec|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Selector2~0_combout\ = (!\det_dec|y.F_1~regout\ & !\det_dec|y.F_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \det_dec|y.F_1~regout\,
	datad => \det_dec|y.F_0~regout\,
	combout => \det_dec|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y25_N10
\det_dec|count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count[3]~0_combout\ = (\det_dec|y.F_1~regout\) # (\det_dec|y.F_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|y.F_1~regout\,
	datad => \det_dec|y.F_2~regout\,
	combout => \det_dec|count[3]~0_combout\);

-- Location: LCCOMB_X18_Y25_N28
\det_dec|header[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|header\(2) = (\det_dec|Selector2~0_combout\ & ((\det_dec|count[3]~0_combout\) # (\det_dec|header\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|Selector2~0_combout\,
	datac => \det_dec|count[3]~0_combout\,
	datad => \det_dec|header\(2),
	combout => \det_dec|header\(2));

-- Location: LCCOMB_X20_Y25_N14
\det_dec|count_bit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count_bit~1_combout\ = (\det_dec|Equal1~0_combout\ & (!\det_dec|y.F_2~regout\ & (!\det_dec|count_bit\(0) & \det_dec|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|Equal1~0_combout\,
	datab => \det_dec|y.F_2~regout\,
	datac => \det_dec|count_bit\(0),
	datad => \det_dec|Selector2~0_combout\,
	combout => \det_dec|count_bit~1_combout\);

-- Location: LCFF_X20_Y25_N15
\det_dec|count_bit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|count_bit~1_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|count_bit\(0));

-- Location: LCCOMB_X20_Y25_N4
\det_dec|count_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count_bit~0_combout\ = (\det_dec|Equal1~0_combout\ & (!\det_dec|y.F_2~regout\ & (\det_dec|Add0~0_combout\ & \det_dec|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|Equal1~0_combout\,
	datab => \det_dec|y.F_2~regout\,
	datac => \det_dec|Add0~0_combout\,
	datad => \det_dec|Selector2~0_combout\,
	combout => \det_dec|count_bit~0_combout\);

-- Location: LCFF_X20_Y25_N5
\det_dec|count_bit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|count_bit~0_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|count_bit\(1));

-- Location: LCCOMB_X20_Y25_N8
\det_dec|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Add0~0_combout\ = \det_dec|count_bit\(0) $ (\det_dec|count_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|count_bit\(0),
	datad => \det_dec|count_bit\(1),
	combout => \det_dec|Add0~0_combout\);

-- Location: LCCOMB_X20_Y25_N16
\det_dec|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Add0~1_combout\ = \det_dec|count_bit\(2) $ (((\det_dec|count_bit\(0) & \det_dec|count_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|count_bit\(0),
	datac => \det_dec|count_bit\(1),
	datad => \det_dec|count_bit\(2),
	combout => \det_dec|Add0~1_combout\);

-- Location: LCCOMB_X20_Y25_N26
\det_dec|count_bit~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count_bit~3_combout\ = (\det_dec|Equal1~0_combout\ & (!\det_dec|y.F_2~regout\ & (\det_dec|Add0~1_combout\ & \det_dec|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|Equal1~0_combout\,
	datab => \det_dec|y.F_2~regout\,
	datac => \det_dec|Add0~1_combout\,
	datad => \det_dec|Selector2~0_combout\,
	combout => \det_dec|count_bit~3_combout\);

-- Location: LCFF_X20_Y25_N27
\det_dec|count_bit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|count_bit~3_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|count_bit\(2));

-- Location: LCCOMB_X19_Y25_N28
\det_dec|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Equal1~0_combout\ = (\det_dec|count_bit\(3)) # (((!\det_dec|count_bit\(1)) # (!\det_dec|count_bit\(2))) # (!\det_dec|count_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|count_bit\(3),
	datab => \det_dec|count_bit\(0),
	datac => \det_dec|count_bit\(2),
	datad => \det_dec|count_bit\(1),
	combout => \det_dec|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y25_N22
\det_dec|count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count[1]~1_combout\ = (!\det_dec|y.F_0~regout\ & (!\det_dec|count[3]~0_combout\ & (\det_dec|Add0~0_combout\ & \det_dec|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datab => \det_dec|count[3]~0_combout\,
	datac => \det_dec|Add0~0_combout\,
	datad => \det_dec|Equal1~0_combout\,
	combout => \det_dec|count[1]~1_combout\);

-- Location: LCCOMB_X19_Y25_N0
\det_dec|count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count[2]~2_combout\ = (!\det_dec|y.F_0~regout\ & (!\det_dec|count[3]~0_combout\ & (\det_dec|Add0~1_combout\ & \det_dec|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datab => \det_dec|count[3]~0_combout\,
	datac => \det_dec|Add0~1_combout\,
	datad => \det_dec|Equal1~0_combout\,
	combout => \det_dec|count[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N16
\det_dec|seq_cod[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[7]~1_combout\ = (\det_dec|count[1]~1_combout\ & ((\det_dec|count[2]~2_combout\ & (\det_dec|seq_cod[7]~0_combout\)) # (!\det_dec|count[2]~2_combout\ & ((\det_dec|seq_cod\(7)))))) # (!\det_dec|count[1]~1_combout\ & 
-- (((\det_dec|seq_cod\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[7]~0_combout\,
	datab => \det_dec|count[1]~1_combout\,
	datac => \det_dec|seq_cod\(7),
	datad => \det_dec|count[2]~2_combout\,
	combout => \det_dec|seq_cod[7]~1_combout\);

-- Location: LCFF_X19_Y25_N17
\det_dec|seq_cod[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(7));

-- Location: LCCOMB_X19_Y25_N6
\det_dec|seq_cod[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[2]~3_combout\ = (\det_dec|count[2]~2_combout\ & (((\det_dec|seq_cod\(2))))) # (!\det_dec|count[2]~2_combout\ & ((\det_dec|count[1]~1_combout\ & (\det_dec|seq_cod[2]~2_combout\)) # (!\det_dec|count[1]~1_combout\ & 
-- ((\det_dec|seq_cod\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[2]~2_combout\,
	datab => \det_dec|count[2]~2_combout\,
	datac => \det_dec|seq_cod\(2),
	datad => \det_dec|count[1]~1_combout\,
	combout => \det_dec|seq_cod[2]~3_combout\);

-- Location: LCFF_X19_Y25_N7
\det_dec|seq_cod[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(2));

-- Location: LCCOMB_X18_Y25_N10
\det_dec|seqdec~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~0_combout\ = (\det_dec|header\(2) & ((!\det_dec|seq_cod\(2)) # (!\det_dec|seq_cod\(7)))) # (!\det_dec|header\(2) & ((\det_dec|seq_cod\(7)) # (\det_dec|seq_cod\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|header\(2),
	datac => \det_dec|seq_cod\(7),
	datad => \det_dec|seq_cod\(2),
	combout => \det_dec|seqdec~0_combout\);

-- Location: LCFF_X18_Y25_N11
\det_dec|seqdec[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~0_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(7));

-- Location: LCCOMB_X18_Y25_N2
\det_dec|header[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|header\(3) = (!\det_dec|y.F_0~regout\ & ((\det_dec|count[3]~0_combout\) # (\det_dec|header\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|y.F_0~regout\,
	datac => \det_dec|count[3]~0_combout\,
	datad => \det_dec|header\(3),
	combout => \det_dec|header\(3));

-- Location: LCCOMB_X19_Y25_N10
\det_dec|seq_cod[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[3]~7_combout\ = (\det_dec|count[2]~2_combout\ & (((\det_dec|seq_cod\(3))))) # (!\det_dec|count[2]~2_combout\ & ((\det_dec|count[1]~1_combout\ & (\det_dec|seq_cod[3]~6_combout\)) # (!\det_dec|count[1]~1_combout\ & 
-- ((\det_dec|seq_cod\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[3]~6_combout\,
	datab => \det_dec|count[2]~2_combout\,
	datac => \det_dec|seq_cod\(3),
	datad => \det_dec|count[1]~1_combout\,
	combout => \det_dec|seq_cod[3]~7_combout\);

-- Location: LCFF_X19_Y25_N11
\det_dec|seq_cod[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(3));

-- Location: LCCOMB_X19_Y25_N20
\det_dec|seq_cod[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[6]~5_combout\ = (\det_dec|count[2]~2_combout\ & ((\det_dec|count[1]~1_combout\ & (\det_dec|seq_cod[6]~4_combout\)) # (!\det_dec|count[1]~1_combout\ & ((\det_dec|seq_cod\(6)))))) # (!\det_dec|count[2]~2_combout\ & 
-- (((\det_dec|seq_cod\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[6]~4_combout\,
	datab => \det_dec|count[2]~2_combout\,
	datac => \det_dec|seq_cod\(6),
	datad => \det_dec|count[1]~1_combout\,
	combout => \det_dec|seq_cod[6]~5_combout\);

-- Location: LCFF_X19_Y25_N21
\det_dec|seq_cod[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(6));

-- Location: LCCOMB_X18_Y25_N24
\det_dec|seqdec~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~1_combout\ = \det_dec|seq_cod\(6) $ (((\det_dec|header\(3) & \det_dec|seq_cod\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|header\(3),
	datac => \det_dec|seq_cod\(3),
	datad => \det_dec|seq_cod\(6),
	combout => \det_dec|seqdec~1_combout\);

-- Location: LCFF_X18_Y25_N25
\det_dec|seqdec[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~1_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(6));

-- Location: LCCOMB_X20_Y25_N24
\det_dec|header[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|header\(4) = (!\det_dec|y.F_2~regout\ & ((\det_dec|header\(4)) # (!\det_dec|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|Selector2~0_combout\,
	datab => \det_dec|y.F_2~regout\,
	datad => \det_dec|header\(4),
	combout => \det_dec|header\(4));

-- Location: LCCOMB_X20_Y25_N18
\det_dec|count[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count[0]~3_combout\ = (\det_dec|y.F_0~regout\) # ((\det_dec|count_bit\(0)) # ((\det_dec|y.F_2~regout\) # (\det_dec|y.F_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datab => \det_dec|count_bit\(0),
	datac => \det_dec|y.F_2~regout\,
	datad => \det_dec|y.F_1~regout\,
	combout => \det_dec|count[0]~3_combout\);

-- Location: LCCOMB_X20_Y25_N12
\det_dec|seq_cod[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[5]~10_combout\ = (\det_dec|count[0]~3_combout\ & ((\det_dec|seq_cod\(5)))) # (!\det_dec|count[0]~3_combout\ & (\gen_cod|seq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_cod|seq~regout\,
	datac => \det_dec|seq_cod\(5),
	datad => \det_dec|count[0]~3_combout\,
	combout => \det_dec|seq_cod[5]~10_combout\);

-- Location: LCCOMB_X19_Y25_N30
\det_dec|seq_cod[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[5]~11_combout\ = (\det_dec|count[1]~1_combout\ & (((\det_dec|seq_cod\(5))))) # (!\det_dec|count[1]~1_combout\ & ((\det_dec|count[2]~2_combout\ & (\det_dec|seq_cod[5]~10_combout\)) # (!\det_dec|count[2]~2_combout\ & 
-- ((\det_dec|seq_cod\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|count[1]~1_combout\,
	datab => \det_dec|seq_cod[5]~10_combout\,
	datac => \det_dec|seq_cod\(5),
	datad => \det_dec|count[2]~2_combout\,
	combout => \det_dec|seq_cod[5]~11_combout\);

-- Location: LCFF_X19_Y25_N31
\det_dec|seq_cod[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(5));

-- Location: LCCOMB_X19_Y25_N24
\det_dec|seq_cod[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[4]~9_combout\ = (\det_dec|count[1]~1_combout\ & (((\det_dec|seq_cod\(4))))) # (!\det_dec|count[1]~1_combout\ & ((\det_dec|count[2]~2_combout\ & (\det_dec|seq_cod[4]~8_combout\)) # (!\det_dec|count[2]~2_combout\ & 
-- ((\det_dec|seq_cod\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[4]~8_combout\,
	datab => \det_dec|count[1]~1_combout\,
	datac => \det_dec|seq_cod\(4),
	datad => \det_dec|count[2]~2_combout\,
	combout => \det_dec|seq_cod[4]~9_combout\);

-- Location: LCFF_X19_Y25_N25
\det_dec|seq_cod[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(4));

-- Location: LCCOMB_X20_Y25_N20
\det_dec|seqdec~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~2_combout\ = \det_dec|header\(0) $ (\det_dec|header\(4) $ (\det_dec|seq_cod\(5) $ (\det_dec|seq_cod\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|header\(0),
	datab => \det_dec|header\(4),
	datac => \det_dec|seq_cod\(5),
	datad => \det_dec|seq_cod\(4),
	combout => \det_dec|seqdec~2_combout\);

-- Location: LCFF_X20_Y25_N21
\det_dec|seqdec[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~2_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(5));

-- Location: LCCOMB_X20_Y25_N22
\det_dec|seqdec~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~3_combout\ = \det_dec|header\(4) $ (\det_dec|seq_cod\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|header\(4),
	datad => \det_dec|seq_cod\(4),
	combout => \det_dec|seqdec~3_combout\);

-- Location: LCFF_X20_Y25_N23
\det_dec|seqdec[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~3_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(4));

-- Location: LCCOMB_X18_Y25_N22
\det_dec|seqdec~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~4_combout\ = (\det_dec|seq_cod\(3) & \det_dec|header\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \det_dec|seq_cod\(3),
	datad => \det_dec|header\(3),
	combout => \det_dec|seqdec~4_combout\);

-- Location: LCFF_X18_Y25_N23
\det_dec|seqdec[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~4_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(3));

-- Location: LCCOMB_X18_Y25_N8
\det_dec|seqdec~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~5_combout\ = \det_dec|header\(2) $ (\det_dec|seq_cod\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \det_dec|header\(2),
	datad => \det_dec|seq_cod\(2),
	combout => \det_dec|seqdec~5_combout\);

-- Location: LCFF_X18_Y25_N9
\det_dec|seqdec[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~5_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(2));

-- Location: LCCOMB_X49_Y20_N16
\det_dec|seqdec[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \det_dec|seqdec[1]~feeder_combout\);

-- Location: LCFF_X49_Y20_N17
\det_dec|seqdec[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec[1]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(1));

-- Location: LCCOMB_X21_Y25_N20
\det_dec|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|comb~0_combout\ = (!\det_dec|y.F_0~regout\ & ((\det_dec|y.F_2~regout\) # (\det_dec|y.F_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_2~regout\,
	datac => \det_dec|y.F_0~regout\,
	datad => \det_dec|y.F_1~regout\,
	combout => \det_dec|comb~0_combout\);

-- Location: LCCOMB_X21_Y25_N22
\det_dec|header[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|header\(0) = (!\det_dec|comb~0_combout\ & ((\det_dec|y.F_0~regout\) # (\det_dec|header\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_0~regout\,
	datac => \det_dec|comb~0_combout\,
	datad => \det_dec|header\(0),
	combout => \det_dec|header\(0));

-- Location: LCCOMB_X19_Y25_N12
\det_dec|seq_cod[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seq_cod[0]~13_combout\ = (\det_dec|count[1]~1_combout\ & (((\det_dec|seq_cod\(0))))) # (!\det_dec|count[1]~1_combout\ & ((\det_dec|count[2]~2_combout\ & ((\det_dec|seq_cod\(0)))) # (!\det_dec|count[2]~2_combout\ & 
-- (\det_dec|seq_cod[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|seq_cod[0]~12_combout\,
	datab => \det_dec|count[1]~1_combout\,
	datac => \det_dec|seq_cod\(0),
	datad => \det_dec|count[2]~2_combout\,
	combout => \det_dec|seq_cod[0]~13_combout\);

-- Location: LCFF_X19_Y25_N13
\det_dec|seq_cod[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \det_dec|seq_cod[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seq_cod\(0));

-- Location: LCCOMB_X20_Y25_N0
\det_dec|seqdec~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|seqdec~6_combout\ = \det_dec|header\(0) $ (\det_dec|seq_cod\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \det_dec|header\(0),
	datad => \det_dec|seq_cod\(0),
	combout => \det_dec|seqdec~6_combout\);

-- Location: LCFF_X20_Y25_N1
\det_dec|seqdec[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|seqdec~6_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|seqdec\(0));

-- Location: LCCOMB_X19_Y25_N14
\det_dec|count_bit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|count_bit~2_combout\ = (!\det_dec|y.F_2~regout\ & (\det_dec|Selector2~0_combout\ & (\det_dec|Equal1~0_combout\ & \det_dec|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|y.F_2~regout\,
	datab => \det_dec|Selector2~0_combout\,
	datac => \det_dec|Equal1~0_combout\,
	datad => \det_dec|Add0~2_combout\,
	combout => \det_dec|count_bit~2_combout\);

-- Location: LCFF_X19_Y25_N15
\det_dec|count_bit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|count_bit~2_combout\,
	ena => \resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|count_bit\(3));

-- Location: LCCOMB_X19_Y25_N26
\det_dec|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Add0~2_combout\ = \det_dec|count_bit\(3) $ (((\det_dec|count_bit\(2) & (\det_dec|count_bit\(1) & \det_dec|count_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|count_bit\(2),
	datab => \det_dec|count_bit\(3),
	datac => \det_dec|count_bit\(1),
	datad => \det_dec|count_bit\(0),
	combout => \det_dec|Add0~2_combout\);

-- Location: LCCOMB_X20_Y25_N2
\det_dec|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \det_dec|Equal0~0_combout\ = (\det_dec|count[2]~2_combout\ & (!\det_dec|Add0~2_combout\ & (!\det_dec|count[0]~3_combout\ & \det_dec|count[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \det_dec|count[2]~2_combout\,
	datab => \det_dec|Add0~2_combout\,
	datac => \det_dec|count[0]~3_combout\,
	datad => \det_dec|count[1]~1_combout\,
	combout => \det_dec|Equal0~0_combout\);

-- Location: LCFF_X20_Y25_N3
\det_dec|valid_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \det_dec|Equal0~0_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \det_dec|valid_out~regout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(4));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seqdec[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|seqdec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seqdec(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valid_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \det_dec|valid_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valid_out);
END structure;


