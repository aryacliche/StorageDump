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

-- DATE "10/28/2022 23:28:13"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ToneGenerator IS
    PORT (
	clk_out : BUFFER std_logic;
	led_sa : BUFFER std_logic;
	led_re : BUFFER std_logic;
	led_ga : BUFFER std_logic;
	led_ma : BUFFER std_logic;
	led_pa : BUFFER std_logic;
	led_dha : BUFFER std_logic;
	led_ni : BUFFER std_logic;
	led_saa : BUFFER std_logic;
	clk_50 : IN std_logic;
	sa : IN std_logic;
	re : IN std_logic;
	ga : IN std_logic;
	ma : IN std_logic;
	pa : IN std_logic;
	dha : IN std_logic;
	ni : IN std_logic;
	saa : IN std_logic
	);
END ToneGenerator;

-- Design Ports Information
-- clk_out	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sa	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_re	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_ga	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_ma	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_pa	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dha	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_ni	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_saa	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- re	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ni	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saa	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pa	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dha	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sa	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ga	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ToneGenerator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_led_sa : std_logic;
SIGNAL ww_led_re : std_logic;
SIGNAL ww_led_ga : std_logic;
SIGNAL ww_led_ma : std_logic;
SIGNAL ww_led_pa : std_logic;
SIGNAL ww_led_dha : std_logic;
SIGNAL ww_led_ni : std_logic;
SIGNAL ww_led_saa : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_sa : std_logic;
SIGNAL ww_re : std_logic;
SIGNAL ww_ga : std_logic;
SIGNAL ww_ma : std_logic;
SIGNAL ww_pa : std_logic;
SIGNAL ww_dha : std_logic;
SIGNAL ww_ni : std_logic;
SIGNAL ww_saa : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \led_sa~output_o\ : std_logic;
SIGNAL \led_re~output_o\ : std_logic;
SIGNAL \led_ga~output_o\ : std_logic;
SIGNAL \led_ma~output_o\ : std_logic;
SIGNAL \led_pa~output_o\ : std_logic;
SIGNAL \led_dha~output_o\ : std_logic;
SIGNAL \led_ni~output_o\ : std_logic;
SIGNAL \led_saa~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ga~input_o\ : std_logic;
SIGNAL \ma~input_o\ : std_logic;
SIGNAL \sa~input_o\ : std_logic;
SIGNAL \pa~input_o\ : std_logic;
SIGNAL \saa~input_o\ : std_logic;
SIGNAL \dha~input_o\ : std_logic;
SIGNAL \ni~input_o\ : std_logic;
SIGNAL \max_count_process~0_combout\ : std_logic;
SIGNAL \max_count_process~1_combout\ : std_logic;
SIGNAL \re~input_o\ : std_logic;
SIGNAL \max_count_process~4_combout\ : std_logic;
SIGNAL \max_count_process~5_combout\ : std_logic;
SIGNAL \max_count_process~6_combout\ : std_logic;
SIGNAL \max_count_process~7_combout\ : std_logic;
SIGNAL \max_count[11]~16_combout\ : std_logic;
SIGNAL \max_count~4_combout\ : std_logic;
SIGNAL \max_count~5_combout\ : std_logic;
SIGNAL \max_count_process~2_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \max_count_process~8_combout\ : std_logic;
SIGNAL \max_count_process~9_combout\ : std_logic;
SIGNAL \max_count[9]~6_combout\ : std_logic;
SIGNAL \max_count[9]~17_combout\ : std_logic;
SIGNAL \max_count[10]~24_combout\ : std_logic;
SIGNAL \max_count_process~10_combout\ : std_logic;
SIGNAL \max_count[10]~15_combout\ : std_logic;
SIGNAL \max_count[4]~21_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \max_count[13]~13_combout\ : std_logic;
SIGNAL \max_count[13]~18_combout\ : std_logic;
SIGNAL \max_count[15]~7_combout\ : std_logic;
SIGNAL \max_count_process~3_combout\ : std_logic;
SIGNAL \max_count[2]~22_combout\ : std_logic;
SIGNAL \max_count[12]~9_combout\ : std_logic;
SIGNAL \max_count[12]~10_combout\ : std_logic;
SIGNAL \max_count[5]~19_combout\ : std_logic;
SIGNAL \max_count[5]~20_combout\ : std_logic;
SIGNAL \max_count_process~11_combout\ : std_logic;
SIGNAL \max_count[12]~11_combout\ : std_logic;
SIGNAL \max_count[12]~12_combout\ : std_logic;
SIGNAL \max_count[8]~23_combout\ : std_logic;
SIGNAL \max_count[15]~8_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \max_count[11]~14_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~33_combout\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~37_combout\ : std_logic;
SIGNAL \LessThan0~38_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~35_combout\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~q\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_max_count_process~2_combout\ : std_logic;
SIGNAL \ALT_INV_output~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clk_out <= ww_clk_out;
led_sa <= ww_led_sa;
led_re <= ww_led_re;
led_ga <= ww_led_ga;
led_ma <= ww_led_ma;
led_pa <= ww_led_pa;
led_dha <= ww_led_dha;
led_ni <= ww_led_ni;
led_saa <= ww_led_saa;
ww_clk_50 <= clk_50;
ww_sa <= sa;
ww_re <= re;
ww_ga <= ga;
ww_ma <= ma;
ww_pa <= pa;
ww_dha <= dha;
ww_ni <= ni;
ww_saa <= saa;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_max_count_process~2_combout\ <= NOT \max_count_process~2_combout\;
\ALT_INV_output~q\ <= NOT \output~q\;
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

-- Location: IOOBUF_X60_Y2_N23
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\led_sa~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_max_count_process~2_combout\,
	devoe => ww_devoe,
	o => \led_sa~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led_re~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~3_combout\,
	devoe => ww_devoe,
	o => \led_re~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led_ga~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~5_combout\,
	devoe => ww_devoe,
	o => \led_ga~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led_ma~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~7_combout\,
	devoe => ww_devoe,
	o => \led_ma~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led_pa~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~9_combout\,
	devoe => ww_devoe,
	o => \led_pa~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led_dha~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~10_combout\,
	devoe => ww_devoe,
	o => \led_dha~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led_ni~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count_process~11_combout\,
	devoe => ww_devoe,
	o => \led_ni~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led_saa~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_count~5_combout\,
	devoe => ww_devoe,
	o => \led_saa~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X6_Y0_N8
\ga~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ga,
	o => \ga~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\ma~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ma,
	o => \ma~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\sa~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sa,
	o => \sa~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\pa~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pa,
	o => \pa~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\saa~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saa,
	o => \saa~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\dha~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dha,
	o => \dha~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\ni~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ni,
	o => \ni~input_o\);

-- Location: LCCOMB_X12_Y3_N4
\max_count_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~0_combout\ = (!\pa~input_o\ & (!\saa~input_o\ & (!\dha~input_o\ & !\ni~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pa~input_o\,
	datab => \saa~input_o\,
	datac => \dha~input_o\,
	datad => \ni~input_o\,
	combout => \max_count_process~0_combout\);

-- Location: LCCOMB_X9_Y3_N12
\max_count_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~1_combout\ = (!\ga~input_o\ & (!\ma~input_o\ & (\sa~input_o\ & \max_count_process~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ga~input_o\,
	datab => \ma~input_o\,
	datac => \sa~input_o\,
	datad => \max_count_process~0_combout\,
	combout => \max_count_process~1_combout\);

-- Location: IOIBUF_X6_Y0_N29
\re~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_re,
	o => \re~input_o\);

-- Location: LCCOMB_X9_Y3_N10
\max_count_process~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~4_combout\ = (\ga~input_o\ & (\sa~input_o\ & \re~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ga~input_o\,
	datab => \sa~input_o\,
	datac => \re~input_o\,
	combout => \max_count_process~4_combout\);

-- Location: LCCOMB_X9_Y3_N24
\max_count_process~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~5_combout\ = (\max_count_process~4_combout\ & (!\ma~input_o\ & \max_count_process~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~4_combout\,
	datac => \ma~input_o\,
	datad => \max_count_process~0_combout\,
	combout => \max_count_process~5_combout\);

-- Location: LCCOMB_X9_Y3_N6
\max_count_process~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~6_combout\ = (\ga~input_o\ & (\ma~input_o\ & (\sa~input_o\ & \re~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ga~input_o\,
	datab => \ma~input_o\,
	datac => \sa~input_o\,
	datad => \re~input_o\,
	combout => \max_count_process~6_combout\);

-- Location: LCCOMB_X9_Y3_N20
\max_count_process~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~7_combout\ = (\max_count_process~6_combout\ & \max_count_process~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_count_process~6_combout\,
	datad => \max_count_process~0_combout\,
	combout => \max_count_process~7_combout\);

-- Location: LCCOMB_X9_Y3_N22
\max_count[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[11]~16_combout\ = (!\max_count_process~5_combout\ & (!\max_count_process~7_combout\ & ((!\re~input_o\) # (!\max_count_process~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~5_combout\,
	datac => \re~input_o\,
	datad => \max_count_process~7_combout\,
	combout => \max_count[11]~16_combout\);

-- Location: LCCOMB_X12_Y3_N0
\max_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count~4_combout\ = (((!\ni~input_o\) # (!\dha~input_o\)) # (!\max_count_process~6_combout\)) # (!\pa~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pa~input_o\,
	datab => \max_count_process~6_combout\,
	datac => \dha~input_o\,
	datad => \ni~input_o\,
	combout => \max_count~4_combout\);

-- Location: LCCOMB_X10_Y5_N22
\max_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count~5_combout\ = (!\max_count~4_combout\ & \saa~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_count~4_combout\,
	datad => \saa~input_o\,
	combout => \max_count~5_combout\);

-- Location: LCCOMB_X9_Y3_N14
\max_count_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~2_combout\ = (\re~input_o\) # (!\max_count_process~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re~input_o\,
	datad => \max_count_process~1_combout\,
	combout => \max_count_process~2_combout\);

-- Location: LCCOMB_X9_Y3_N16
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\max_count_process~1_combout\ & (!\max_count_process~5_combout\ & ((!\max_count_process~0_combout\) # (!\max_count_process~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~5_combout\,
	datac => \max_count_process~6_combout\,
	datad => \max_count_process~0_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X12_Y3_N22
\max_count_process~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~8_combout\ = (!\saa~input_o\ & (\max_count_process~4_combout\ & !\ni~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saa~input_o\,
	datac => \max_count_process~4_combout\,
	datad => \ni~input_o\,
	combout => \max_count_process~8_combout\);

-- Location: LCCOMB_X12_Y3_N8
\max_count_process~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~9_combout\ = (\max_count_process~8_combout\ & (!\dha~input_o\ & (\pa~input_o\ & \ma~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~8_combout\,
	datab => \dha~input_o\,
	datac => \pa~input_o\,
	datad => \ma~input_o\,
	combout => \max_count_process~9_combout\);

-- Location: LCCOMB_X10_Y5_N20
\max_count[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[9]~6_combout\ = (\max_count_process~9_combout\) # (!\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \max_count_process~9_combout\,
	combout => \max_count[9]~6_combout\);

-- Location: LCCOMB_X9_Y3_N4
\max_count[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[9]~17_combout\ = (\max_count[9]~6_combout\ & ((\max_count[11]~16_combout\) # ((!\max_count_process~2_combout\)))) # (!\max_count[9]~6_combout\ & (((\max_count~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[11]~16_combout\,
	datab => \max_count~5_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count[9]~6_combout\,
	combout => \max_count[9]~17_combout\);

-- Location: LCCOMB_X9_Y3_N8
\max_count[10]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[10]~24_combout\ = (\max_count_process~1_combout\ & (!\re~input_o\ & ((!\max_count_process~0_combout\) # (!\max_count_process~6_combout\)))) # (!\max_count_process~1_combout\ & (((!\max_count_process~0_combout\)) # 
-- (!\max_count_process~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~6_combout\,
	datac => \re~input_o\,
	datad => \max_count_process~0_combout\,
	combout => \max_count[10]~24_combout\);

-- Location: LCCOMB_X12_Y3_N30
\max_count_process~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~10_combout\ = (\max_count_process~8_combout\ & (\dha~input_o\ & (\pa~input_o\ & \ma~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~8_combout\,
	datab => \dha~input_o\,
	datac => \pa~input_o\,
	datad => \ma~input_o\,
	combout => \max_count_process~10_combout\);

-- Location: LCCOMB_X10_Y3_N0
\max_count[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[10]~15_combout\ = (\max_count[9]~6_combout\ & ((\max_count[10]~24_combout\) # ((!\max_count_process~2_combout\)))) # (!\max_count[9]~6_combout\ & (((\max_count_process~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[10]~24_combout\,
	datab => \max_count[9]~6_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count_process~10_combout\,
	combout => \max_count[10]~15_combout\);

-- Location: LCCOMB_X9_Y3_N26
\max_count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[4]~21_combout\ = (\max_count_process~1_combout\ & (((\re~input_o\)))) # (!\max_count_process~1_combout\ & (\saa~input_o\ & ((!\max_count~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \saa~input_o\,
	datac => \re~input_o\,
	datad => \max_count~4_combout\,
	combout => \max_count[4]~21_combout\);

-- Location: LCCOMB_X9_Y3_N30
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\max_count_process~1_combout\ & (((\ma~input_o\) # (!\max_count_process~0_combout\)) # (!\max_count_process~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~4_combout\,
	datac => \ma~input_o\,
	datad => \max_count_process~0_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X9_Y3_N28
\max_count[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[13]~13_combout\ = (!\max_count_process~5_combout\ & ((\max_count_process~1_combout\ & (\re~input_o\)) # (!\max_count_process~1_combout\ & ((\max_count_process~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~5_combout\,
	datac => \re~input_o\,
	datad => \max_count_process~7_combout\,
	combout => \max_count[13]~13_combout\);

-- Location: LCCOMB_X9_Y5_N22
\max_count[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[13]~18_combout\ = (\max_count[13]~13_combout\) # ((\Equal0~9_combout\ & (!\max_count_process~7_combout\ & \max_count_process~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \max_count_process~7_combout\,
	datac => \max_count_process~10_combout\,
	datad => \max_count[13]~13_combout\,
	combout => \max_count[13]~18_combout\);

-- Location: LCCOMB_X12_Y5_N28
\max_count[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[15]~7_combout\ = (\max_count_process~10_combout\) # (!\max_count~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~10_combout\,
	datad => \max_count~4_combout\,
	combout => \max_count[15]~7_combout\);

-- Location: LCCOMB_X9_Y3_N0
\max_count_process~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~3_combout\ = (\re~input_o\ & \max_count_process~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re~input_o\,
	datad => \max_count_process~1_combout\,
	combout => \max_count_process~3_combout\);

-- Location: LCCOMB_X10_Y5_N26
\max_count[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[2]~22_combout\ = (\max_count[9]~6_combout\ & (((\max_count_process~2_combout\ & !\max_count_process~3_combout\)))) # (!\max_count[9]~6_combout\ & (\max_count[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[15]~7_combout\,
	datab => \max_count[9]~6_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count_process~3_combout\,
	combout => \max_count[2]~22_combout\);

-- Location: LCCOMB_X12_Y3_N26
\max_count[12]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[12]~9_combout\ = (\pa~input_o\ & ((!\ma~input_o\))) # (!\pa~input_o\ & (\dha~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dha~input_o\,
	datac => \pa~input_o\,
	datad => \ma~input_o\,
	combout => \max_count[12]~9_combout\);

-- Location: LCCOMB_X9_Y3_N18
\max_count[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[12]~10_combout\ = (\max_count_process~1_combout\ & (!\re~input_o\ & ((\max_count[12]~9_combout\) # (!\max_count_process~8_combout\)))) # (!\max_count_process~1_combout\ & ((\max_count[12]~9_combout\) # ((!\max_count_process~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count[12]~9_combout\,
	datac => \re~input_o\,
	datad => \max_count_process~8_combout\,
	combout => \max_count[12]~10_combout\);

-- Location: LCCOMB_X10_Y5_N14
\max_count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[5]~19_combout\ = (!\max_count[12]~10_combout\ & (!\max_count_process~5_combout\ & !\max_count_process~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[12]~10_combout\,
	datac => \max_count_process~5_combout\,
	datad => \max_count_process~9_combout\,
	combout => \max_count[5]~19_combout\);

-- Location: LCCOMB_X10_Y5_N24
\max_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[5]~20_combout\ = (\max_count[5]~19_combout\) # (((\max_count~5_combout\ & \max_count[12]~10_combout\)) # (!\max_count_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count~5_combout\,
	datab => \max_count[5]~19_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count[12]~10_combout\,
	combout => \max_count[5]~20_combout\);

-- Location: LCCOMB_X10_Y5_N12
\max_count_process~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count_process~11_combout\ = (!\max_count~4_combout\ & !\saa~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_count~4_combout\,
	datad => \saa~input_o\,
	combout => \max_count_process~11_combout\);

-- Location: LCCOMB_X10_Y5_N16
\max_count[12]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[12]~11_combout\ = (!\max_count_process~3_combout\ & (!\max_count_process~9_combout\ & (!\max_count_process~5_combout\ & !\max_count[12]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~3_combout\,
	datab => \max_count_process~9_combout\,
	datac => \max_count_process~5_combout\,
	datad => \max_count[12]~10_combout\,
	combout => \max_count[12]~11_combout\);

-- Location: LCCOMB_X10_Y5_N30
\max_count[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[12]~12_combout\ = (\max_count[12]~11_combout\) # (((\max_count_process~11_combout\ & \max_count[12]~10_combout\)) # (!\max_count_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~11_combout\,
	datab => \max_count[12]~11_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count[12]~10_combout\,
	combout => \max_count[12]~12_combout\);

-- Location: LCCOMB_X10_Y5_N28
\max_count[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[8]~23_combout\ = (\Equal0~8_combout\ & (((\max_count_process~9_combout\) # (!\max_count~4_combout\)))) # (!\Equal0~8_combout\ & (\max_count_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \max_count_process~2_combout\,
	datac => \max_count~4_combout\,
	datad => \max_count_process~9_combout\,
	combout => \max_count[8]~23_combout\);

-- Location: LCCOMB_X10_Y5_N6
\max_count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[15]~8_combout\ = ((\max_count[15]~7_combout\ & (!\max_count_process~5_combout\ & !\max_count_process~3_combout\))) # (!\max_count_process~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[15]~7_combout\,
	datab => \max_count_process~5_combout\,
	datac => \max_count_process~2_combout\,
	datad => \max_count_process~3_combout\,
	combout => \max_count[15]~8_combout\);

-- Location: LCCOMB_X10_Y5_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~8_combout\ & (!\max_count[8]~23_combout\ & !\max_count[15]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \max_count[8]~23_combout\,
	datad => \max_count[15]~8_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X10_Y5_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\max_count[2]~22_combout\ & (!\max_count[5]~20_combout\ & (!\max_count[12]~12_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[2]~22_combout\,
	datab => \max_count[5]~20_combout\,
	datac => \max_count[12]~12_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X10_Y5_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\max_count[4]~21_combout\ & (!\max_count[13]~18_combout\ & (\max_count~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[4]~21_combout\,
	datab => \max_count[13]~18_combout\,
	datac => \max_count~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X9_Y4_N0
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\max_count[9]~17_combout\) # ((\max_count[10]~15_combout\) # (!\Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \max_count[9]~17_combout\,
	datac => \max_count[10]~15_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X6_Y4_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X6_Y4_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X6_Y5_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y5_N30
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (!\Add0~0_combout\ & ((count(31)) # ((\LessThan0~36_combout\ & \LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X8_Y5_N31
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X6_Y5_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X8_Y5_N4
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~2_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X8_Y5_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X6_Y5_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X7_Y5_N6
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~4_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => \Add0~4_combout\,
	datac => count(31),
	datad => \LessThan0~36_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X7_Y5_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X6_Y5_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y5_N20
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~6_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \Add0~6_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X7_Y5_N21
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X6_Y5_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X8_Y5_N14
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~8_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => \Add0~8_combout\,
	datac => \LessThan0~36_combout\,
	datad => count(31),
	combout => \Add0~76_combout\);

-- Location: FF_X8_Y5_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X6_Y5_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X7_Y5_N16
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~10_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \LessThan0~30_combout\,
	datac => count(31),
	datad => \LessThan0~36_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X7_Y5_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X6_Y5_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X7_Y5_N18
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~12_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \Add0~12_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X7_Y5_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X6_Y5_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X7_Y5_N28
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~14_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \Add0~14_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X7_Y5_N29
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X6_Y5_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X7_Y5_N12
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~16_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \Add0~16_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X7_Y5_N13
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X6_Y5_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X7_Y5_N30
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~18_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \Add0~18_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X7_Y5_N31
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X6_Y5_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X7_Y5_N26
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~20_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => \Add0~20_combout\,
	datac => count(31),
	datad => \LessThan0~36_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X7_Y5_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X6_Y5_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X9_Y5_N28
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~22_combout\ & ((count(31)) # ((\LessThan0~36_combout\ & \LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X9_Y5_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X6_Y5_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X9_Y5_N8
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~24_combout\ & ((count(31)) # ((\LessThan0~36_combout\ & \LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add0~67_combout\);

-- Location: FF_X9_Y5_N9
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~67_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X6_Y5_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X9_Y5_N6
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~26_combout\ & ((count(31)) # ((\LessThan0~36_combout\ & \LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X9_Y5_N7
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X6_Y5_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X9_Y5_N2
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~28_combout\ & ((count(31)) # ((\LessThan0~36_combout\ & \LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X9_Y5_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X6_Y5_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X8_Y5_N22
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~30_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \Add0~30_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X8_Y5_N23
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X6_Y4_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X8_Y5_N8
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\Add0~32_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	datad => \Add0~32_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X8_Y5_N9
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~66_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X9_Y5_N4
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = count(14) $ (((\Equal0~9_combout\ & (\max_count[15]~7_combout\)) # (!\Equal0~9_combout\ & ((\max_count_process~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \max_count[15]~7_combout\,
	datac => \max_count_process~2_combout\,
	datad => count(14),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X9_Y5_N20
\LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\max_count[12]~12_combout\ & !count(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \max_count[12]~12_combout\,
	datac => count(12),
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X9_Y5_N26
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = (!\LessThan0~7_combout\ & ((count(13) & (\max_count[13]~18_combout\ & \LessThan0~14_combout\)) # (!count(13) & ((\max_count[13]~18_combout\) # (\LessThan0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => \max_count[13]~18_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: LCCOMB_X9_Y5_N0
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = (!count(14) & ((\Equal0~9_combout\ & (\max_count[15]~7_combout\)) # (!\Equal0~9_combout\ & ((\max_count_process~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \max_count[15]~7_combout\,
	datac => \max_count_process~2_combout\,
	datad => count(14),
	combout => \LessThan0~13_combout\);

-- Location: LCCOMB_X10_Y5_N4
\max_count[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_count[11]~14_combout\ = (\max_count_process~3_combout\) # ((\Equal0~8_combout\ & ((\max_count_process~9_combout\) # (!\max_count~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~3_combout\,
	datab => \max_count_process~9_combout\,
	datac => \max_count~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \max_count[11]~14_combout\);

-- Location: LCCOMB_X9_Y5_N24
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = count(13) $ (((\max_count[13]~13_combout\) # ((\max_count_process~10_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[13]~13_combout\,
	datab => \max_count_process~10_combout\,
	datac => \Equal0~8_combout\,
	datad => count(13),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X9_Y5_N10
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\LessThan0~7_combout\ & (!\LessThan0~6_combout\ & (\max_count[12]~12_combout\ $ (!count(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[12]~12_combout\,
	datab => count(12),
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X9_Y5_N14
\LessThan0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (\max_count[11]~14_combout\ & (!count(11) & \LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[11]~14_combout\,
	datab => count(11),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X7_Y5_N0
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\max_count[9]~17_combout\ & !count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_count[9]~17_combout\,
	datad => count(9),
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X9_Y5_N18
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~8_combout\ & (\max_count[11]~14_combout\ $ (!count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[11]~14_combout\,
	datab => count(11),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X9_Y5_N16
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (\LessThan0~9_combout\ & ((count(10) & (\max_count[10]~15_combout\ & \LessThan0~10_combout\)) # (!count(10) & ((\max_count[10]~15_combout\) # (\LessThan0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \max_count[10]~15_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X9_Y5_N12
\LessThan0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = (\LessThan0~15_combout\) # ((\LessThan0~13_combout\) # ((\LessThan0~12_combout\) # (\LessThan0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~15_combout\,
	datab => \LessThan0~13_combout\,
	datac => \LessThan0~12_combout\,
	datad => \LessThan0~11_combout\,
	combout => \LessThan0~16_combout\);

-- Location: LCCOMB_X7_Y5_N10
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = \max_count[9]~17_combout\ $ (count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_count[9]~17_combout\,
	datad => count(9),
	combout => \LessThan0~23_combout\);

-- Location: LCCOMB_X9_Y5_N30
\LessThan0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = (!\LessThan0~23_combout\ & (\LessThan0~9_combout\ & (count(10) $ (!\max_count[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \max_count[10]~15_combout\,
	datac => \LessThan0~23_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~24_combout\);

-- Location: LCCOMB_X7_Y5_N2
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = (count(6) & (\max_count[5]~20_combout\ & (\max_count[9]~17_combout\ & !count(5)))) # (!count(6) & ((\max_count[9]~17_combout\) # ((\max_count[5]~20_combout\ & !count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[5]~20_combout\,
	datab => count(6),
	datac => \max_count[9]~17_combout\,
	datad => count(5),
	combout => \LessThan0~17_combout\);

-- Location: LCCOMB_X7_Y5_N8
\LessThan0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (\Equal0~9_combout\ & (!count(7) & \LessThan0~17_combout\)) # (!\Equal0~9_combout\ & ((\LessThan0~17_combout\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => count(7),
	datad => \LessThan0~17_combout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X7_Y5_N14
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = (\Equal0~9_combout\ & (!count(7) & (count(6) $ (!\max_count[9]~17_combout\)))) # (!\Equal0~9_combout\ & (count(7) & (count(6) $ (!\max_count[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => count(6),
	datac => \max_count[9]~17_combout\,
	datad => count(7),
	combout => \LessThan0~19_combout\);

-- Location: LCCOMB_X9_Y3_N2
\LessThan0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = (\max_count_process~1_combout\ & (((\max_count_process~6_combout\ & \max_count_process~0_combout\)) # (!\re~input_o\))) # (!\max_count_process~1_combout\ & (\max_count_process~6_combout\ & ((\max_count_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~1_combout\,
	datab => \max_count_process~6_combout\,
	datac => \re~input_o\,
	datad => \max_count_process~0_combout\,
	combout => \LessThan0~32_combout\);

-- Location: LCCOMB_X7_Y5_N4
\LessThan0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = (\LessThan0~32_combout\ & (((\max_count[2]~22_combout\ & !count(2))) # (!count(3)))) # (!\LessThan0~32_combout\ & (!count(3) & (\max_count[2]~22_combout\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~32_combout\,
	datab => count(3),
	datac => \max_count[2]~22_combout\,
	datad => count(2),
	combout => \LessThan0~20_combout\);

-- Location: LCCOMB_X8_Y5_N12
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_combout\ = (\max_count_process~0_combout\ & ((\max_count_process~6_combout\) # ((\max_count~4_combout\ & count(0))))) # (!\max_count_process~0_combout\ & (\max_count~4_combout\ & (count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count_process~0_combout\,
	datab => \max_count~4_combout\,
	datac => count(0),
	datad => \max_count_process~6_combout\,
	combout => \LessThan0~33_combout\);

-- Location: LCCOMB_X8_Y5_N18
\LessThan0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = (\Equal0~9_combout\ & (((\LessThan0~33_combout\)))) # (!\Equal0~9_combout\ & (((\re~input_o\)) # (!\max_count_process~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \max_count_process~1_combout\,
	datac => \re~input_o\,
	datad => \LessThan0~33_combout\,
	combout => \LessThan0~34_combout\);

-- Location: LCCOMB_X8_Y5_N0
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = (!count(1) & (\LessThan0~34_combout\ & (\max_count[2]~22_combout\ $ (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[2]~22_combout\,
	datab => count(1),
	datac => count(2),
	datad => \LessThan0~34_combout\,
	combout => \LessThan0~21_combout\);

-- Location: LCCOMB_X8_Y5_N24
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_combout\ = (\LessThan0~20_combout\) # ((\LessThan0~21_combout\ & (\LessThan0~32_combout\ $ (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~32_combout\,
	datab => count(3),
	datac => \LessThan0~20_combout\,
	datad => \LessThan0~21_combout\,
	combout => \LessThan0~37_combout\);

-- Location: LCCOMB_X8_Y5_N2
\LessThan0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~38_combout\ = (\LessThan0~19_combout\ & ((count(4) & (\max_count[4]~21_combout\ & \LessThan0~37_combout\)) # (!count(4) & ((\max_count[4]~21_combout\) # (\LessThan0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~19_combout\,
	datab => count(4),
	datac => \max_count[4]~21_combout\,
	datad => \LessThan0~37_combout\,
	combout => \LessThan0~38_combout\);

-- Location: LCCOMB_X8_Y5_N10
\LessThan0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = (\LessThan0~18_combout\) # ((\LessThan0~38_combout\ & (\max_count[5]~20_combout\ $ (!count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~18_combout\,
	datab => \max_count[5]~20_combout\,
	datac => count(5),
	datad => \LessThan0~38_combout\,
	combout => \LessThan0~22_combout\);

-- Location: LCCOMB_X8_Y5_N20
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = (\LessThan0~24_combout\ & ((count(8) & (\max_count[8]~23_combout\ & \LessThan0~22_combout\)) # (!count(8) & ((\max_count[8]~23_combout\) # (\LessThan0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \max_count[8]~23_combout\,
	datac => \LessThan0~24_combout\,
	datad => \LessThan0~22_combout\,
	combout => \LessThan0~25_combout\);

-- Location: LCCOMB_X8_Y5_N28
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_combout\ = (count(15) & (\max_count[15]~8_combout\ & ((\LessThan0~16_combout\) # (\LessThan0~25_combout\)))) # (!count(15) & ((\max_count[15]~8_combout\) # ((\LessThan0~16_combout\) # (\LessThan0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => \max_count[15]~8_combout\,
	datac => \LessThan0~16_combout\,
	datad => \LessThan0~25_combout\,
	combout => \LessThan0~35_combout\);

-- Location: LCCOMB_X8_Y5_N26
\LessThan0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = (\max_count[9]~6_combout\ & ((\LessThan0~35_combout\) # (!count(16)))) # (!\max_count[9]~6_combout\ & (!count(16) & \LessThan0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_count[9]~6_combout\,
	datac => count(16),
	datad => \LessThan0~35_combout\,
	combout => \LessThan0~36_combout\);

-- Location: LCCOMB_X7_Y4_N28
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~46_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X7_Y4_N29
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X6_Y4_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X7_Y4_N14
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~48_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X7_Y4_N15
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X6_Y4_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X7_Y4_N22
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~50_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~50_combout\,
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X7_Y4_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X6_Y4_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X7_Y4_N24
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~52_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~52_combout\,
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X7_Y4_N25
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X6_Y4_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X7_Y4_N18
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~54_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~54_combout\,
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X7_Y4_N19
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X6_Y4_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X7_Y4_N12
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~56_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~56_combout\,
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X7_Y4_N13
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X6_Y4_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X7_Y4_N8
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~58_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~30_combout\,
	datac => \Add0~58_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X7_Y4_N9
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~94_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X6_Y4_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X7_Y4_N30
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~60_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~60_combout\,
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X7_Y4_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X6_Y4_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X7_Y5_N24
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~62_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \LessThan0~30_combout\,
	datac => count(31),
	datad => \LessThan0~36_combout\,
	combout => \Add0~64_combout\);

-- Location: FF_X7_Y5_N25
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~64_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X6_Y4_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X7_Y4_N20
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~34_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~82_combout\);

-- Location: FF_X7_Y4_N21
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X6_Y4_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X7_Y4_N2
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~36_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~30_combout\,
	datac => \Add0~36_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X7_Y4_N3
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X6_Y4_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X7_Y4_N0
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~38_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~30_combout\,
	datac => \Add0~38_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X7_Y4_N1
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X6_Y4_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X7_Y4_N6
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~40_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X7_Y4_N7
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X6_Y4_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X7_Y4_N4
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~42_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X7_Y4_N5
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X7_Y4_N10
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~44_combout\ & ((count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => count(31),
	datac => \LessThan0~30_combout\,
	datad => \LessThan0~36_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X7_Y4_N11
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X7_Y4_N16
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = (!count(22) & (!count(24) & (!count(21) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(24),
	datac => count(21),
	datad => count(23),
	combout => \LessThan0~27_combout\);

-- Location: LCCOMB_X8_Y4_N18
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = (!count(30) & !count(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => count(29),
	combout => \LessThan0~29_combout\);

-- Location: LCCOMB_X7_Y4_N26
\LessThan0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = (!count(28) & (!count(27) & (!count(25) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => count(27),
	datac => count(25),
	datad => count(26),
	combout => \LessThan0~28_combout\);

-- Location: LCCOMB_X8_Y4_N28
\LessThan0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = (!count(19) & (!count(17) & (!count(20) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(17),
	datac => count(20),
	datad => count(18),
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X8_Y4_N0
\LessThan0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (\LessThan0~27_combout\ & (\LessThan0~29_combout\ & (\LessThan0~28_combout\ & \LessThan0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~27_combout\,
	datab => \LessThan0~29_combout\,
	datac => \LessThan0~28_combout\,
	datad => \LessThan0~26_combout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X8_Y5_N6
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = (count(31)) # ((\LessThan0~30_combout\ & \LessThan0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => count(31),
	datac => \LessThan0~36_combout\,
	combout => \LessThan0~31_combout\);

-- Location: LCCOMB_X8_Y5_N16
\output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~0_combout\ = \output~q\ $ (((\Equal0~7_combout\ & !\LessThan0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \output~q\,
	datad => \LessThan0~31_combout\,
	combout => \output~0_combout\);

-- Location: FF_X8_Y5_N17
output : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output~q\);

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

ww_clk_out <= \clk_out~output_o\;

ww_led_sa <= \led_sa~output_o\;

ww_led_re <= \led_re~output_o\;

ww_led_ga <= \led_ga~output_o\;

ww_led_ma <= \led_ma~output_o\;

ww_led_pa <= \led_pa~output_o\;

ww_led_dha <= \led_dha~output_o\;

ww_led_ni <= \led_ni~output_o\;

ww_led_saa <= \led_saa~output_o\;
END structure;


