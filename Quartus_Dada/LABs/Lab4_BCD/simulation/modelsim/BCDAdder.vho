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

-- DATE "10/28/2022 18:40:02"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \add_instance|adder1|fulladder1|half1|xor1|Y~combout\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \add_instance|adder1|fulladder2|or1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|or2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|adder1|fulladder3|or1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|or2|Y~1_combout\ : std_logic;
SIGNAL \add_instance|adder2|fulladder2|half1|xor1|Y~combout\ : std_logic;
SIGNAL \add_instance|adder1|fulladder3|half2|xor1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|adder2|fulladder3|half2|xor1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|adder2|fulladder4|half2|xor1|Y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N16
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|adder1|fulladder1|half1|xor1|Y~combout\,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|adder2|fulladder2|half1|xor1|Y~combout\,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|adder2|fulladder3|half2|xor1|Y~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|adder2|fulladder4|half2|xor1|Y~combout\,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|or2|Y~1_combout\,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOIBUF_X6_Y0_N1
\input_vector[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: LCCOMB_X12_Y1_N24
\add_instance|adder1|fulladder1|half1|xor1|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder1|fulladder1|half1|xor1|Y~combout\ = \input_vector[4]~input_o\ $ (\input_vector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datad => \input_vector[0]~input_o\,
	combout => \add_instance|adder1|fulladder1|half1|xor1|Y~combout\);

-- Location: IOIBUF_X6_Y0_N8
\input_vector[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\input_vector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: LCCOMB_X12_Y1_N10
\add_instance|adder1|fulladder2|half2|xor1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\ = \input_vector[5]~input_o\ $ (\input_vector[1]~input_o\ $ (((\input_vector[4]~input_o\ & \input_vector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[1]~input_o\,
	datad => \input_vector[0]~input_o\,
	combout => \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\);

-- Location: IOIBUF_X8_Y0_N15
\input_vector[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\input_vector[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\input_vector[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\input_vector[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N20
\add_instance|adder1|fulladder2|or1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder1|fulladder2|or1|Y~0_combout\ = (\input_vector[5]~input_o\ & ((\input_vector[1]~input_o\) # ((\input_vector[4]~input_o\ & \input_vector[0]~input_o\)))) # (!\input_vector[5]~input_o\ & (\input_vector[4]~input_o\ & 
-- (\input_vector[1]~input_o\ & \input_vector[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[1]~input_o\,
	datad => \input_vector[0]~input_o\,
	combout => \add_instance|adder1|fulladder2|or1|Y~0_combout\);

-- Location: LCCOMB_X12_Y1_N22
\add_instance|or2|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|or2|Y~0_combout\ = (\add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\) # (\input_vector[6]~input_o\ $ (\input_vector[2]~input_o\ $ (\add_instance|adder1|fulladder2|or1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\,
	datab => \input_vector[6]~input_o\,
	datac => \input_vector[2]~input_o\,
	datad => \add_instance|adder1|fulladder2|or1|Y~0_combout\,
	combout => \add_instance|or2|Y~0_combout\);

-- Location: LCCOMB_X12_Y1_N16
\add_instance|adder1|fulladder3|or1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder1|fulladder3|or1|Y~0_combout\ = (\input_vector[6]~input_o\ & ((\input_vector[2]~input_o\) # (\add_instance|adder1|fulladder2|or1|Y~0_combout\))) # (!\input_vector[6]~input_o\ & (\input_vector[2]~input_o\ & 
-- \add_instance|adder1|fulladder2|or1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[6]~input_o\,
	datac => \input_vector[2]~input_o\,
	datad => \add_instance|adder1|fulladder2|or1|Y~0_combout\,
	combout => \add_instance|adder1|fulladder3|or1|Y~0_combout\);

-- Location: LCCOMB_X12_Y1_N26
\add_instance|or2|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|or2|Y~1_combout\ = (\input_vector[3]~input_o\ & ((\input_vector[7]~input_o\) # ((\add_instance|or2|Y~0_combout\) # (\add_instance|adder1|fulladder3|or1|Y~0_combout\)))) # (!\input_vector[3]~input_o\ & ((\input_vector[7]~input_o\ & 
-- ((\add_instance|or2|Y~0_combout\) # (\add_instance|adder1|fulladder3|or1|Y~0_combout\))) # (!\input_vector[7]~input_o\ & (\add_instance|or2|Y~0_combout\ & \add_instance|adder1|fulladder3|or1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[3]~input_o\,
	datab => \input_vector[7]~input_o\,
	datac => \add_instance|or2|Y~0_combout\,
	datad => \add_instance|adder1|fulladder3|or1|Y~0_combout\,
	combout => \add_instance|or2|Y~1_combout\);

-- Location: LCCOMB_X12_Y1_N4
\add_instance|adder2|fulladder2|half1|xor1|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder2|fulladder2|half1|xor1|Y~combout\ = \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\ $ (\add_instance|or2|Y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\,
	datac => \add_instance|or2|Y~1_combout\,
	combout => \add_instance|adder2|fulladder2|half1|xor1|Y~combout\);

-- Location: LCCOMB_X12_Y1_N6
\add_instance|adder1|fulladder3|half2|xor1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder1|fulladder3|half2|xor1|Y~0_combout\ = \input_vector[6]~input_o\ $ (\input_vector[2]~input_o\ $ (\add_instance|adder1|fulladder2|or1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[6]~input_o\,
	datac => \input_vector[2]~input_o\,
	datad => \add_instance|adder1|fulladder2|or1|Y~0_combout\,
	combout => \add_instance|adder1|fulladder3|half2|xor1|Y~0_combout\);

-- Location: LCCOMB_X12_Y1_N0
\add_instance|adder2|fulladder3|half2|xor1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder2|fulladder3|half2|xor1|Y~0_combout\ = \add_instance|adder1|fulladder3|half2|xor1|Y~0_combout\ $ (((\add_instance|or2|Y~1_combout\ & !\add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder1|fulladder3|half2|xor1|Y~0_combout\,
	datac => \add_instance|or2|Y~1_combout\,
	datad => \add_instance|adder1|fulladder2|half2|xor1|Y~0_combout\,
	combout => \add_instance|adder2|fulladder3|half2|xor1|Y~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\add_instance|adder2|fulladder4|half2|xor1|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|adder2|fulladder4|half2|xor1|Y~combout\ = (\input_vector[3]~input_o\ & (\input_vector[7]~input_o\ $ (\add_instance|or2|Y~0_combout\ $ (!\add_instance|adder1|fulladder3|or1|Y~0_combout\)))) # (!\input_vector[3]~input_o\ & 
-- ((\input_vector[7]~input_o\ & (\add_instance|or2|Y~0_combout\ $ (!\add_instance|adder1|fulladder3|or1|Y~0_combout\))) # (!\input_vector[7]~input_o\ & (!\add_instance|or2|Y~0_combout\ & \add_instance|adder1|fulladder3|or1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[3]~input_o\,
	datab => \input_vector[7]~input_o\,
	datac => \add_instance|or2|Y~0_combout\,
	datad => \add_instance|adder1|fulladder3|or1|Y~0_combout\,
	combout => \add_instance|adder2|fulladder4|half2|xor1|Y~combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;
END structure;


