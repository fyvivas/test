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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/29/2024 15:57:29"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tablasum IS
    PORT (
	SUM : IN std_logic_vector(4 DOWNTO 0);
	D : OUT std_logic_vector(3 DOWNTO 0);
	U : OUT std_logic_vector(3 DOWNTO 0)
	);
END tablasum;

-- Design Ports Information
-- D[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tablasum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SUM : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_U : std_logic_vector(3 DOWNTO 0);
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \U[0]~output_o\ : std_logic;
SIGNAL \U[1]~output_o\ : std_logic;
SIGNAL \U[2]~output_o\ : std_logic;
SIGNAL \U[3]~output_o\ : std_logic;
SIGNAL \SUM[4]~input_o\ : std_logic;
SIGNAL \SUM[1]~input_o\ : std_logic;
SIGNAL \SUM[2]~input_o\ : std_logic;
SIGNAL \SUM[3]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SUM[0]~input_o\ : std_logic;
SIGNAL \U[0]~2_combout\ : std_logic;
SIGNAL \U[0]~3_combout\ : std_logic;
SIGNAL \U[1]~0_combout\ : std_logic;
SIGNAL \U[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SUM <= SUM;
D <= ww_D;
U <= ww_U;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X0_Y10_N9
\D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\U[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U[0]~3_combout\,
	devoe => ww_devoe,
	o => \U[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\U[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U[1]~1_combout\,
	devoe => ww_devoe,
	o => \U[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\U[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\U[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U[3]~output_o\);

-- Location: IOIBUF_X0_Y6_N8
\SUM[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM(4),
	o => \SUM[4]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\SUM[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM(1),
	o => \SUM[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\SUM[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM(2),
	o => \SUM[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\SUM[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM(3),
	o => \SUM[3]~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SUM[4]~input_o\ & ((\SUM[2]~input_o\ & (\SUM[1]~input_o\ & \SUM[3]~input_o\)) # (!\SUM[2]~input_o\ & ((!\SUM[3]~input_o\))))) # (!\SUM[4]~input_o\ & (\SUM[3]~input_o\ & ((\SUM[1]~input_o\) # (\SUM[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[4]~input_o\,
	datab => \SUM[1]~input_o\,
	datac => \SUM[2]~input_o\,
	datad => \SUM[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((!\SUM[2]~input_o\ & !\SUM[3]~input_o\)) # (!\SUM[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[4]~input_o\,
	datac => \SUM[2]~input_o\,
	datad => \SUM[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X3_Y0_N29
\SUM[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUM(0),
	o => \SUM[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N8
\U[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U[0]~2_combout\ = (\SUM[2]~input_o\ & (\SUM[3]~input_o\)) # (!\SUM[2]~input_o\ & ((\SUM[0]~input_o\ & ((!\SUM[1]~input_o\))) # (!\SUM[0]~input_o\ & (!\SUM[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[3]~input_o\,
	datab => \SUM[1]~input_o\,
	datac => \SUM[2]~input_o\,
	datad => \SUM[0]~input_o\,
	combout => \U[0]~2_combout\);

-- Location: LCCOMB_X1_Y8_N26
\U[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U[0]~3_combout\ = (\SUM[4]~input_o\ & (\U[0]~2_combout\ & ((\SUM[1]~input_o\) # (!\SUM[3]~input_o\)))) # (!\SUM[4]~input_o\ & (\SUM[3]~input_o\ & ((\SUM[1]~input_o\) # (\U[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[4]~input_o\,
	datab => \SUM[1]~input_o\,
	datac => \U[0]~2_combout\,
	datad => \SUM[3]~input_o\,
	combout => \U[0]~3_combout\);

-- Location: LCCOMB_X1_Y8_N12
\U[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U[1]~0_combout\ = (\SUM[3]~input_o\) # ((\SUM[2]~input_o\) # ((\SUM[1]~input_o\ & \SUM[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[3]~input_o\,
	datab => \SUM[1]~input_o\,
	datac => \SUM[2]~input_o\,
	datad => \SUM[0]~input_o\,
	combout => \U[1]~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\U[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U[1]~1_combout\ = (\SUM[4]~input_o\ & \U[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[4]~input_o\,
	datad => \U[1]~0_combout\,
	combout => \U[1]~1_combout\);

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_U(0) <= \U[0]~output_o\;

ww_U(1) <= \U[1]~output_o\;

ww_U(2) <= \U[2]~output_o\;

ww_U(3) <= \U[3]~output_o\;
END structure;


