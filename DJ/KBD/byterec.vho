-- Copyright (C) 1991-2007 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 7.0 Build 33 02/05/2007 SJ Full Version"

-- DATE "08/31/2008 18:17:49"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	byterec IS
    PORT (
	resetN : IN std_logic;
	clk : IN std_logic;
	din_new : IN std_logic;
	din : IN std_logic_vector(7 DOWNTO 0);
	make : OUT std_logic;
	break : OUT std_logic;
	dout : OUT std_logic_vector(8 DOWNTO 0)
	);
END byterec;

ARCHITECTURE structure OF byterec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_din_new : std_logic;
SIGNAL ww_din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_make : std_logic;
SIGNAL ww_break : std_logic;
SIGNAL ww_dout : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~clkctrl_I_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL nx25503z3 : std_logic;
SIGNAL nx25503z2 : std_logic;
SIGNAL a_6 : std_logic;
SIGNAL nx25503z4 : std_logic;
SIGNAL nx25503z5 : std_logic;
SIGNAL nor_code : std_logic;
SIGNAL nx33479z3 : std_logic;
SIGNAL nx33479z2 : std_logic;
SIGNAL nx25503z8 : std_logic;
SIGNAL a_2 : std_logic;
SIGNAL break_dup0 : std_logic;
SIGNAL nx25503z7 : std_logic;
SIGNAL nx33479z1 : std_logic;
SIGNAL \din_new~combout\ : std_logic;
SIGNAL nx25503z6 : std_logic;
SIGNAL next_state_8 : std_logic;
SIGNAL \resetN~combout\ : std_logic;
SIGNAL present_state_8 : std_logic;
SIGNAL next_state_3 : std_logic;
SIGNAL present_state_3 : std_logic;
SIGNAL nx25503z1 : std_logic;
SIGNAL make_dup0 : std_logic;
SIGNAL next_state_0 : std_logic;
SIGNAL \next_state_0~_wirecell\ : std_logic;
SIGNAL nx31485z1 : std_logic;
SIGNAL next_state_6 : std_logic;
SIGNAL present_state_6 : std_logic;
SIGNAL next_state_7 : std_logic;
SIGNAL present_state_7 : std_logic;
SIGNAL next_state_1 : std_logic;
SIGNAL present_state_1 : std_logic;
SIGNAL a_1_dup_808 : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl\ : std_logic;
SIGNAL next_state_9 : std_logic;
SIGNAL present_state_9 : std_logic;
SIGNAL next_state_4 : std_logic;
SIGNAL present_state_4 : std_logic;
SIGNAL a_1 : std_logic;
SIGNAL oe : std_logic;
SIGNAL ext : std_logic;
SIGNAL \din~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_resetN~combout\ : std_logic;

BEGIN

ww_resetN <= resetN;
ww_clk <= clk;
ww_din_new <= din_new;
ww_din <= din;
make <= ww_make;
break <= ww_break;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_I_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_resetN~combout\ <= NOT \resetN~combout\;

ix25503z57824 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z3 = \din~combout\(3) # \din~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din~combout\(3),
	datad => \din~combout\(2),
	combout => nx25503z3);

ix25503z57823 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z2 = !\din~combout\(4) & !\din~combout\(5) & !\din~combout\(6) & !nx25503z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => \din~combout\(5),
	datac => \din~combout\(6),
	datad => nx25503z3,
	combout => nx25503z2);

ix25503z57826 : cycloneii_lcell_comb
-- Equation(s):
-- a_6 = !\din~combout\(1) & !\din~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din~combout\(1),
	datad => \din~combout\(0),
	combout => a_6);

ix25503z57825 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z4 = \din~combout\(5) # \din~combout\(6) # \din~combout\(3) # !a_6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(5),
	datab => \din~combout\(6),
	datac => \din~combout\(3),
	datad => a_6,
	combout => nx25503z4);

ix25503z57827 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z5 = \din~combout\(4) # \din~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datad => \din~combout\(2),
	combout => nx25503z5);

ix25503z57822 : cycloneii_lcell_comb
-- Equation(s):
-- nor_code = \din~combout\(7) & (nx25503z2) # !\din~combout\(7) & (nx25503z4 # nx25503z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25503z4,
	datab => nx25503z5,
	datac => \din~combout\(7),
	datad => nx25503z2,
	combout => nor_code);

ix33479z57822 : cycloneii_lcell_comb
-- Equation(s):
-- nx33479z3 = \din~combout\(2) # \din~combout\(3) # \din~combout\(1) # \din~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(2),
	datab => \din~combout\(3),
	datac => \din~combout\(1),
	datad => \din~combout\(0),
	combout => nx33479z3);

ix33479z57821 : cycloneii_lcell_comb
-- Equation(s):
-- nx33479z2 = nx33479z3 # !\din~combout\(6) # !\din~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(7),
	datac => \din~combout\(6),
	datad => nx33479z3,
	combout => nx33479z2);

ix25503z57831 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z8 = \din~combout\(4) # nx33479z2 # !\din~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datac => \din~combout\(5),
	datad => nx33479z2,
	combout => nx25503z8);

ix25503z57829 : cycloneii_lcell_comb
-- Equation(s):
-- a_2 = nor_code # \din~combout\(4) & \din~combout\(5) & !nx33479z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datab => nor_code,
	datac => \din~combout\(5),
	datad => nx33479z2,
	combout => a_2);

reg_present_state_5 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	sdata => a_1,
	aclr => \ALT_INV_resetN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => break_dup0);

ix25503z57830 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z7 = break_dup0 # nx25503z8 & !nx31485z1 & !a_2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25503z8,
	datab => nx31485z1,
	datac => break_dup0,
	datad => a_2,
	combout => nx25503z7);

ix33479z57820 : cycloneii_lcell_comb
-- Equation(s):
-- nx33479z1 = nx33479z2 # !\din~combout\(5) # !\din~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(4),
	datac => \din~combout\(5),
	datad => nx33479z2,
	combout => nx33479z1);

\din_new_ibuf~I\ : cycloneii_io
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
	padio => ww_din_new,
	combout => \din_new~combout\);

ix25503z57828 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z6 = \din_new~combout\ & !a_2 & present_state_6 # !\din_new~combout\ & (!nx31485z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_2,
	datab => present_state_6,
	datac => \din_new~combout\,
	datad => nx31485z1,
	combout => nx25503z6);

ix33479z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_8 = \din_new~combout\ & !nx33479z1 & (present_state_6) # !\din_new~combout\ & (present_state_8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx33479z1,
	datab => \din_new~combout\,
	datac => present_state_8,
	datad => present_state_6,
	combout => next_state_8);

\resetN_ibuf~I\ : cycloneii_io
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
	padio => ww_resetN,
	combout => \resetN~combout\);

reg_present_state_8 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_8,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_8);

ix28494z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_3 = \din_new~combout\ & !nx33479z1 & (!nx31485z1) # !\din_new~combout\ & (present_state_3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx33479z1,
	datab => \din_new~combout\,
	datac => present_state_3,
	datad => nx31485z1,
	combout => next_state_3);

reg_present_state_3 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_3,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_3);

ix25503z57821 : cycloneii_lcell_comb
-- Equation(s):
-- nx25503z1 = !nor_code & \din_new~combout\ & (present_state_8 # present_state_3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nor_code,
	datab => present_state_8,
	datac => \din_new~combout\,
	datad => present_state_3,
	combout => nx25503z1);

reg_present_state_2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => a_1_dup_808,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => make_dup0);

ix25503z57820 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_0 = nx25503z7 # nx25503z6 # nx25503z1 # make_dup0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25503z7,
	datab => nx25503z6,
	datac => nx25503z1,
	datad => make_dup0,
	combout => next_state_0);

\next_state_0~_wirecell_I\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state_0~_wirecell\ = !next_state_0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => next_state_0,
	combout => \next_state_0~_wirecell\);

reg_present_state_0 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => \next_state_0~_wirecell\,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx31485z1);

ix31485z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_6 = \din_new~combout\ & !nx25503z8 & (!nx31485z1) # !\din_new~combout\ & (present_state_6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25503z8,
	datab => \din_new~combout\,
	datac => present_state_6,
	datad => nx31485z1,
	combout => next_state_6);

reg_present_state_6 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_6,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_6);

ix32482z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_7 = nor_code & \din_new~combout\ & present_state_6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nor_code,
	datac => \din_new~combout\,
	datad => present_state_6,
	combout => next_state_7);

reg_present_state_7 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_7,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_7);

ix26500z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_1 = nor_code & \din_new~combout\ & !nx31485z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nor_code,
	datac => \din_new~combout\,
	datad => nx31485z1,
	combout => next_state_1);

reg_present_state_1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_1,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_1);

ix9623z57819 : cycloneii_lcell_comb
-- Equation(s):
-- a_1_dup_808 = present_state_7 # present_state_1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => present_state_7,
	datad => present_state_1,
	combout => a_1_dup_808);

\clk_ibuf~I\ : cycloneii_io
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

\clk~clkctrl_I\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_I_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl\);

ix34476z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_9 = nor_code & \din_new~combout\ & present_state_8

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nor_code,
	datac => \din_new~combout\,
	datad => present_state_8,
	combout => next_state_9);

reg_present_state_9 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_9,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_9);

ix29491z57819 : cycloneii_lcell_comb
-- Equation(s):
-- next_state_4 = nor_code & \din_new~combout\ & present_state_3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nor_code,
	datab => \din_new~combout\,
	datad => present_state_3,
	combout => next_state_4);

reg_present_state_4 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl\,
	datain => next_state_4,
	aclr => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state_4);

ix30488z57819 : cycloneii_lcell_comb
-- Equation(s):
-- a_1 = present_state_9 # present_state_4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => present_state_9,
	datad => present_state_4,
	combout => a_1);

\din_ibuf_0~I\ : cycloneii_io
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
	padio => ww_din(0),
	combout => \din~combout\(0));

ix22184z57820 : cycloneii_lcell_comb
-- Equation(s):
-- oe = present_state_9 # present_state_7 # present_state_1 # present_state_4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => present_state_9,
	datab => present_state_7,
	datac => present_state_1,
	datad => present_state_4,
	combout => oe);

\din_ibuf_1~I\ : cycloneii_io
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
	padio => ww_din(1),
	combout => \din~combout\(1));

\din_ibuf_2~I\ : cycloneii_io
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
	padio => ww_din(2),
	combout => \din~combout\(2));

\din_ibuf_3~I\ : cycloneii_io
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
	padio => ww_din(3),
	combout => \din~combout\(3));

\din_ibuf_4~I\ : cycloneii_io
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
	padio => ww_din(4),
	combout => \din~combout\(4));

\din_ibuf_5~I\ : cycloneii_io
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
	padio => ww_din(5),
	combout => \din~combout\(5));

\din_ibuf_6~I\ : cycloneii_io
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
	padio => ww_din(6),
	combout => \din~combout\(6));

\din_ibuf_7~I\ : cycloneii_io
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
	padio => ww_din(7),
	combout => \din~combout\(7));

ix22184z57819 : cycloneii_lcell_comb
-- Equation(s):
-- ext = present_state_7 # present_state_9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => present_state_7,
	datad => present_state_9,
	combout => ext);

\make_obuf~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => a_1_dup_808,
	outclk => \clk~clkctrl\,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_make);

\break_obuf~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => a_1,
	outclk => \clk~clkctrl\,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_break);

\dout_obuf_0~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(0),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(0));

\dout_obuf_1~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(1),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(1));

\dout_obuf_2~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(2),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(2));

\dout_obuf_3~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(3),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(3));

\dout_obuf_4~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(4),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(4));

\dout_obuf_5~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(5),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(5));

\dout_obuf_6~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(6),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(6));

\dout_obuf_7~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \din~combout\(7),
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(7));

\dout_obuf_8~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ext,
	outclk => \clk~clkctrl\,
	outclkena => oe,
	areset => \ALT_INV_resetN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(8));
END structure;


