-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/04/2026 14:18:28"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|Equal5~0_combout\ : std_logic;
SIGNAL \add_instance|shift_out~2_combout\ : std_logic;
SIGNAL \add_instance|shift_out~3_combout\ : std_logic;
SIGNAL \add_instance|shift_out~4_combout\ : std_logic;
SIGNAL \add_instance|op[0]~0_combout\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|op[0]~1_combout\ : std_logic;
SIGNAL \add_instance|op[0]~2_combout\ : std_logic;
SIGNAL \add_instance|op[1]~3_combout\ : std_logic;
SIGNAL \add_instance|shift_out~6_combout\ : std_logic;
SIGNAL \add_instance|shift_out~5_combout\ : std_logic;
SIGNAL \add_instance|shift_out~7_combout\ : std_logic;
SIGNAL \add_instance|Add0~2\ : std_logic;
SIGNAL \add_instance|Add0~2COUT1_26\ : std_logic;
SIGNAL \add_instance|Add0~5_combout\ : std_logic;
SIGNAL \add_instance|op[1]~4_combout\ : std_logic;
SIGNAL \add_instance|shift_out~9_combout\ : std_logic;
SIGNAL \add_instance|shift_out~8_combout\ : std_logic;
SIGNAL \add_instance|shift_out~10_combout\ : std_logic;
SIGNAL \add_instance|op[2]~11_combout\ : std_logic;
SIGNAL \add_instance|Add0~7\ : std_logic;
SIGNAL \add_instance|Add0~7COUT1_27\ : std_logic;
SIGNAL \add_instance|Add0~10_combout\ : std_logic;
SIGNAL \add_instance|op[2]~12_combout\ : std_logic;
SIGNAL \add_instance|shift_out~11_combout\ : std_logic;
SIGNAL \add_instance|shift_out~12_combout\ : std_logic;
SIGNAL \add_instance|shift_out~13_combout\ : std_logic;
SIGNAL \add_instance|op[3]~5_combout\ : std_logic;
SIGNAL \add_instance|Add0~12\ : std_logic;
SIGNAL \add_instance|Add0~12COUT1_28\ : std_logic;
SIGNAL \add_instance|Add0~15_combout\ : std_logic;
SIGNAL \add_instance|op[3]~6_combout\ : std_logic;
SIGNAL \add_instance|Add0~17\ : std_logic;
SIGNAL \add_instance|Add0~17COUT1_29\ : std_logic;
SIGNAL \add_instance|Add0~20_combout\ : std_logic;
SIGNAL \add_instance|op[4]~7_combout\ : std_logic;
SIGNAL \add_instance|op[5]~8_combout\ : std_logic;
SIGNAL \add_instance|op[6]~9_combout\ : std_logic;
SIGNAL \add_instance|op[7]~10_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X4_Y3_N7
\add_instance|Equal5~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal5~0_combout\ = (((\input_vector~combout\(0)) # (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal5~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X4_Y2_N3
\add_instance|shift_out~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~2_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(7)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~2_combout\);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X4_Y2_N1
\add_instance|shift_out~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~3_combout\ = (!\input_vector~combout\(1) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~3_combout\);

-- Location: LC_X4_Y2_N4
\add_instance|shift_out~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~4_combout\ = (\input_vector~combout\(3) & ((\add_instance|shift_out~2_combout\) # ((\input_vector~combout\(5) & \add_instance|shift_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift_out~2_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(5),
	datad => \add_instance|shift_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~4_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X2_Y3_N8
\add_instance|op[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~0_combout\ = (\input_vector~combout\(8) & ((\add_instance|shift_out~4_combout\) # ((!\add_instance|Equal5~0_combout\ & \input_vector~combout\(4))))) # (!\input_vector~combout\(8) & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal5~0_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|shift_out~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X4_Y3_N0
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = \input_vector~combout\(0) $ ((\input_vector~combout\(4)))
-- \add_instance|Add0~2\ = CARRY(((\input_vector~combout\(4))) # (!\input_vector~combout\(0)))
-- \add_instance|Add0~2COUT1_26\ = CARRY(((\input_vector~combout\(4))) # (!\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\,
	cout0 => \add_instance|Add0~2\,
	cout1 => \add_instance|Add0~2COUT1_26\);

-- Location: LC_X2_Y3_N3
\add_instance|op[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~1_combout\ = ((\input_vector~combout\(8) & ((\add_instance|Add0~0_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(0),
	datad => \add_instance|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~1_combout\);

-- Location: LC_X2_Y3_N4
\add_instance|op[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~2_combout\ = (\input_vector~combout\(9) & (\add_instance|op[0]~0_combout\ $ (((!\input_vector~combout\(8) & \add_instance|op[0]~1_combout\))))) # (!\input_vector~combout\(9) & (((\add_instance|op[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[0]~0_combout\,
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|op[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~2_combout\);

-- Location: LC_X2_Y3_N0
\add_instance|op[1]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~3_combout\ = (\input_vector~combout\(8) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(1) $ (((\input_vector~combout\(5) & \input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f06a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~3_combout\);

-- Location: LC_X4_Y2_N8
\add_instance|shift_out~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~6_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(3) & (!\input_vector~combout\(0) & \input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~6_combout\);

-- Location: LC_X4_Y2_N9
\add_instance|shift_out~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~5_combout\ = (\add_instance|shift_out~3_combout\ & ((\input_vector~combout\(3) & (\input_vector~combout\(6))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \add_instance|shift_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~5_combout\);

-- Location: LC_X4_Y2_N6
\add_instance|shift_out~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~7_combout\ = (\add_instance|shift_out~6_combout\) # ((\add_instance|shift_out~5_combout\) # ((\input_vector~combout\(5) & !\add_instance|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift_out~6_combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|Equal5~0_combout\,
	datad => \add_instance|shift_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~7_combout\);

-- Location: LC_X4_Y3_N1
\add_instance|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~5_combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(5) $ ((!\add_instance|Add0~2\)))
-- \add_instance|Add0~7\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|Add0~2\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (!\input_vector~combout\(5) & !\add_instance|Add0~2\)))
-- \add_instance|Add0~7COUT1_27\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|Add0~2COUT1_26\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (!\input_vector~combout\(5) & !\add_instance|Add0~2COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	cin0 => \add_instance|Add0~2\,
	cin1 => \add_instance|Add0~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~5_combout\,
	cout0 => \add_instance|Add0~7\,
	cout1 => \add_instance|Add0~7COUT1_27\);

-- Location: LC_X4_Y1_N2
\add_instance|op[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~4_combout\ = (\add_instance|op[1]~3_combout\ & ((\add_instance|shift_out~7_combout\) # ((!\input_vector~combout\(8))))) # (!\add_instance|op[1]~3_combout\ & (((\input_vector~combout\(8) & \add_instance|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[1]~3_combout\,
	datab => \add_instance|shift_out~7_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~4_combout\);

-- Location: LC_X4_Y3_N6
\add_instance|shift_out~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~9_combout\ = (!\input_vector~combout\(3) & (\input_vector~combout\(4) & (!\input_vector~combout\(0) & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~9_combout\);

-- Location: LC_X4_Y2_N5
\add_instance|shift_out~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~8_combout\ = (\add_instance|shift_out~3_combout\ & ((\input_vector~combout\(3) & (\input_vector~combout\(7))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(5),
	datad => \add_instance|shift_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~8_combout\);

-- Location: LC_X4_Y3_N5
\add_instance|shift_out~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~10_combout\ = (\add_instance|shift_out~9_combout\) # ((\add_instance|shift_out~8_combout\) # ((\input_vector~combout\(6) & !\add_instance|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift_out~9_combout\,
	datab => \add_instance|shift_out~8_combout\,
	datac => \input_vector~combout\(6),
	datad => \add_instance|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~10_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X4_Y3_N9
\add_instance|op[2]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~11_combout\ = (\input_vector~combout\(8) & (((!\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(2) $ (((\input_vector~combout\(6) & \input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3738",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~11_combout\);

-- Location: LC_X4_Y3_N2
\add_instance|Add0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~10_combout\ = \input_vector~combout\(6) $ (\input_vector~combout\(2) $ ((\add_instance|Add0~7\)))
-- \add_instance|Add0~12\ = CARRY((\input_vector~combout\(6) & ((!\add_instance|Add0~7\) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(2) & !\add_instance|Add0~7\)))
-- \add_instance|Add0~12COUT1_28\ = CARRY((\input_vector~combout\(6) & ((!\add_instance|Add0~7COUT1_27\) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(2) & !\add_instance|Add0~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(2),
	cin0 => \add_instance|Add0~7\,
	cin1 => \add_instance|Add0~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~10_combout\,
	cout0 => \add_instance|Add0~12\,
	cout1 => \add_instance|Add0~12COUT1_28\);

-- Location: LC_X4_Y3_N8
\add_instance|op[2]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~12_combout\ = (\add_instance|op[2]~11_combout\ & (((\add_instance|Add0~10_combout\) # (!\input_vector~combout\(8))))) # (!\add_instance|op[2]~11_combout\ & (\add_instance|shift_out~10_combout\ & (\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift_out~10_combout\,
	datab => \add_instance|op[2]~11_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~12_combout\);

-- Location: LC_X4_Y2_N0
\add_instance|shift_out~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~11_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~11_combout\);

-- Location: LC_X4_Y2_N7
\add_instance|shift_out~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~12_combout\ = (!\input_vector~combout\(3) & ((\add_instance|shift_out~11_combout\) # ((\input_vector~combout\(6) & \add_instance|shift_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(6),
	datac => \add_instance|shift_out~11_combout\,
	datad => \add_instance|shift_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~12_combout\);

-- Location: LC_X4_Y2_N2
\add_instance|shift_out~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift_out~13_combout\ = (\add_instance|shift_out~12_combout\) # ((!\input_vector~combout\(1) & (!\input_vector~combout\(0) & \input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|shift_out~12_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift_out~13_combout\);

-- Location: LC_X2_Y3_N5
\add_instance|op[3]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~5_combout\ = (\input_vector~combout\(8) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(3) $ (((\input_vector~combout\(7) & \input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~5_combout\);

-- Location: LC_X4_Y3_N3
\add_instance|Add0~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~15_combout\ = \input_vector~combout\(3) $ (\input_vector~combout\(7) $ ((!\add_instance|Add0~12\)))
-- \add_instance|Add0~17\ = CARRY((\input_vector~combout\(3) & ((!\add_instance|Add0~12\) # (!\input_vector~combout\(7)))) # (!\input_vector~combout\(3) & (!\input_vector~combout\(7) & !\add_instance|Add0~12\)))
-- \add_instance|Add0~17COUT1_29\ = CARRY((\input_vector~combout\(3) & ((!\add_instance|Add0~12COUT1_28\) # (!\input_vector~combout\(7)))) # (!\input_vector~combout\(3) & (!\input_vector~combout\(7) & !\add_instance|Add0~12COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(7),
	cin0 => \add_instance|Add0~12\,
	cin1 => \add_instance|Add0~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~15_combout\,
	cout0 => \add_instance|Add0~17\,
	cout1 => \add_instance|Add0~17COUT1_29\);

-- Location: LC_X2_Y3_N7
\add_instance|op[3]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~6_combout\ = (\input_vector~combout\(8) & ((\add_instance|op[3]~5_combout\ & (\add_instance|shift_out~13_combout\)) # (!\add_instance|op[3]~5_combout\ & ((\add_instance|Add0~15_combout\))))) # (!\input_vector~combout\(8) & 
-- (((\add_instance|op[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift_out~13_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|op[3]~5_combout\,
	datad => \add_instance|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~6_combout\);

-- Location: LC_X4_Y3_N4
\add_instance|Add0~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~20_combout\ = (((\add_instance|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_instance|Add0~17\,
	cin1 => \add_instance|Add0~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~20_combout\);

-- Location: LC_X2_Y3_N1
\add_instance|op[4]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~7_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Add0~20_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~7_combout\);

-- Location: LC_X2_Y3_N2
\add_instance|op[5]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~8_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Add0~20_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~8_combout\);

-- Location: LC_X2_Y3_N9
\add_instance|op[6]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~9_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Add0~20_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~9_combout\);

-- Location: LC_X2_Y3_N6
\add_instance|op[7]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~10_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\add_instance|Add0~20_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~10_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[0]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[1]~4_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[2]~12_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[3]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[4]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[5]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[6]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[7]~10_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


