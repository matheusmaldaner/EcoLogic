-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/26/2024 17:58:14"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	top_level IS
    PORT (
	inputs : IN std_logic_vector(9 DOWNTO 0);
	clk : IN std_logic;
	outputs : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- outputs[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputs : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_outputs : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \outputs[0]~output_o\ : std_logic;
SIGNAL \outputs[1]~output_o\ : std_logic;
SIGNAL \outputs[2]~output_o\ : std_logic;
SIGNAL \outputs[3]~output_o\ : std_logic;
SIGNAL \outputs[4]~output_o\ : std_logic;
SIGNAL \outputs[5]~output_o\ : std_logic;
SIGNAL \outputs[6]~output_o\ : std_logic;
SIGNAL \outputs[7]~output_o\ : std_logic;
SIGNAL \outputs[8]~output_o\ : std_logic;
SIGNAL \outputs[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][0]~94_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][0]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][0]~95\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][1]~96_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][1]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][1]~97\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][2]~98_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][2]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][2]~99\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][3]~100_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][3]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][3]~101\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][4]~102_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][4]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][4]~103\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][5]~104_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][5]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][5]~105\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][6]~106_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][6]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][6]~107\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][7]~108_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][7]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][7]~109\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][8]~110_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][8]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][8]~111\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][9]~112_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][9]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][9]~113\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][10]~114_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][10]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][10]~115\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][11]~116_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][11]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][11]~117\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][12]~118_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][12]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][12]~119\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][13]~120_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][13]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][13]~121\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][14]~122_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][14]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][14]~123\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][15]~124_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][15]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][15]~125\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][16]~126_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][16]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][16]~127\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][17]~128_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][17]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][17]~129\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][18]~130_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][18]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][18]~131\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][19]~132_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][19]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][19]~133\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][20]~134_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][20]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][20]~135\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][21]~136_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][21]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][21]~137\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][22]~138_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][22]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][22]~139\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][23]~140_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][23]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][23]~141\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][24]~142_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][24]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][24]~143\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][25]~144_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][25]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][25]~145\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][26]~146_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][26]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][26]~147\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][27]~148_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][27]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][27]~149\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][28]~150_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][28]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][28]~151\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][29]~152_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][29]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][29]~153\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][30]~154_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][30]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][30]~155\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][31]~156_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[4][31]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][2]~159_cout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][2]~160_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][2]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][2]~161\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][3]~162_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][3]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][3]~163\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][4]~164_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][4]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][4]~165\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][5]~166_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][5]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][5]~167\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][6]~168_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][6]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][6]~169\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][7]~170_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][7]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][7]~171\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][8]~172_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][8]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][8]~173\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][9]~174_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][9]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][9]~175\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][10]~176_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][10]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][10]~177\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][11]~178_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][11]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][11]~179\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][12]~180_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][12]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][12]~181\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][13]~182_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][13]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][13]~183\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][14]~184_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][14]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][14]~185\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][15]~186_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][15]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][15]~187\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][16]~188_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][16]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][16]~189\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][17]~190_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][17]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][17]~191\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][18]~192_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][18]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][18]~193\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][19]~194_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][19]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][19]~195\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][20]~196_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][20]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][20]~197\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][21]~198_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][21]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][21]~199\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][22]~200_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][22]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][22]~201\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][23]~202_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][23]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][23]~203\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][24]~204_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][24]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][24]~205\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][25]~206_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][25]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][25]~207\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][26]~208_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][26]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][26]~209\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][27]~210_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][27]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][27]~211\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][28]~212_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][28]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][28]~213\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][29]~214_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][29]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][29]~215\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][30]~216_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][30]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][30]~217\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][31]~218_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[0][31]~q\ : std_logic;
SIGNAL \U_ARGMAX|max_index~2_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][0]~220_combout\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \inputs[2]~input_o\ : std_logic;
SIGNAL \inputs[3]~input_o\ : std_logic;
SIGNAL \inputs[4]~input_o\ : std_logic;
SIGNAL \inputs[5]~input_o\ : std_logic;
SIGNAL \inputs[6]~input_o\ : std_logic;
SIGNAL \inputs[7]~input_o\ : std_logic;
SIGNAL \inputs[8]~input_o\ : std_logic;
SIGNAL \inputs[9]~input_o\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~372_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~374_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~371_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~373_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~375_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~362_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~361_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~364_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~363_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~365_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~358_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~357_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~356_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~359_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~360_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~366_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~367_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~368_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~369_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~370_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~376_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~386_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~389_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~388_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~387_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~390_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~392_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~391_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~393_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~394_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~395_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~382_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~383_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~378_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~377_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~379_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~380_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~381_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~34_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[480]~33_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~384_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~385_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~396_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~353_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~352_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~350_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~351_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~354_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~346_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~348_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~347_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~345_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~349_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~335_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~336_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~337_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~338_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~339_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~341_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~342_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~340_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~343_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~344_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~355_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~32_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[502]~31_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~29_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~30_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~296_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~309_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~310_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~307_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~308_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~311_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~298_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~297_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~299_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~300_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~301_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~305_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~302_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~304_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~303_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~306_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~312_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[329]~11_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~10_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~12_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[334]~13_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~288_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[321]~9_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[318]~6_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[301]~7_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[307]~8_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~287_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[300]~4_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[291]~3_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[270]~2_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[276]~5_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~286_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~0_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~284_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~1_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~285_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~289_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[465]~27_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[481]~28_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~26_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~293_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~294_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[406]~15_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~14_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[366]~17_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~16_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~290_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[424]~19_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[419]~18_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~21_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[425]~20_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~291_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~23_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[441]~25_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs~22_combout\ : std_logic;
SIGNAL \U_NETWORK|outputs[439]~24_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~292_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~295_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~329_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~330_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~331_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~328_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~332_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~314_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~316_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~315_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~313_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~317_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~320_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~321_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~319_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~318_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~322_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~323_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~325_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~326_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~324_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~327_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~333_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~334_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones~397_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][0]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][0]~221\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][1]~222_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][1]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][1]~223\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][2]~224_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][2]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][2]~225\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][3]~226_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][3]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][3]~227\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][4]~228_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][4]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][4]~229\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][5]~230_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][5]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][5]~231\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][6]~232_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][6]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][6]~233\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][7]~234_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][7]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][7]~235\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][8]~236_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][8]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][8]~237\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][9]~238_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][9]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][9]~239\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][10]~240_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][10]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][10]~241\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][11]~242_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][11]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][11]~243\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][12]~244_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][12]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][12]~245\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][13]~246_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][13]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][13]~247\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][14]~248_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][14]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][14]~249\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][15]~250_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][15]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][15]~251\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][16]~252_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][16]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][16]~253\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][17]~254_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][17]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][17]~255\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][18]~256_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][18]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][18]~257\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][19]~258_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][19]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][19]~259\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][20]~260_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][20]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][20]~261\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][21]~262_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][21]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][21]~263\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][22]~264_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][22]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][22]~265\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][23]~266_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][23]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][23]~267\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][24]~268_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][24]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][24]~269\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][25]~270_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][25]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][25]~271\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][26]~272_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][26]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][26]~273\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][27]~274_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][27]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][27]~275\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][28]~276_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][28]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][28]~277\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][29]~278_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][29]~q\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][29]~279\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][30]~280_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][30]~q\ : std_logic;
SIGNAL \U_ARGMAX|max_count[30]~1_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[29]~2_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[0]~31_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[28]~3_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[28]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[27]~4_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[27]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[26]~5_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[25]~6_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[25]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[24]~7_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[24]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[23]~8_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[22]~9_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[21]~10_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[21]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[20]~11_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[19]~12_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[18]~13_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[18]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[17]~14_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[17]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[16]~15_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[16]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[15]~16_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[15]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[14]~17_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[14]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[13]~18_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[12]~19_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[11]~20_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[11]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[10]~21_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[9]~22_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[9]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[8]~23_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[7]~24_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[7]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[6]~25_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[6]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[5]~26_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[4]~27_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[4]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[3]~28_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[3]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[2]~29_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[0]~32_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count~33_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count~34_combout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~1_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~3_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~5_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~7_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~9_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~11_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~13_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~15_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~17_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~19_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~21_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~23_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~25_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~27_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~29_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~31_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~33_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~35_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~37_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~39_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~41_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~43_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~45_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~47_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~49_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~51_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~53_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~55_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~57_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~59_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~61_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan4~62_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][30]~281\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][31]~282_combout\ : std_logic;
SIGNAL \U_ARGMAX|count_ones[1][31]~q\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~1_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~3_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~5_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~7_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~9_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~11_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~13_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~15_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~17_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~19_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~21_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~23_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~25_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~27_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~29_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~31_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~33_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~35_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~37_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~39_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~41_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~43_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~45_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~47_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~49_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~51_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~53_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~55_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~57_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~59_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~61_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan1~62_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[0]~30_combout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~1_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~3_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~5_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~7_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~9_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~11_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~13_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~15_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~17_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~19_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~21_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~23_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~25_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~27_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~29_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~31_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~33_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~35_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~37_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~39_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~41_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~43_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~45_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~47_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~49_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~51_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~53_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~55_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~57_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~59_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~61_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan8~62_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[31]~0_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count[31]~feeder_combout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~1_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~3_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~5_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~7_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~9_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~11_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~13_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~15_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~17_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~19_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~21_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~23_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~25_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~27_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~29_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~31_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~33_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~35_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~37_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~39_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~41_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~43_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~45_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~47_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~49_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~51_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~53_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~55_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~57_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~59_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~61_cout\ : std_logic;
SIGNAL \U_ARGMAX|LessThan9~62_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_index~0_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_index~1_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_index[3]~3_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~0_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~1_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~2_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~3_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~4_combout\ : std_logic;
SIGNAL \U_ARGMAX|Decoder0~5_combout\ : std_logic;
SIGNAL \U_ARGMAX|max_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_MEMORY|altsyncram_component|auto_generated|q_a\ : std_logic_vector(255 DOWNTO 0);
SIGNAL \U_ARGMAX|one_hot_output\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_ARGMAX|max_index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_NETWORK|outputs\ : std_logic_vector(2559 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inputs <= inputs;
ww_clk <= clk;
outputs <= ww_outputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(8) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(14) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(39) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(53) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(79) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(87) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(165) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(225) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(31) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(64) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(89) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(192) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(196) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(240) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(242) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(248) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(11) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(45) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(62) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(68) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(109) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(110) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(126) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(155) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(201) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(3) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(44) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(131) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(141) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(143) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(204) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(211) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(217) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(241) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(20) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(21) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(30) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(48) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(114) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(119) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(185) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(247) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(253) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(17) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(24) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(94) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(112) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(127) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(177) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(235) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(246) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(254) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(7) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(26) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(51) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(66) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(96) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(98) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(136) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(169) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(67) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(76) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(97) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(164) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(174) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(195) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(218) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(237) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(244) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(43) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(99) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(159) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(161) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(180) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(205) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(229) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(233) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(252) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(34) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(40) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(47) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(105) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(142) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(149) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(158) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(162) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(168) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(69) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(85) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(92) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(115) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(117) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(121) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(227) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(236) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(238) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(2) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(15) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(38) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(93) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(182) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(194) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(197) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(202) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(230) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(10) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(77) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(166) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(189) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(191) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(198) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(208) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(220) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(223) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(6) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(9) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(18) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(100) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(133) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(152) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(188) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(219) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(228) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(25) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(37) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(46) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(70) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(72) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(150) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(200) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(250) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(27) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(35) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(42) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(73) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(130) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(154) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(213) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(231) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(245) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(29) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(32) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(52) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(75) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(122) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(139) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(140) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(151) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(157) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(50) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(56) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(74) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(78) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(103) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(125) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(183) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(214) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(239) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(5) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(12) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(13) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(36) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(83) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(175) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(210) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(224) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(249) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(16) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(19) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(28) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(49) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(55) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(63) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(81) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(108) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(129) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(84) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(86) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(88) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(91) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(95) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(102) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(104) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(116) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(226) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(90) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(106) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(107) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(111) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(113) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(118) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(120) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(173) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(255) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\ & 
\inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(59) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(123) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(124) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(128) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(132) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(134) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(135) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(137) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(207) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\
& \inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(138) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(147) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(153) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(160) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(163) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(4);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(167) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(5);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(171) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(6);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(172) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(7);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(176) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\(8);

\U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTAADDR_bus\ <= (\inputs[9]~input_o\ & \inputs[8]~input_o\ & \inputs[7]~input_o\ & \inputs[6]~input_o\ & \inputs[5]~input_o\ & \inputs[4]~input_o\ & \inputs[3]~input_o\ & \inputs[2]~input_o\
& \inputs[1]~input_o\ & \inputs[0]~input_o\);

\U_MEMORY|altsyncram_component|auto_generated|q_a\(178) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\(0);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(186) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\(1);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(203) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\(2);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(209) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\(3);
\U_MEMORY|altsyncram_component|auto_generated|q_a\(243) <= \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X43_Y38_N24
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

-- Location: IOOBUF_X46_Y54_N2
\outputs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(0),
	devoe => ww_devoe,
	o => \outputs[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\outputs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(1),
	devoe => ww_devoe,
	o => \outputs[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\outputs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\outputs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\outputs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(4),
	devoe => ww_devoe,
	o => \outputs[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\outputs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(5),
	devoe => ww_devoe,
	o => \outputs[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\outputs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\outputs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outputs[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\outputs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(8),
	devoe => ww_devoe,
	o => \outputs[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\outputs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ARGMAX|one_hot_output\(9),
	devoe => ww_devoe,
	o => \outputs[9]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y46_N0
\U_ARGMAX|count_ones[4][0]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][0]~94_combout\ = \U_ARGMAX|count_ones[4][0]~q\ $ (VCC)
-- \U_ARGMAX|count_ones[4][0]~95\ = CARRY(\U_ARGMAX|count_ones[4][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][0]~q\,
	datad => VCC,
	combout => \U_ARGMAX|count_ones[4][0]~94_combout\,
	cout => \U_ARGMAX|count_ones[4][0]~95\);

-- Location: FF_X50_Y46_N1
\U_ARGMAX|count_ones[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][0]~q\);

-- Location: LCCOMB_X50_Y46_N2
\U_ARGMAX|count_ones[4][1]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][1]~96_combout\ = (\U_ARGMAX|count_ones[4][1]~q\ & (!\U_ARGMAX|count_ones[4][0]~95\)) # (!\U_ARGMAX|count_ones[4][1]~q\ & ((\U_ARGMAX|count_ones[4][0]~95\) # (GND)))
-- \U_ARGMAX|count_ones[4][1]~97\ = CARRY((!\U_ARGMAX|count_ones[4][0]~95\) # (!\U_ARGMAX|count_ones[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][1]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][0]~95\,
	combout => \U_ARGMAX|count_ones[4][1]~96_combout\,
	cout => \U_ARGMAX|count_ones[4][1]~97\);

-- Location: FF_X50_Y46_N3
\U_ARGMAX|count_ones[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][1]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][1]~q\);

-- Location: LCCOMB_X50_Y46_N4
\U_ARGMAX|count_ones[4][2]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][2]~98_combout\ = (\U_ARGMAX|count_ones[4][2]~q\ & (\U_ARGMAX|count_ones[4][1]~97\ $ (GND))) # (!\U_ARGMAX|count_ones[4][2]~q\ & (!\U_ARGMAX|count_ones[4][1]~97\ & VCC))
-- \U_ARGMAX|count_ones[4][2]~99\ = CARRY((\U_ARGMAX|count_ones[4][2]~q\ & !\U_ARGMAX|count_ones[4][1]~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][2]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][1]~97\,
	combout => \U_ARGMAX|count_ones[4][2]~98_combout\,
	cout => \U_ARGMAX|count_ones[4][2]~99\);

-- Location: FF_X50_Y46_N5
\U_ARGMAX|count_ones[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][2]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][2]~q\);

-- Location: LCCOMB_X50_Y46_N6
\U_ARGMAX|count_ones[4][3]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][3]~100_combout\ = (\U_ARGMAX|count_ones[4][3]~q\ & (!\U_ARGMAX|count_ones[4][2]~99\)) # (!\U_ARGMAX|count_ones[4][3]~q\ & ((\U_ARGMAX|count_ones[4][2]~99\) # (GND)))
-- \U_ARGMAX|count_ones[4][3]~101\ = CARRY((!\U_ARGMAX|count_ones[4][2]~99\) # (!\U_ARGMAX|count_ones[4][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][3]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][2]~99\,
	combout => \U_ARGMAX|count_ones[4][3]~100_combout\,
	cout => \U_ARGMAX|count_ones[4][3]~101\);

-- Location: FF_X50_Y46_N7
\U_ARGMAX|count_ones[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][3]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][3]~q\);

-- Location: LCCOMB_X50_Y46_N8
\U_ARGMAX|count_ones[4][4]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][4]~102_combout\ = (\U_ARGMAX|count_ones[4][4]~q\ & (\U_ARGMAX|count_ones[4][3]~101\ $ (GND))) # (!\U_ARGMAX|count_ones[4][4]~q\ & (!\U_ARGMAX|count_ones[4][3]~101\ & VCC))
-- \U_ARGMAX|count_ones[4][4]~103\ = CARRY((\U_ARGMAX|count_ones[4][4]~q\ & !\U_ARGMAX|count_ones[4][3]~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][4]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][3]~101\,
	combout => \U_ARGMAX|count_ones[4][4]~102_combout\,
	cout => \U_ARGMAX|count_ones[4][4]~103\);

-- Location: FF_X50_Y46_N9
\U_ARGMAX|count_ones[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][4]~q\);

-- Location: LCCOMB_X50_Y46_N10
\U_ARGMAX|count_ones[4][5]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][5]~104_combout\ = (\U_ARGMAX|count_ones[4][5]~q\ & (!\U_ARGMAX|count_ones[4][4]~103\)) # (!\U_ARGMAX|count_ones[4][5]~q\ & ((\U_ARGMAX|count_ones[4][4]~103\) # (GND)))
-- \U_ARGMAX|count_ones[4][5]~105\ = CARRY((!\U_ARGMAX|count_ones[4][4]~103\) # (!\U_ARGMAX|count_ones[4][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][5]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][4]~103\,
	combout => \U_ARGMAX|count_ones[4][5]~104_combout\,
	cout => \U_ARGMAX|count_ones[4][5]~105\);

-- Location: FF_X50_Y46_N11
\U_ARGMAX|count_ones[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][5]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][5]~q\);

-- Location: LCCOMB_X50_Y46_N12
\U_ARGMAX|count_ones[4][6]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][6]~106_combout\ = (\U_ARGMAX|count_ones[4][6]~q\ & (\U_ARGMAX|count_ones[4][5]~105\ $ (GND))) # (!\U_ARGMAX|count_ones[4][6]~q\ & (!\U_ARGMAX|count_ones[4][5]~105\ & VCC))
-- \U_ARGMAX|count_ones[4][6]~107\ = CARRY((\U_ARGMAX|count_ones[4][6]~q\ & !\U_ARGMAX|count_ones[4][5]~105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][5]~105\,
	combout => \U_ARGMAX|count_ones[4][6]~106_combout\,
	cout => \U_ARGMAX|count_ones[4][6]~107\);

-- Location: FF_X50_Y46_N13
\U_ARGMAX|count_ones[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][6]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][6]~q\);

-- Location: LCCOMB_X50_Y46_N14
\U_ARGMAX|count_ones[4][7]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][7]~108_combout\ = (\U_ARGMAX|count_ones[4][7]~q\ & (!\U_ARGMAX|count_ones[4][6]~107\)) # (!\U_ARGMAX|count_ones[4][7]~q\ & ((\U_ARGMAX|count_ones[4][6]~107\) # (GND)))
-- \U_ARGMAX|count_ones[4][7]~109\ = CARRY((!\U_ARGMAX|count_ones[4][6]~107\) # (!\U_ARGMAX|count_ones[4][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][7]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][6]~107\,
	combout => \U_ARGMAX|count_ones[4][7]~108_combout\,
	cout => \U_ARGMAX|count_ones[4][7]~109\);

-- Location: FF_X50_Y46_N15
\U_ARGMAX|count_ones[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][7]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][7]~q\);

-- Location: LCCOMB_X50_Y46_N16
\U_ARGMAX|count_ones[4][8]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][8]~110_combout\ = (\U_ARGMAX|count_ones[4][8]~q\ & (\U_ARGMAX|count_ones[4][7]~109\ $ (GND))) # (!\U_ARGMAX|count_ones[4][8]~q\ & (!\U_ARGMAX|count_ones[4][7]~109\ & VCC))
-- \U_ARGMAX|count_ones[4][8]~111\ = CARRY((\U_ARGMAX|count_ones[4][8]~q\ & !\U_ARGMAX|count_ones[4][7]~109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][8]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][7]~109\,
	combout => \U_ARGMAX|count_ones[4][8]~110_combout\,
	cout => \U_ARGMAX|count_ones[4][8]~111\);

-- Location: FF_X50_Y46_N17
\U_ARGMAX|count_ones[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][8]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][8]~q\);

-- Location: LCCOMB_X50_Y46_N18
\U_ARGMAX|count_ones[4][9]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][9]~112_combout\ = (\U_ARGMAX|count_ones[4][9]~q\ & (!\U_ARGMAX|count_ones[4][8]~111\)) # (!\U_ARGMAX|count_ones[4][9]~q\ & ((\U_ARGMAX|count_ones[4][8]~111\) # (GND)))
-- \U_ARGMAX|count_ones[4][9]~113\ = CARRY((!\U_ARGMAX|count_ones[4][8]~111\) # (!\U_ARGMAX|count_ones[4][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][8]~111\,
	combout => \U_ARGMAX|count_ones[4][9]~112_combout\,
	cout => \U_ARGMAX|count_ones[4][9]~113\);

-- Location: FF_X50_Y46_N19
\U_ARGMAX|count_ones[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][9]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][9]~q\);

-- Location: LCCOMB_X50_Y46_N20
\U_ARGMAX|count_ones[4][10]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][10]~114_combout\ = (\U_ARGMAX|count_ones[4][10]~q\ & (\U_ARGMAX|count_ones[4][9]~113\ $ (GND))) # (!\U_ARGMAX|count_ones[4][10]~q\ & (!\U_ARGMAX|count_ones[4][9]~113\ & VCC))
-- \U_ARGMAX|count_ones[4][10]~115\ = CARRY((\U_ARGMAX|count_ones[4][10]~q\ & !\U_ARGMAX|count_ones[4][9]~113\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][10]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][9]~113\,
	combout => \U_ARGMAX|count_ones[4][10]~114_combout\,
	cout => \U_ARGMAX|count_ones[4][10]~115\);

-- Location: FF_X50_Y46_N21
\U_ARGMAX|count_ones[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][10]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][10]~q\);

-- Location: LCCOMB_X50_Y46_N22
\U_ARGMAX|count_ones[4][11]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][11]~116_combout\ = (\U_ARGMAX|count_ones[4][11]~q\ & (!\U_ARGMAX|count_ones[4][10]~115\)) # (!\U_ARGMAX|count_ones[4][11]~q\ & ((\U_ARGMAX|count_ones[4][10]~115\) # (GND)))
-- \U_ARGMAX|count_ones[4][11]~117\ = CARRY((!\U_ARGMAX|count_ones[4][10]~115\) # (!\U_ARGMAX|count_ones[4][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][11]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][10]~115\,
	combout => \U_ARGMAX|count_ones[4][11]~116_combout\,
	cout => \U_ARGMAX|count_ones[4][11]~117\);

-- Location: FF_X50_Y46_N23
\U_ARGMAX|count_ones[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][11]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][11]~q\);

-- Location: LCCOMB_X50_Y46_N24
\U_ARGMAX|count_ones[4][12]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][12]~118_combout\ = (\U_ARGMAX|count_ones[4][12]~q\ & (\U_ARGMAX|count_ones[4][11]~117\ $ (GND))) # (!\U_ARGMAX|count_ones[4][12]~q\ & (!\U_ARGMAX|count_ones[4][11]~117\ & VCC))
-- \U_ARGMAX|count_ones[4][12]~119\ = CARRY((\U_ARGMAX|count_ones[4][12]~q\ & !\U_ARGMAX|count_ones[4][11]~117\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][12]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][11]~117\,
	combout => \U_ARGMAX|count_ones[4][12]~118_combout\,
	cout => \U_ARGMAX|count_ones[4][12]~119\);

-- Location: FF_X50_Y46_N25
\U_ARGMAX|count_ones[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][12]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][12]~q\);

-- Location: LCCOMB_X50_Y46_N26
\U_ARGMAX|count_ones[4][13]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][13]~120_combout\ = (\U_ARGMAX|count_ones[4][13]~q\ & (!\U_ARGMAX|count_ones[4][12]~119\)) # (!\U_ARGMAX|count_ones[4][13]~q\ & ((\U_ARGMAX|count_ones[4][12]~119\) # (GND)))
-- \U_ARGMAX|count_ones[4][13]~121\ = CARRY((!\U_ARGMAX|count_ones[4][12]~119\) # (!\U_ARGMAX|count_ones[4][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][13]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][12]~119\,
	combout => \U_ARGMAX|count_ones[4][13]~120_combout\,
	cout => \U_ARGMAX|count_ones[4][13]~121\);

-- Location: FF_X50_Y46_N27
\U_ARGMAX|count_ones[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][13]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][13]~q\);

-- Location: LCCOMB_X50_Y46_N28
\U_ARGMAX|count_ones[4][14]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][14]~122_combout\ = (\U_ARGMAX|count_ones[4][14]~q\ & (\U_ARGMAX|count_ones[4][13]~121\ $ (GND))) # (!\U_ARGMAX|count_ones[4][14]~q\ & (!\U_ARGMAX|count_ones[4][13]~121\ & VCC))
-- \U_ARGMAX|count_ones[4][14]~123\ = CARRY((\U_ARGMAX|count_ones[4][14]~q\ & !\U_ARGMAX|count_ones[4][13]~121\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][13]~121\,
	combout => \U_ARGMAX|count_ones[4][14]~122_combout\,
	cout => \U_ARGMAX|count_ones[4][14]~123\);

-- Location: FF_X50_Y46_N29
\U_ARGMAX|count_ones[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][14]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][14]~q\);

-- Location: LCCOMB_X50_Y46_N30
\U_ARGMAX|count_ones[4][15]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][15]~124_combout\ = (\U_ARGMAX|count_ones[4][15]~q\ & (!\U_ARGMAX|count_ones[4][14]~123\)) # (!\U_ARGMAX|count_ones[4][15]~q\ & ((\U_ARGMAX|count_ones[4][14]~123\) # (GND)))
-- \U_ARGMAX|count_ones[4][15]~125\ = CARRY((!\U_ARGMAX|count_ones[4][14]~123\) # (!\U_ARGMAX|count_ones[4][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][15]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][14]~123\,
	combout => \U_ARGMAX|count_ones[4][15]~124_combout\,
	cout => \U_ARGMAX|count_ones[4][15]~125\);

-- Location: FF_X50_Y46_N31
\U_ARGMAX|count_ones[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][15]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][15]~q\);

-- Location: LCCOMB_X50_Y45_N0
\U_ARGMAX|count_ones[4][16]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][16]~126_combout\ = (\U_ARGMAX|count_ones[4][16]~q\ & (\U_ARGMAX|count_ones[4][15]~125\ $ (GND))) # (!\U_ARGMAX|count_ones[4][16]~q\ & (!\U_ARGMAX|count_ones[4][15]~125\ & VCC))
-- \U_ARGMAX|count_ones[4][16]~127\ = CARRY((\U_ARGMAX|count_ones[4][16]~q\ & !\U_ARGMAX|count_ones[4][15]~125\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][16]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][15]~125\,
	combout => \U_ARGMAX|count_ones[4][16]~126_combout\,
	cout => \U_ARGMAX|count_ones[4][16]~127\);

-- Location: FF_X50_Y45_N1
\U_ARGMAX|count_ones[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][16]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][16]~q\);

-- Location: LCCOMB_X50_Y45_N2
\U_ARGMAX|count_ones[4][17]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][17]~128_combout\ = (\U_ARGMAX|count_ones[4][17]~q\ & (!\U_ARGMAX|count_ones[4][16]~127\)) # (!\U_ARGMAX|count_ones[4][17]~q\ & ((\U_ARGMAX|count_ones[4][16]~127\) # (GND)))
-- \U_ARGMAX|count_ones[4][17]~129\ = CARRY((!\U_ARGMAX|count_ones[4][16]~127\) # (!\U_ARGMAX|count_ones[4][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][17]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][16]~127\,
	combout => \U_ARGMAX|count_ones[4][17]~128_combout\,
	cout => \U_ARGMAX|count_ones[4][17]~129\);

-- Location: FF_X50_Y45_N3
\U_ARGMAX|count_ones[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][17]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][17]~q\);

-- Location: LCCOMB_X50_Y45_N4
\U_ARGMAX|count_ones[4][18]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][18]~130_combout\ = (\U_ARGMAX|count_ones[4][18]~q\ & (\U_ARGMAX|count_ones[4][17]~129\ $ (GND))) # (!\U_ARGMAX|count_ones[4][18]~q\ & (!\U_ARGMAX|count_ones[4][17]~129\ & VCC))
-- \U_ARGMAX|count_ones[4][18]~131\ = CARRY((\U_ARGMAX|count_ones[4][18]~q\ & !\U_ARGMAX|count_ones[4][17]~129\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][18]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][17]~129\,
	combout => \U_ARGMAX|count_ones[4][18]~130_combout\,
	cout => \U_ARGMAX|count_ones[4][18]~131\);

-- Location: FF_X50_Y45_N5
\U_ARGMAX|count_ones[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][18]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][18]~q\);

-- Location: LCCOMB_X50_Y45_N6
\U_ARGMAX|count_ones[4][19]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][19]~132_combout\ = (\U_ARGMAX|count_ones[4][19]~q\ & (!\U_ARGMAX|count_ones[4][18]~131\)) # (!\U_ARGMAX|count_ones[4][19]~q\ & ((\U_ARGMAX|count_ones[4][18]~131\) # (GND)))
-- \U_ARGMAX|count_ones[4][19]~133\ = CARRY((!\U_ARGMAX|count_ones[4][18]~131\) # (!\U_ARGMAX|count_ones[4][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][19]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][18]~131\,
	combout => \U_ARGMAX|count_ones[4][19]~132_combout\,
	cout => \U_ARGMAX|count_ones[4][19]~133\);

-- Location: FF_X50_Y45_N7
\U_ARGMAX|count_ones[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][19]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][19]~q\);

-- Location: LCCOMB_X50_Y45_N8
\U_ARGMAX|count_ones[4][20]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][20]~134_combout\ = (\U_ARGMAX|count_ones[4][20]~q\ & (\U_ARGMAX|count_ones[4][19]~133\ $ (GND))) # (!\U_ARGMAX|count_ones[4][20]~q\ & (!\U_ARGMAX|count_ones[4][19]~133\ & VCC))
-- \U_ARGMAX|count_ones[4][20]~135\ = CARRY((\U_ARGMAX|count_ones[4][20]~q\ & !\U_ARGMAX|count_ones[4][19]~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][19]~133\,
	combout => \U_ARGMAX|count_ones[4][20]~134_combout\,
	cout => \U_ARGMAX|count_ones[4][20]~135\);

-- Location: FF_X50_Y45_N9
\U_ARGMAX|count_ones[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][20]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][20]~q\);

-- Location: LCCOMB_X50_Y45_N10
\U_ARGMAX|count_ones[4][21]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][21]~136_combout\ = (\U_ARGMAX|count_ones[4][21]~q\ & (!\U_ARGMAX|count_ones[4][20]~135\)) # (!\U_ARGMAX|count_ones[4][21]~q\ & ((\U_ARGMAX|count_ones[4][20]~135\) # (GND)))
-- \U_ARGMAX|count_ones[4][21]~137\ = CARRY((!\U_ARGMAX|count_ones[4][20]~135\) # (!\U_ARGMAX|count_ones[4][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][21]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][20]~135\,
	combout => \U_ARGMAX|count_ones[4][21]~136_combout\,
	cout => \U_ARGMAX|count_ones[4][21]~137\);

-- Location: FF_X50_Y45_N11
\U_ARGMAX|count_ones[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][21]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][21]~q\);

-- Location: LCCOMB_X50_Y45_N12
\U_ARGMAX|count_ones[4][22]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][22]~138_combout\ = (\U_ARGMAX|count_ones[4][22]~q\ & (\U_ARGMAX|count_ones[4][21]~137\ $ (GND))) # (!\U_ARGMAX|count_ones[4][22]~q\ & (!\U_ARGMAX|count_ones[4][21]~137\ & VCC))
-- \U_ARGMAX|count_ones[4][22]~139\ = CARRY((\U_ARGMAX|count_ones[4][22]~q\ & !\U_ARGMAX|count_ones[4][21]~137\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][22]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][21]~137\,
	combout => \U_ARGMAX|count_ones[4][22]~138_combout\,
	cout => \U_ARGMAX|count_ones[4][22]~139\);

-- Location: FF_X50_Y45_N13
\U_ARGMAX|count_ones[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][22]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][22]~q\);

-- Location: LCCOMB_X50_Y45_N14
\U_ARGMAX|count_ones[4][23]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][23]~140_combout\ = (\U_ARGMAX|count_ones[4][23]~q\ & (!\U_ARGMAX|count_ones[4][22]~139\)) # (!\U_ARGMAX|count_ones[4][23]~q\ & ((\U_ARGMAX|count_ones[4][22]~139\) # (GND)))
-- \U_ARGMAX|count_ones[4][23]~141\ = CARRY((!\U_ARGMAX|count_ones[4][22]~139\) # (!\U_ARGMAX|count_ones[4][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][23]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][22]~139\,
	combout => \U_ARGMAX|count_ones[4][23]~140_combout\,
	cout => \U_ARGMAX|count_ones[4][23]~141\);

-- Location: FF_X50_Y45_N15
\U_ARGMAX|count_ones[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][23]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][23]~q\);

-- Location: LCCOMB_X50_Y45_N16
\U_ARGMAX|count_ones[4][24]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][24]~142_combout\ = (\U_ARGMAX|count_ones[4][24]~q\ & (\U_ARGMAX|count_ones[4][23]~141\ $ (GND))) # (!\U_ARGMAX|count_ones[4][24]~q\ & (!\U_ARGMAX|count_ones[4][23]~141\ & VCC))
-- \U_ARGMAX|count_ones[4][24]~143\ = CARRY((\U_ARGMAX|count_ones[4][24]~q\ & !\U_ARGMAX|count_ones[4][23]~141\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][24]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][23]~141\,
	combout => \U_ARGMAX|count_ones[4][24]~142_combout\,
	cout => \U_ARGMAX|count_ones[4][24]~143\);

-- Location: FF_X50_Y45_N17
\U_ARGMAX|count_ones[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][24]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][24]~q\);

-- Location: LCCOMB_X50_Y45_N18
\U_ARGMAX|count_ones[4][25]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][25]~144_combout\ = (\U_ARGMAX|count_ones[4][25]~q\ & (!\U_ARGMAX|count_ones[4][24]~143\)) # (!\U_ARGMAX|count_ones[4][25]~q\ & ((\U_ARGMAX|count_ones[4][24]~143\) # (GND)))
-- \U_ARGMAX|count_ones[4][25]~145\ = CARRY((!\U_ARGMAX|count_ones[4][24]~143\) # (!\U_ARGMAX|count_ones[4][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][24]~143\,
	combout => \U_ARGMAX|count_ones[4][25]~144_combout\,
	cout => \U_ARGMAX|count_ones[4][25]~145\);

-- Location: FF_X50_Y45_N19
\U_ARGMAX|count_ones[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][25]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][25]~q\);

-- Location: LCCOMB_X50_Y45_N20
\U_ARGMAX|count_ones[4][26]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][26]~146_combout\ = (\U_ARGMAX|count_ones[4][26]~q\ & (\U_ARGMAX|count_ones[4][25]~145\ $ (GND))) # (!\U_ARGMAX|count_ones[4][26]~q\ & (!\U_ARGMAX|count_ones[4][25]~145\ & VCC))
-- \U_ARGMAX|count_ones[4][26]~147\ = CARRY((\U_ARGMAX|count_ones[4][26]~q\ & !\U_ARGMAX|count_ones[4][25]~145\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][26]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][25]~145\,
	combout => \U_ARGMAX|count_ones[4][26]~146_combout\,
	cout => \U_ARGMAX|count_ones[4][26]~147\);

-- Location: FF_X50_Y45_N21
\U_ARGMAX|count_ones[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][26]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][26]~q\);

-- Location: LCCOMB_X50_Y45_N22
\U_ARGMAX|count_ones[4][27]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][27]~148_combout\ = (\U_ARGMAX|count_ones[4][27]~q\ & (!\U_ARGMAX|count_ones[4][26]~147\)) # (!\U_ARGMAX|count_ones[4][27]~q\ & ((\U_ARGMAX|count_ones[4][26]~147\) # (GND)))
-- \U_ARGMAX|count_ones[4][27]~149\ = CARRY((!\U_ARGMAX|count_ones[4][26]~147\) # (!\U_ARGMAX|count_ones[4][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][26]~147\,
	combout => \U_ARGMAX|count_ones[4][27]~148_combout\,
	cout => \U_ARGMAX|count_ones[4][27]~149\);

-- Location: FF_X50_Y45_N23
\U_ARGMAX|count_ones[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][27]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][27]~q\);

-- Location: LCCOMB_X50_Y45_N24
\U_ARGMAX|count_ones[4][28]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][28]~150_combout\ = (\U_ARGMAX|count_ones[4][28]~q\ & (\U_ARGMAX|count_ones[4][27]~149\ $ (GND))) # (!\U_ARGMAX|count_ones[4][28]~q\ & (!\U_ARGMAX|count_ones[4][27]~149\ & VCC))
-- \U_ARGMAX|count_ones[4][28]~151\ = CARRY((\U_ARGMAX|count_ones[4][28]~q\ & !\U_ARGMAX|count_ones[4][27]~149\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][27]~149\,
	combout => \U_ARGMAX|count_ones[4][28]~150_combout\,
	cout => \U_ARGMAX|count_ones[4][28]~151\);

-- Location: FF_X50_Y45_N25
\U_ARGMAX|count_ones[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][28]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][28]~q\);

-- Location: LCCOMB_X50_Y45_N26
\U_ARGMAX|count_ones[4][29]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][29]~152_combout\ = (\U_ARGMAX|count_ones[4][29]~q\ & (!\U_ARGMAX|count_ones[4][28]~151\)) # (!\U_ARGMAX|count_ones[4][29]~q\ & ((\U_ARGMAX|count_ones[4][28]~151\) # (GND)))
-- \U_ARGMAX|count_ones[4][29]~153\ = CARRY((!\U_ARGMAX|count_ones[4][28]~151\) # (!\U_ARGMAX|count_ones[4][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][29]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][28]~151\,
	combout => \U_ARGMAX|count_ones[4][29]~152_combout\,
	cout => \U_ARGMAX|count_ones[4][29]~153\);

-- Location: FF_X50_Y45_N27
\U_ARGMAX|count_ones[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][29]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][29]~q\);

-- Location: LCCOMB_X50_Y45_N28
\U_ARGMAX|count_ones[4][30]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][30]~154_combout\ = (\U_ARGMAX|count_ones[4][30]~q\ & (\U_ARGMAX|count_ones[4][29]~153\ $ (GND))) # (!\U_ARGMAX|count_ones[4][30]~q\ & (!\U_ARGMAX|count_ones[4][29]~153\ & VCC))
-- \U_ARGMAX|count_ones[4][30]~155\ = CARRY((\U_ARGMAX|count_ones[4][30]~q\ & !\U_ARGMAX|count_ones[4][29]~153\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[4][29]~153\,
	combout => \U_ARGMAX|count_ones[4][30]~154_combout\,
	cout => \U_ARGMAX|count_ones[4][30]~155\);

-- Location: FF_X50_Y45_N29
\U_ARGMAX|count_ones[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][30]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][30]~q\);

-- Location: LCCOMB_X50_Y45_N30
\U_ARGMAX|count_ones[4][31]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[4][31]~156_combout\ = \U_ARGMAX|count_ones[4][31]~q\ $ (\U_ARGMAX|count_ones[4][30]~155\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][31]~q\,
	cin => \U_ARGMAX|count_ones[4][30]~155\,
	combout => \U_ARGMAX|count_ones[4][31]~156_combout\);

-- Location: FF_X50_Y45_N31
\U_ARGMAX|count_ones[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[4][31]~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[4][31]~q\);

-- Location: LCCOMB_X47_Y48_N2
\U_ARGMAX|count_ones[0][2]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][2]~159_cout\ = CARRY((\U_ARGMAX|count_ones[4][1]~q\ & \U_ARGMAX|count_ones[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][1]~q\,
	datab => \U_ARGMAX|count_ones[4][0]~q\,
	datad => VCC,
	cout => \U_ARGMAX|count_ones[0][2]~159_cout\);

-- Location: LCCOMB_X47_Y48_N4
\U_ARGMAX|count_ones[0][2]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][2]~160_combout\ = (\U_ARGMAX|count_ones[0][2]~q\ & (!\U_ARGMAX|count_ones[0][2]~159_cout\)) # (!\U_ARGMAX|count_ones[0][2]~q\ & ((\U_ARGMAX|count_ones[0][2]~159_cout\) # (GND)))
-- \U_ARGMAX|count_ones[0][2]~161\ = CARRY((!\U_ARGMAX|count_ones[0][2]~159_cout\) # (!\U_ARGMAX|count_ones[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][2]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][2]~159_cout\,
	combout => \U_ARGMAX|count_ones[0][2]~160_combout\,
	cout => \U_ARGMAX|count_ones[0][2]~161\);

-- Location: FF_X47_Y48_N5
\U_ARGMAX|count_ones[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][2]~q\);

-- Location: LCCOMB_X47_Y48_N6
\U_ARGMAX|count_ones[0][3]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][3]~162_combout\ = (\U_ARGMAX|count_ones[0][3]~q\ & (\U_ARGMAX|count_ones[0][2]~161\ $ (GND))) # (!\U_ARGMAX|count_ones[0][3]~q\ & (!\U_ARGMAX|count_ones[0][2]~161\ & VCC))
-- \U_ARGMAX|count_ones[0][3]~163\ = CARRY((\U_ARGMAX|count_ones[0][3]~q\ & !\U_ARGMAX|count_ones[0][2]~161\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][3]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][2]~161\,
	combout => \U_ARGMAX|count_ones[0][3]~162_combout\,
	cout => \U_ARGMAX|count_ones[0][3]~163\);

-- Location: FF_X47_Y48_N7
\U_ARGMAX|count_ones[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][3]~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][3]~q\);

-- Location: LCCOMB_X47_Y48_N8
\U_ARGMAX|count_ones[0][4]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][4]~164_combout\ = (\U_ARGMAX|count_ones[0][4]~q\ & (!\U_ARGMAX|count_ones[0][3]~163\)) # (!\U_ARGMAX|count_ones[0][4]~q\ & ((\U_ARGMAX|count_ones[0][3]~163\) # (GND)))
-- \U_ARGMAX|count_ones[0][4]~165\ = CARRY((!\U_ARGMAX|count_ones[0][3]~163\) # (!\U_ARGMAX|count_ones[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][4]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][3]~163\,
	combout => \U_ARGMAX|count_ones[0][4]~164_combout\,
	cout => \U_ARGMAX|count_ones[0][4]~165\);

-- Location: FF_X47_Y48_N9
\U_ARGMAX|count_ones[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][4]~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][4]~q\);

-- Location: LCCOMB_X47_Y48_N10
\U_ARGMAX|count_ones[0][5]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][5]~166_combout\ = (\U_ARGMAX|count_ones[0][5]~q\ & (\U_ARGMAX|count_ones[0][4]~165\ $ (GND))) # (!\U_ARGMAX|count_ones[0][5]~q\ & (!\U_ARGMAX|count_ones[0][4]~165\ & VCC))
-- \U_ARGMAX|count_ones[0][5]~167\ = CARRY((\U_ARGMAX|count_ones[0][5]~q\ & !\U_ARGMAX|count_ones[0][4]~165\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][5]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][4]~165\,
	combout => \U_ARGMAX|count_ones[0][5]~166_combout\,
	cout => \U_ARGMAX|count_ones[0][5]~167\);

-- Location: FF_X47_Y48_N11
\U_ARGMAX|count_ones[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][5]~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][5]~q\);

-- Location: LCCOMB_X47_Y48_N12
\U_ARGMAX|count_ones[0][6]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][6]~168_combout\ = (\U_ARGMAX|count_ones[0][6]~q\ & (!\U_ARGMAX|count_ones[0][5]~167\)) # (!\U_ARGMAX|count_ones[0][6]~q\ & ((\U_ARGMAX|count_ones[0][5]~167\) # (GND)))
-- \U_ARGMAX|count_ones[0][6]~169\ = CARRY((!\U_ARGMAX|count_ones[0][5]~167\) # (!\U_ARGMAX|count_ones[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][5]~167\,
	combout => \U_ARGMAX|count_ones[0][6]~168_combout\,
	cout => \U_ARGMAX|count_ones[0][6]~169\);

-- Location: FF_X47_Y48_N13
\U_ARGMAX|count_ones[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][6]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][6]~q\);

-- Location: LCCOMB_X47_Y48_N14
\U_ARGMAX|count_ones[0][7]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][7]~170_combout\ = (\U_ARGMAX|count_ones[0][7]~q\ & (\U_ARGMAX|count_ones[0][6]~169\ $ (GND))) # (!\U_ARGMAX|count_ones[0][7]~q\ & (!\U_ARGMAX|count_ones[0][6]~169\ & VCC))
-- \U_ARGMAX|count_ones[0][7]~171\ = CARRY((\U_ARGMAX|count_ones[0][7]~q\ & !\U_ARGMAX|count_ones[0][6]~169\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][7]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][6]~169\,
	combout => \U_ARGMAX|count_ones[0][7]~170_combout\,
	cout => \U_ARGMAX|count_ones[0][7]~171\);

-- Location: FF_X47_Y48_N15
\U_ARGMAX|count_ones[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][7]~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][7]~q\);

-- Location: LCCOMB_X47_Y48_N16
\U_ARGMAX|count_ones[0][8]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][8]~172_combout\ = (\U_ARGMAX|count_ones[0][8]~q\ & (!\U_ARGMAX|count_ones[0][7]~171\)) # (!\U_ARGMAX|count_ones[0][8]~q\ & ((\U_ARGMAX|count_ones[0][7]~171\) # (GND)))
-- \U_ARGMAX|count_ones[0][8]~173\ = CARRY((!\U_ARGMAX|count_ones[0][7]~171\) # (!\U_ARGMAX|count_ones[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][8]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][7]~171\,
	combout => \U_ARGMAX|count_ones[0][8]~172_combout\,
	cout => \U_ARGMAX|count_ones[0][8]~173\);

-- Location: FF_X47_Y48_N17
\U_ARGMAX|count_ones[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][8]~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][8]~q\);

-- Location: LCCOMB_X47_Y48_N18
\U_ARGMAX|count_ones[0][9]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][9]~174_combout\ = (\U_ARGMAX|count_ones[0][9]~q\ & (\U_ARGMAX|count_ones[0][8]~173\ $ (GND))) # (!\U_ARGMAX|count_ones[0][9]~q\ & (!\U_ARGMAX|count_ones[0][8]~173\ & VCC))
-- \U_ARGMAX|count_ones[0][9]~175\ = CARRY((\U_ARGMAX|count_ones[0][9]~q\ & !\U_ARGMAX|count_ones[0][8]~173\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][8]~173\,
	combout => \U_ARGMAX|count_ones[0][9]~174_combout\,
	cout => \U_ARGMAX|count_ones[0][9]~175\);

-- Location: FF_X47_Y48_N19
\U_ARGMAX|count_ones[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][9]~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][9]~q\);

-- Location: LCCOMB_X47_Y48_N20
\U_ARGMAX|count_ones[0][10]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][10]~176_combout\ = (\U_ARGMAX|count_ones[0][10]~q\ & (!\U_ARGMAX|count_ones[0][9]~175\)) # (!\U_ARGMAX|count_ones[0][10]~q\ & ((\U_ARGMAX|count_ones[0][9]~175\) # (GND)))
-- \U_ARGMAX|count_ones[0][10]~177\ = CARRY((!\U_ARGMAX|count_ones[0][9]~175\) # (!\U_ARGMAX|count_ones[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][10]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][9]~175\,
	combout => \U_ARGMAX|count_ones[0][10]~176_combout\,
	cout => \U_ARGMAX|count_ones[0][10]~177\);

-- Location: FF_X47_Y48_N21
\U_ARGMAX|count_ones[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][10]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][10]~q\);

-- Location: LCCOMB_X47_Y48_N22
\U_ARGMAX|count_ones[0][11]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][11]~178_combout\ = (\U_ARGMAX|count_ones[0][11]~q\ & (\U_ARGMAX|count_ones[0][10]~177\ $ (GND))) # (!\U_ARGMAX|count_ones[0][11]~q\ & (!\U_ARGMAX|count_ones[0][10]~177\ & VCC))
-- \U_ARGMAX|count_ones[0][11]~179\ = CARRY((\U_ARGMAX|count_ones[0][11]~q\ & !\U_ARGMAX|count_ones[0][10]~177\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][11]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][10]~177\,
	combout => \U_ARGMAX|count_ones[0][11]~178_combout\,
	cout => \U_ARGMAX|count_ones[0][11]~179\);

-- Location: FF_X47_Y48_N23
\U_ARGMAX|count_ones[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][11]~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][11]~q\);

-- Location: LCCOMB_X47_Y48_N24
\U_ARGMAX|count_ones[0][12]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][12]~180_combout\ = (\U_ARGMAX|count_ones[0][12]~q\ & (!\U_ARGMAX|count_ones[0][11]~179\)) # (!\U_ARGMAX|count_ones[0][12]~q\ & ((\U_ARGMAX|count_ones[0][11]~179\) # (GND)))
-- \U_ARGMAX|count_ones[0][12]~181\ = CARRY((!\U_ARGMAX|count_ones[0][11]~179\) # (!\U_ARGMAX|count_ones[0][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][12]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][11]~179\,
	combout => \U_ARGMAX|count_ones[0][12]~180_combout\,
	cout => \U_ARGMAX|count_ones[0][12]~181\);

-- Location: FF_X47_Y48_N25
\U_ARGMAX|count_ones[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][12]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][12]~q\);

-- Location: LCCOMB_X47_Y48_N26
\U_ARGMAX|count_ones[0][13]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][13]~182_combout\ = (\U_ARGMAX|count_ones[0][13]~q\ & (\U_ARGMAX|count_ones[0][12]~181\ $ (GND))) # (!\U_ARGMAX|count_ones[0][13]~q\ & (!\U_ARGMAX|count_ones[0][12]~181\ & VCC))
-- \U_ARGMAX|count_ones[0][13]~183\ = CARRY((\U_ARGMAX|count_ones[0][13]~q\ & !\U_ARGMAX|count_ones[0][12]~181\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][13]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][12]~181\,
	combout => \U_ARGMAX|count_ones[0][13]~182_combout\,
	cout => \U_ARGMAX|count_ones[0][13]~183\);

-- Location: FF_X47_Y48_N27
\U_ARGMAX|count_ones[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][13]~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][13]~q\);

-- Location: LCCOMB_X47_Y48_N28
\U_ARGMAX|count_ones[0][14]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][14]~184_combout\ = (\U_ARGMAX|count_ones[0][14]~q\ & (!\U_ARGMAX|count_ones[0][13]~183\)) # (!\U_ARGMAX|count_ones[0][14]~q\ & ((\U_ARGMAX|count_ones[0][13]~183\) # (GND)))
-- \U_ARGMAX|count_ones[0][14]~185\ = CARRY((!\U_ARGMAX|count_ones[0][13]~183\) # (!\U_ARGMAX|count_ones[0][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][13]~183\,
	combout => \U_ARGMAX|count_ones[0][14]~184_combout\,
	cout => \U_ARGMAX|count_ones[0][14]~185\);

-- Location: FF_X47_Y48_N29
\U_ARGMAX|count_ones[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][14]~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][14]~q\);

-- Location: LCCOMB_X47_Y48_N30
\U_ARGMAX|count_ones[0][15]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][15]~186_combout\ = (\U_ARGMAX|count_ones[0][15]~q\ & (\U_ARGMAX|count_ones[0][14]~185\ $ (GND))) # (!\U_ARGMAX|count_ones[0][15]~q\ & (!\U_ARGMAX|count_ones[0][14]~185\ & VCC))
-- \U_ARGMAX|count_ones[0][15]~187\ = CARRY((\U_ARGMAX|count_ones[0][15]~q\ & !\U_ARGMAX|count_ones[0][14]~185\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][15]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][14]~185\,
	combout => \U_ARGMAX|count_ones[0][15]~186_combout\,
	cout => \U_ARGMAX|count_ones[0][15]~187\);

-- Location: FF_X47_Y48_N31
\U_ARGMAX|count_ones[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][15]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][15]~q\);

-- Location: LCCOMB_X47_Y47_N0
\U_ARGMAX|count_ones[0][16]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][16]~188_combout\ = (\U_ARGMAX|count_ones[0][16]~q\ & (!\U_ARGMAX|count_ones[0][15]~187\)) # (!\U_ARGMAX|count_ones[0][16]~q\ & ((\U_ARGMAX|count_ones[0][15]~187\) # (GND)))
-- \U_ARGMAX|count_ones[0][16]~189\ = CARRY((!\U_ARGMAX|count_ones[0][15]~187\) # (!\U_ARGMAX|count_ones[0][16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][16]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][15]~187\,
	combout => \U_ARGMAX|count_ones[0][16]~188_combout\,
	cout => \U_ARGMAX|count_ones[0][16]~189\);

-- Location: FF_X47_Y47_N1
\U_ARGMAX|count_ones[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][16]~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][16]~q\);

-- Location: LCCOMB_X47_Y47_N2
\U_ARGMAX|count_ones[0][17]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][17]~190_combout\ = (\U_ARGMAX|count_ones[0][17]~q\ & (\U_ARGMAX|count_ones[0][16]~189\ $ (GND))) # (!\U_ARGMAX|count_ones[0][17]~q\ & (!\U_ARGMAX|count_ones[0][16]~189\ & VCC))
-- \U_ARGMAX|count_ones[0][17]~191\ = CARRY((\U_ARGMAX|count_ones[0][17]~q\ & !\U_ARGMAX|count_ones[0][16]~189\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][17]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][16]~189\,
	combout => \U_ARGMAX|count_ones[0][17]~190_combout\,
	cout => \U_ARGMAX|count_ones[0][17]~191\);

-- Location: FF_X47_Y47_N3
\U_ARGMAX|count_ones[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][17]~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][17]~q\);

-- Location: LCCOMB_X47_Y47_N4
\U_ARGMAX|count_ones[0][18]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][18]~192_combout\ = (\U_ARGMAX|count_ones[0][18]~q\ & (!\U_ARGMAX|count_ones[0][17]~191\)) # (!\U_ARGMAX|count_ones[0][18]~q\ & ((\U_ARGMAX|count_ones[0][17]~191\) # (GND)))
-- \U_ARGMAX|count_ones[0][18]~193\ = CARRY((!\U_ARGMAX|count_ones[0][17]~191\) # (!\U_ARGMAX|count_ones[0][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][18]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][17]~191\,
	combout => \U_ARGMAX|count_ones[0][18]~192_combout\,
	cout => \U_ARGMAX|count_ones[0][18]~193\);

-- Location: FF_X47_Y47_N5
\U_ARGMAX|count_ones[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][18]~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][18]~q\);

-- Location: LCCOMB_X47_Y47_N6
\U_ARGMAX|count_ones[0][19]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][19]~194_combout\ = (\U_ARGMAX|count_ones[0][19]~q\ & (\U_ARGMAX|count_ones[0][18]~193\ $ (GND))) # (!\U_ARGMAX|count_ones[0][19]~q\ & (!\U_ARGMAX|count_ones[0][18]~193\ & VCC))
-- \U_ARGMAX|count_ones[0][19]~195\ = CARRY((\U_ARGMAX|count_ones[0][19]~q\ & !\U_ARGMAX|count_ones[0][18]~193\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][19]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][18]~193\,
	combout => \U_ARGMAX|count_ones[0][19]~194_combout\,
	cout => \U_ARGMAX|count_ones[0][19]~195\);

-- Location: FF_X47_Y47_N7
\U_ARGMAX|count_ones[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][19]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][19]~q\);

-- Location: LCCOMB_X47_Y47_N8
\U_ARGMAX|count_ones[0][20]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][20]~196_combout\ = (\U_ARGMAX|count_ones[0][20]~q\ & (!\U_ARGMAX|count_ones[0][19]~195\)) # (!\U_ARGMAX|count_ones[0][20]~q\ & ((\U_ARGMAX|count_ones[0][19]~195\) # (GND)))
-- \U_ARGMAX|count_ones[0][20]~197\ = CARRY((!\U_ARGMAX|count_ones[0][19]~195\) # (!\U_ARGMAX|count_ones[0][20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][19]~195\,
	combout => \U_ARGMAX|count_ones[0][20]~196_combout\,
	cout => \U_ARGMAX|count_ones[0][20]~197\);

-- Location: FF_X47_Y47_N9
\U_ARGMAX|count_ones[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][20]~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][20]~q\);

-- Location: LCCOMB_X47_Y47_N10
\U_ARGMAX|count_ones[0][21]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][21]~198_combout\ = (\U_ARGMAX|count_ones[0][21]~q\ & (\U_ARGMAX|count_ones[0][20]~197\ $ (GND))) # (!\U_ARGMAX|count_ones[0][21]~q\ & (!\U_ARGMAX|count_ones[0][20]~197\ & VCC))
-- \U_ARGMAX|count_ones[0][21]~199\ = CARRY((\U_ARGMAX|count_ones[0][21]~q\ & !\U_ARGMAX|count_ones[0][20]~197\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][21]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][20]~197\,
	combout => \U_ARGMAX|count_ones[0][21]~198_combout\,
	cout => \U_ARGMAX|count_ones[0][21]~199\);

-- Location: FF_X47_Y47_N11
\U_ARGMAX|count_ones[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][21]~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][21]~q\);

-- Location: LCCOMB_X47_Y47_N12
\U_ARGMAX|count_ones[0][22]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][22]~200_combout\ = (\U_ARGMAX|count_ones[0][22]~q\ & (!\U_ARGMAX|count_ones[0][21]~199\)) # (!\U_ARGMAX|count_ones[0][22]~q\ & ((\U_ARGMAX|count_ones[0][21]~199\) # (GND)))
-- \U_ARGMAX|count_ones[0][22]~201\ = CARRY((!\U_ARGMAX|count_ones[0][21]~199\) # (!\U_ARGMAX|count_ones[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][22]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][21]~199\,
	combout => \U_ARGMAX|count_ones[0][22]~200_combout\,
	cout => \U_ARGMAX|count_ones[0][22]~201\);

-- Location: FF_X47_Y47_N13
\U_ARGMAX|count_ones[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][22]~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][22]~q\);

-- Location: LCCOMB_X47_Y47_N14
\U_ARGMAX|count_ones[0][23]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][23]~202_combout\ = (\U_ARGMAX|count_ones[0][23]~q\ & (\U_ARGMAX|count_ones[0][22]~201\ $ (GND))) # (!\U_ARGMAX|count_ones[0][23]~q\ & (!\U_ARGMAX|count_ones[0][22]~201\ & VCC))
-- \U_ARGMAX|count_ones[0][23]~203\ = CARRY((\U_ARGMAX|count_ones[0][23]~q\ & !\U_ARGMAX|count_ones[0][22]~201\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][23]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][22]~201\,
	combout => \U_ARGMAX|count_ones[0][23]~202_combout\,
	cout => \U_ARGMAX|count_ones[0][23]~203\);

-- Location: FF_X47_Y47_N15
\U_ARGMAX|count_ones[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][23]~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][23]~q\);

-- Location: LCCOMB_X47_Y47_N16
\U_ARGMAX|count_ones[0][24]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][24]~204_combout\ = (\U_ARGMAX|count_ones[0][24]~q\ & (!\U_ARGMAX|count_ones[0][23]~203\)) # (!\U_ARGMAX|count_ones[0][24]~q\ & ((\U_ARGMAX|count_ones[0][23]~203\) # (GND)))
-- \U_ARGMAX|count_ones[0][24]~205\ = CARRY((!\U_ARGMAX|count_ones[0][23]~203\) # (!\U_ARGMAX|count_ones[0][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][24]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][23]~203\,
	combout => \U_ARGMAX|count_ones[0][24]~204_combout\,
	cout => \U_ARGMAX|count_ones[0][24]~205\);

-- Location: FF_X47_Y47_N17
\U_ARGMAX|count_ones[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][24]~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][24]~q\);

-- Location: LCCOMB_X47_Y47_N18
\U_ARGMAX|count_ones[0][25]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][25]~206_combout\ = (\U_ARGMAX|count_ones[0][25]~q\ & (\U_ARGMAX|count_ones[0][24]~205\ $ (GND))) # (!\U_ARGMAX|count_ones[0][25]~q\ & (!\U_ARGMAX|count_ones[0][24]~205\ & VCC))
-- \U_ARGMAX|count_ones[0][25]~207\ = CARRY((\U_ARGMAX|count_ones[0][25]~q\ & !\U_ARGMAX|count_ones[0][24]~205\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][24]~205\,
	combout => \U_ARGMAX|count_ones[0][25]~206_combout\,
	cout => \U_ARGMAX|count_ones[0][25]~207\);

-- Location: FF_X47_Y47_N19
\U_ARGMAX|count_ones[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][25]~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][25]~q\);

-- Location: LCCOMB_X47_Y47_N20
\U_ARGMAX|count_ones[0][26]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][26]~208_combout\ = (\U_ARGMAX|count_ones[0][26]~q\ & (!\U_ARGMAX|count_ones[0][25]~207\)) # (!\U_ARGMAX|count_ones[0][26]~q\ & ((\U_ARGMAX|count_ones[0][25]~207\) # (GND)))
-- \U_ARGMAX|count_ones[0][26]~209\ = CARRY((!\U_ARGMAX|count_ones[0][25]~207\) # (!\U_ARGMAX|count_ones[0][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][26]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][25]~207\,
	combout => \U_ARGMAX|count_ones[0][26]~208_combout\,
	cout => \U_ARGMAX|count_ones[0][26]~209\);

-- Location: FF_X47_Y47_N21
\U_ARGMAX|count_ones[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][26]~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][26]~q\);

-- Location: LCCOMB_X47_Y47_N22
\U_ARGMAX|count_ones[0][27]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][27]~210_combout\ = (\U_ARGMAX|count_ones[0][27]~q\ & (\U_ARGMAX|count_ones[0][26]~209\ $ (GND))) # (!\U_ARGMAX|count_ones[0][27]~q\ & (!\U_ARGMAX|count_ones[0][26]~209\ & VCC))
-- \U_ARGMAX|count_ones[0][27]~211\ = CARRY((\U_ARGMAX|count_ones[0][27]~q\ & !\U_ARGMAX|count_ones[0][26]~209\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][26]~209\,
	combout => \U_ARGMAX|count_ones[0][27]~210_combout\,
	cout => \U_ARGMAX|count_ones[0][27]~211\);

-- Location: FF_X47_Y47_N23
\U_ARGMAX|count_ones[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][27]~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][27]~q\);

-- Location: LCCOMB_X47_Y47_N24
\U_ARGMAX|count_ones[0][28]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][28]~212_combout\ = (\U_ARGMAX|count_ones[0][28]~q\ & (!\U_ARGMAX|count_ones[0][27]~211\)) # (!\U_ARGMAX|count_ones[0][28]~q\ & ((\U_ARGMAX|count_ones[0][27]~211\) # (GND)))
-- \U_ARGMAX|count_ones[0][28]~213\ = CARRY((!\U_ARGMAX|count_ones[0][27]~211\) # (!\U_ARGMAX|count_ones[0][28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][27]~211\,
	combout => \U_ARGMAX|count_ones[0][28]~212_combout\,
	cout => \U_ARGMAX|count_ones[0][28]~213\);

-- Location: FF_X47_Y47_N25
\U_ARGMAX|count_ones[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][28]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][28]~q\);

-- Location: LCCOMB_X47_Y47_N26
\U_ARGMAX|count_ones[0][29]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][29]~214_combout\ = (\U_ARGMAX|count_ones[0][29]~q\ & (\U_ARGMAX|count_ones[0][28]~213\ $ (GND))) # (!\U_ARGMAX|count_ones[0][29]~q\ & (!\U_ARGMAX|count_ones[0][28]~213\ & VCC))
-- \U_ARGMAX|count_ones[0][29]~215\ = CARRY((\U_ARGMAX|count_ones[0][29]~q\ & !\U_ARGMAX|count_ones[0][28]~213\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][29]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][28]~213\,
	combout => \U_ARGMAX|count_ones[0][29]~214_combout\,
	cout => \U_ARGMAX|count_ones[0][29]~215\);

-- Location: FF_X47_Y47_N27
\U_ARGMAX|count_ones[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][29]~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][29]~q\);

-- Location: LCCOMB_X47_Y47_N28
\U_ARGMAX|count_ones[0][30]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][30]~216_combout\ = (\U_ARGMAX|count_ones[0][30]~q\ & (!\U_ARGMAX|count_ones[0][29]~215\)) # (!\U_ARGMAX|count_ones[0][30]~q\ & ((\U_ARGMAX|count_ones[0][29]~215\) # (GND)))
-- \U_ARGMAX|count_ones[0][30]~217\ = CARRY((!\U_ARGMAX|count_ones[0][29]~215\) # (!\U_ARGMAX|count_ones[0][30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[0][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[0][29]~215\,
	combout => \U_ARGMAX|count_ones[0][30]~216_combout\,
	cout => \U_ARGMAX|count_ones[0][30]~217\);

-- Location: FF_X47_Y47_N29
\U_ARGMAX|count_ones[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][30]~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][30]~q\);

-- Location: LCCOMB_X47_Y47_N30
\U_ARGMAX|count_ones[0][31]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[0][31]~218_combout\ = \U_ARGMAX|count_ones[0][31]~q\ $ (!\U_ARGMAX|count_ones[0][30]~217\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][31]~q\,
	cin => \U_ARGMAX|count_ones[0][30]~217\,
	combout => \U_ARGMAX|count_ones[0][31]~218_combout\);

-- Location: FF_X47_Y47_N31
\U_ARGMAX|count_ones[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[0][31]~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[0][31]~q\);

-- Location: LCCOMB_X50_Y47_N30
\U_ARGMAX|max_index~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_index~2_combout\ = (!\U_ARGMAX|LessThan9~62_combout\ & !\U_ARGMAX|LessThan8~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_index~2_combout\);

-- Location: LCCOMB_X58_Y48_N0
\U_ARGMAX|count_ones[1][0]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][0]~220_combout\ = \U_ARGMAX|count_ones[1][0]~q\ $ (VCC)
-- \U_ARGMAX|count_ones[1][0]~221\ = CARRY(\U_ARGMAX|count_ones[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][0]~q\,
	datad => VCC,
	combout => \U_ARGMAX|count_ones[1][0]~220_combout\,
	cout => \U_ARGMAX|count_ones[1][0]~221\);

-- Location: IOIBUF_X51_Y54_N29
\inputs[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\inputs[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\inputs[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(2),
	o => \inputs[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\inputs[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(3),
	o => \inputs[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\inputs[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(4),
	o => \inputs[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\inputs[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(5),
	o => \inputs[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\inputs[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(6),
	o => \inputs[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\inputs[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(7),
	o => \inputs[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\inputs[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(8),
	o => \inputs[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\inputs[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(9),
	o => \inputs[9]~input_o\);

-- Location: M9K_X53_Y50_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080",
	mem_init3 => X"40201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008000201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008",
	mem_init2 => X"04020100804020100804020100804020100804020100804020100804020100804020100800020100804020100804020100804020100804020100804020100804000100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100004020100804020100804020100804020100804020100804020100800020100804020100804020100804020100804020100804020100804000100804020100804020100804020100804020100804020100804020000804020100804020100804020100804020100804020100804020100004020100804020100804020100804020100804020100",
	mem_init1 => X"80402010080002010080402010080402010080402010080402010080402010080400010080402010080402010080402010080402010080402010080402000080402010080402010080402010080402010080402010080402010000402010080402010080402010080402010080402010080402010080002010080402010080402010080402010080402010080402010080400010080402010080402010080402010080402010080402010080402000080402010080402010080402010080402010080402010080402010000402010080402010080402010080402010080402010080402010080002010080402010080402010080402010080402010080402010",
	mem_init0 => X"08040001008040201008040201008040201008040201008040201008040200008040201008040201008040201008040201008040201008040201000040201008040201008040201008040201008040201008040201008000201008040201008040201008040201008040201008040201008040001008040201008040201008040201008040201008040201008040200008040201008040201008040201008040201008040201008040201000040201008040201008040201008040201008040201008040201008000201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040206",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y44_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000400010000002000000402010080000010000002000080002000080002000080000010000002010080400000080000010000400010000400010000400000080000010080402000000400000080002000080402000080002000000400000080402010000002000000400010000400010000400010000002000000402010080",
	mem_init3 => X"00001000000200008000200008000200008000001000000201008040000008000001000040001008040001000040000008000001008040200000040000008000200008040200008000200000040000008040201000000200000040001000040001000040001000000200000040201008000001000000200008000201008000200008000001000000201008040000008000001000040001008040001000040000008000001008040200000040000008000200008000200008000200000040000008040201000000200000040001000040201000040001000000200000040201008000001000000200008000201008000200008000001000000201008040000008",
	mem_init2 => X"00000100004000100804000100004000000800000100804020000004000000800020000800020000800020000004000000804020100000020000004000100004020100004000100000020000004020100800000100000020000800020100800020000800000100000020100804000000800000100004000100804000100004000000800000100804020000004000000800020000804020000800020000004000000804020100000020000004000100004000100004000100000020000004020100800000100000020000800020000800020000800000100000020100804000000800000100004000100804000100004000000800000100804020000004000000",
	mem_init1 => X"80002000080002000080002000000400000080402010000002000000400010000402010000400010000002000000402010080000010000002000080002010080002000080000010000002010080400000080000010000400010000400010000400000080000010080402000000400000080002000080402000080002000000400000080402010000002000000400010000400010000400010000002000000402010080000010000002000080002010080002000080000010000002010080400000080000010000400010080400010000400000080000010080402000000400000080002000080002000080002000000400000080402010000002000000400010",
	mem_init0 => X"00040001000040001000000200000040201008000001000000200008000201008000200008000001000000201008040000008000001000040001008040001000040000008000001008040200000040000008000200008040200008000200000040000008040201000000200000040001000040001000040001000000200000040201008000001000000200008000201008000200008000001000000201008040000008000001000040001008040001000040000008000001008040200000040000008000200008040200008000200000040000008040201000000200000040001000040201000040001000000200000040201008000001000000200008000201",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y41_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"030000207028140E060301C0603038180C07028140E01000180C04030180001038140A07030180E030181C0C06038140A07008000C06008180C000081C0A05038180C070180C0E060301C0A05038040006030100C06000040E050281C0C060380C0607030180E050281C0200030180A06030000207028140E060301C06030381",
	mem_init3 => X"80C07028140E01000180C01030180001038140A07030180E030181C0C06038140A07008000C06000180C000081C0A05038180C070180C0E060301C0A050380400060300C0C06000040E050281C0C060380C0607030180E050281C0200030180406030000207028140E060301C0603038180C07028140E01000180C02030180001038140A07030180E030181C0C06038140A07008000C06000180C000081C0A05038180C070180C0E060301C0A05038040006030100C06000040E050281C0C060380C0607030180E050281C0200030180A06030000207028140E060301C0603038180C07028140E01000180C05030180001038140A07030180E030181C0C06038",
	mem_init2 => X"140A07008000C06020180C000081C0A05038180C070180C0E060301C0A05038040006030000C06000040E050281C0C060380C0607030180E050281C0200030180606030000207028140E060301C0603038180C07028140E01000180C03030180001038140A07030180E030181C0C06038140A07008000C06028180C000081C0A05038180C070180C0E060301C0A05038040006030100C06000040E050281C0C060380C0607030180E050281C0200030180E06030000207028140E060301C0603038180C07028140E01000180C04030180001038140A07030180E030181C0C06038140A07008000C06020180C000081C0A05038180C070180C0E060301C0A0503",
	mem_init1 => X"8040006030040C06000040E050281C0C060380C0607030180E050281C0200030180606030000207028140E060301C0603038180C07028140E01000180C02030180001038140A07030180E030181C0C06038140A07008000C06020180C000081C0A05038180C070180C0E060301C0A05038040006030140C06000040E050281C0C060380C0607030180E050281C0200030180006030000207028140E060301C0603038180C07028140E01000180C03030180001038140A07030180E030181C0C06038140A07008000C06020180C000081C0A05038180C070180C0E060301C0A05038040006030100C06000040E050281C0C060380C0607030180E050281C02000",
	mem_init0 => X"30180206030000207028140E060301C0603038180C07028140E01000180C02030180001038140A07030180E030181C0C06038140A07008000C06028180C000081C0A05038180C070180C0E060301C0A050380400060300C0C06000040E050281C0C060380C0607030180E050281C0200030180806030000207028140E060301C0603038180C07028140E01000180C02030180001038140A07030180E030181C0C06038140A07008000C06018180C000081C0A05038180C070180C0E060301C0A05038040006030080C06000040E050281C0C060380C0607030180E050281C0200030180406030000207028140E060301C0603038180C07028140E01000180C01",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y43_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a84\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 84,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N12
\U_ARGMAX|count_ones~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~372_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(102) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(200)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(62)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(200),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(62),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(100),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(102),
	combout => \U_ARGMAX|count_ones~372_combout\);

-- Location: M9K_X73_Y49_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a90\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 90,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y45_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a67\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 67,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y53_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a50\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 50,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N28
\U_ARGMAX|count_ones~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~374_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(106) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(100)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(76)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(100),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(106),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(76),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(78),
	combout => \U_ARGMAX|count_ones~374_combout\);

-- Location: M9K_X53_Y42_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020080804020000C00010100006010100802030000802000180004020100004020100006000080800030080804010180004010000C00020100800020100800030000404000180404020080",
	mem_init3 => X"C00020080006000100804020100804000180002020000C02020100406000100400030000804020000804020000C00010100006010100802030000802000180004020100004020100006000080800030080804010180004010000C00020100804020100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020080804020000C00010100006010100802030000802000180004020100C04020100006000080800030080804010180004010000C00020100806020100800030000404000180404020080C00020080006000100804020100804000180002020000C0202010040600010",
	mem_init2 => X"0400030000804020000804020000C00010100006010100802030000802000180004020100804020100006000080800030080804010180004010000C00020100800020100800030000404000180404020080C00020080006000100804010100804000180002020000C02020100406000100400030000804020000804020000C00010100006010100802030000802000180004020100804020100006000080800030080804010180004010000C00020100804020100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020000804020000C000101000060101008020300008020001",
	mem_init1 => X"80004020100804020100006000080800030080804010180004010000C00020100800020100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020180804020000C00010100006010100802030000802000180004020100804020100006000080800030080804010180004010000C00020100804020100800030000404000180404020080C00020080006000100804010100804000180002020000C02020100406000100400030000804020100804020000C00010100006010100802030000802000180004020100004020100006000080800030080804010180004010000C00020",
	mem_init0 => X"100804020100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020100804020000C00010100006010100802030000802000180004020100404020100006000080800030080804010180004010000C00020100800020100800030000404000180404020080C00020080006000100804000100804000180002020000C02020100406000100400030000804020080804020000C00010100006010100802030000802000180004020100004020100006000080800030080804010180004010000C00020100800020100800030000404000180404020080C0002008000600010080407",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y43_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0180806020180806020180C04020180C04030100C04030100C06010180C04030100C04030100C06020100C06020180806020180806030000C06020180806020180806030100806030100C04030100C04030180406030100C04030100C04030180804030180806020180806020180C02030180806020180806020180C04020180",
	mem_init3 => X"C04030100C04030100C06000180C04030100C04030100C06020100C06020180806020180806030000C06020180806020180806030100806030100C04030100C04030180006030100C04030100C04030180804030180806020180806020180C00030180806020180806020180C04020180C04030100C04030100C06000180C04030100C04030100C06020100C06020180806020180806030000C06020180806020180806030100806030100C04030100C04030180C06030100C04030100C04030180804030180806020180806020180C00030180806020180806020180C04020180C04030100C04030100C06000180C04030100C04030100C06020100C0602018",
	mem_init2 => X"0806020180806030000C06020180806020180806030100806030100C04030100C04030180C06030100C04030100C04030180804030180806020180806020180C04030180806020180806020180C04020180C04030100C04030100C06000180C04030100C04030100C06020100C06020180806020180806030180C06020180806020180806030100806030100C04030100C04030180C06030100C04030100C04030180804030180806020180806020180C06030180806020180806020180C04020180C04030100C04030100C06030180C04030100C04030100C06020100C06020180806020180806030180C06020180806020180806030100806030100C040301",
	mem_init1 => X"00C04030180806030100C04030100C04030180804030180806020180806020180C04030180806020180806020180C04020180C04030100C04030100C06020180C04030100C04030100C06020100C06020180806020180806030180C06020180806020180806030100806030100C04030100C04030180806030100C04030100C04030180804030180806020180806020180C06030180806020180806020180C04020180C04030100C04030100C06020180C04030100C04030100C06020100C06020180806020180806030180C06020180806020180806030100806030100C04030100C04030180C06030100C04030100C04030180804030180806020180806020",
	mem_init0 => X"180C04030180806020180806020180C04020180C04030100C04030100C06020180C04030100C04030100C06020100C06020180806020180806030100C06020180806020180806030100806030100C04030100C04030180806030100C04030100C04030180804030180806020180806020180C02030180806020180806020180C04020180C04030100C04030100C06000180C04030100C04030100C06020100C06020180806020180806030000C06020180806020180806030100806030100C04030100C04030180006030100C04030100C04030180804030180806020180806020180C04030180806020180806020180C04020180C04030100C04030100C0603",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y46_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a43\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 43,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N30
\U_ARGMAX|count_ones~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~371_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(95) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(230)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(127)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(95),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(230),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(127),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(180),
	combout => \U_ARGMAX|count_ones~371_combout\);

-- Location: M9K_X53_Y49_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0080002010000402010080002010000402010080002010000400010000400010080002010080400010080002010080400010080002000080002000080400010080402000080400010080402000080400010000000010000402000080402010000402000080402010000402000080000000080002010000402010080002010000",
	mem_init3 => X"40201008000201000040001000040001008000201008040001008000201008040001008000200008000200008040001008040200008040001008040200008040001000000001000040200008040201000040200008040201000040200008000000008000201000040201008000201000040201008000201000040001000040001008000201008040001008000201008040001008000200008000200008040001008040200008040001008040200008040001000040001000040200008040201000040200008040201000040200008000000008000201000040201008000201000040201008000201000040001000040001008000201008040001008000201008",
	mem_init2 => X"04000100800020000000020000804000100804020000804000100804020000804000100004000100004020000804020100004020000804020100004020000800000000800020100004020100800020100004020100800020100004000000004000100800020100804000100800020100804000100800020000000020000804000100804020000804000100804020000804000100004000100004020000804020100004020000804020100004020000800000000800020100004020100800020100004020100800020100004000100004000100800020100804000100800020100804000100800020000000020000804000100804020000804000100804020000",
	mem_init1 => X"80400010000400010000402000080402010000402000080402010000402000080000000080002010000402010080002010000402010080002010000400010000400010080002010080400010080002010080400010080002000080002000080400010080402000080400010080402000080400010000400010000402000080402010000402000080402010000402000080002000080002010000402010080002010000402010080002010000400000000400010080002010080400010080002010080400010080002000080002000080400010080402000080400010080402000080400010000400010000402000080402010000402000080402010000402000",
	mem_init0 => X"08000200008000201000040201008000201000040201008000201000040001000040001008000201008040001008000201008040001008000200008000200008040001008040200008040001008040200008040001000000001000040200008040201000040200008040201000040200008000200008000201000040201008000201000040201008000201000040001000040001008000201008040001008000201008040001008000200000000200008040001008040200008040001008040200008040001000040001000040200008040201000040200008040201000040200008000200008000201000040201008000201000040201008000201000040001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N10
\U_ARGMAX|count_ones~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~373_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(104) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(141)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(226)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(183)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(141),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(183),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(226),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(104),
	combout => \U_ARGMAX|count_ones~373_combout\);

-- Location: LCCOMB_X56_Y48_N26
\U_ARGMAX|count_ones~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~375_combout\ = (\U_ARGMAX|count_ones~372_combout\ & (\U_ARGMAX|count_ones~374_combout\ & (\U_ARGMAX|count_ones~371_combout\ & \U_ARGMAX|count_ones~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~372_combout\,
	datab => \U_ARGMAX|count_ones~374_combout\,
	datac => \U_ARGMAX|count_ones~371_combout\,
	datad => \U_ARGMAX|count_ones~373_combout\,
	combout => \U_ARGMAX|count_ones~375_combout\);

-- Location: M9K_X53_Y52_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0100006000180006000180002010000C00030000C00030000802010080800030000C00030000C00010080006000180006000180004010080404000180006000180006000080400030000C00030000C00020080802020000C00030000C00030000402000180006000180006000100404010100006000180006000180002010000",
	mem_init3 => X"C00030000C00030000802020080800030000C00030000C00010080006000180006000180004010180404000180006000180006000080400030000C00030000C00020080002020000C00030000C00030000402000180006000180006000100402010100006000180006000180002010000C00030000C00030000802030080800030000C00030000C00010080006000180006000180004010000404000180006000180006000080400030000C00030000C00020080802020000C00030000C00030000402000180006000180006000100400010100006000180006000180002010000C00030000C00030000802010080800030000C00030000C0001008000600018",
	mem_init2 => X"0006000180004010080404000180006000180006000080400030000C00030000C00020080C02020000C00030000C00030000402000180006000180006000100404010100006000180006000180002010000C00030000C00030000802010080800030000C00030000C00010080006000180006000180004010180404000180006000180006000080400030000C00030000C00020080002020000C00030000C00030000402000180006000180006000100400010100006000180006000180002010000C00030000C00030000802010080800030000C00030000C00010080006000180006000180004010100404000180006000180006000080400030000C000300",
	mem_init1 => X"00C00020080802020000C00030000C00030000402000180006000180006000100400010100006000180006000180002010000C00030000C00030000802030080800030000C00030000C00010080006000180006000180004010100404000180006000180006000080400030000C00030000C00020080402020000C00030000C00030000402000180006000180006000100406010100006000180006000180002010000C00030000C00030000802010080800030000C00030000C00010080006000180006000180004010000404000180006000180006000080400030000C00030000C00020080402020000C00030000C00030000402000180006000180006000",
	mem_init0 => X"100404010100006000180006000180002010000C00030000C00030000802030080800030000C00030000C00010080006000180006000180004010080404000180006000180006000080400030000C00030000C00020080402020000C00030000C00030000402000180006000180006000100402010100006000180006000180002010000C00030000C00030000802030080800030000C00030000C00010080006000180006000180004010080404000180006000180006000080400030000C00030000C00020080C02020000C00030000C00030000402000180006000180006000100406010100006000180006000180002010000C00030000C000300008020A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y47_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0180806030180C04020180806030100C04020180C06030100C06000180C04030180C06020100C04030180806020100C06030180806030000C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C00030180806030180C04020180806030100",
	mem_init3 => X"C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C02030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C04030100806030180C04030180006030100C06030180804030100C06020180804030180C06020180C02030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C0403018080602010",
	mem_init2 => X"0C06030180806030000C06020180C06030100806020180C04030100806030180C04030180006030100C06030180804030100C06020180804030180C06020180C02030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030000C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C02030180806030180C04020180806030100C04020180C06030100C06000180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C040301008060301",
	mem_init1 => X"80C04030180406030100C06030180804030100C06020180804030180C06020180C02030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030000C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C00030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C04030100806030180C04030180006030100C06030180804030100C06020180804030180C06020",
	mem_init0 => X"180C02030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C00030180806030180C04020180806030100C04020180C06030100C06010180C04030180C06020100C04030180806020100C06030180806030080C06020180C06030100806020180C04030100806030180C04030180406030100C06030180804030100C06020180804030180C06020180C06030180806030180C04020180806030100C04020180C06030100C0601",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y44_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"020180805020100A04020100C06020100805020100A04030100802020100C04028100805020100806030100804028100805020180804000100806020140804028100804030180804020140804028100C04020000804030100A04020140804020180C04020100A04020140806020100004020180805020100A04020100C060201",
	mem_init3 => X"00805020100A04030100801020100C04028100805020100806030100804028100805020180804018100806020140804028100804030180804020140804028100C04020040804030100A04020140804020180C04020100A04020140806020100404020180805020100A04020100C06020100805020100A04030100802020100C04028100805020100806030100804028100805020180804000100806020140804028100804030180804020140804028100C04020040804030100A04020140804020180C04020100A04020140806020100404020180805020100A04020100C06020100805020100A04030100800020100C04028100805020100806030100804028",
	mem_init2 => X"100805020180804008100806020140804028100804030180804020140804028100C04020000804030100A04020140804020180C04020100A04020140806020100604020180805020100A04020100C06020100805020100A04030100800020100C04028100805020100806030100804028100805020180804018100806020140804028100804030180804020140804028100C04020040804030100A04020140804020180C04020100A04020140806020100604020180805020100A04020100C06020100805020100A04030100802020100C0402810080502010080603010080402810080502018080400010080602014080402810080403018080402014080402",
	mem_init1 => X"8100C04020040804030100A04020140804020180C04020100A04020140806020100204020180805020100A04020100C06020100805020100A04030100802020100C04028100805020100806030100804028100805020180804008100806020140804028100804030180804020140804028100C04020000804030100A04020140804020180C04020100A04020140806020100004020180805020100A04020100C06020100805020100A04030100800020100C04028100805020100806030100804028100805020180804008100806020140804028100804030180804020140804028100C04020080804030100A04020140804020180C04020100A040201408060",
	mem_init0 => X"20100204020180805020100A04020100C06020100805020100A04030100802020100C04028100805020100806030100804028100805020180804000100806020140804028100804030180804020140804028100C04020000804030100A04020140804020180C04020100A04020140806020100404020180805020100A04020100C06020100805020100A04030100802020100C04028100805020100806030100804028100805020180804000100806020140804028100804030180804020140804028100C04020080804030100A04020140804020180C04020100A04020140806020100404020180805020100A04020100C06020100805020100A0403010080B",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N22
\U_ARGMAX|count_ones~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~362_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(55) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(114)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(97)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(136)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(114),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(136),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(55),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(97),
	combout => \U_ARGMAX|count_ones~362_combout\);

-- Location: M9K_X53_Y40_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080",
	mem_init3 => X"40201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008",
	mem_init2 => X"04020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100",
	mem_init1 => X"80402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010",
	mem_init0 => X"08040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040001008040201008040201008040201008040201008040201008040205",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y44_N20
\U_ARGMAX|count_ones~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~361_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(49) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(154)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(129)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(154),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(49),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(129),
	combout => \U_ARGMAX|count_ones~361_combout\);

-- Location: M9K_X53_Y48_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a69\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 69,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y51_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080",
	mem_init3 => X"40201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008",
	mem_init2 => X"04020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100804020100",
	mem_init1 => X"80402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010080402010",
	mem_init0 => X"08040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040201008040202",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y47_N0
\U_ARGMAX|count_ones~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~364_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(81) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(150)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(117)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(150),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(117),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(75),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(81),
	combout => \U_ARGMAX|count_ones~364_combout\);

-- Location: M9K_X73_Y47_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0080402010000402010000000000000002010080002010080402000080402010080002010080000000000000010080400010080402010080402010080400010080400000000000000080402000080402010080402010080402000080402000000000000000402010000402010080402010080402010000402010000000000000",
	mem_init3 => X"00201008000201008040200008040201008000201008000000000000001008040001008040201000040201008040001008040000000000000008040200008040201008040201008040200008040200000000000000040201000040201008040201008040201000040201000000000000000201008000201008040200008040201008000201008000000000000001008040001008040201000040201008040001008040000000000000008040200008040201008000201008040200008040200000000000000040201000040201008040201008040201000040201000000000000000201008000201008040201008040201008000201008000000000000001008",
	mem_init2 => X"04000100804020100004020100804000100804000000000000000804020000804020100800020100804020000804020000000000000004020100004020100804000100804020100004020100000000000000020100800020100804020000804020100800020100800000000000000100804000100804020100804020100804000100804000000000000000804020000804020100800020100804020000804020000000000000004020100004020100804000100804020100004020100000000000000020100800020100804020000804020100800020100800000000000000100804000100804020100804020100804000100804000000000000000804020000",
	mem_init1 => X"80402010080002010080402000080402000000000000000402010000402010080402010080402010000402010000000000000002010080002010080402000080402010080002010080000000000000010080400010080402010000402010080400010080400000000000000080402000080402010080402010080402000080402000000000000000402010000402010080400010080402010000402010000000000000002010080002010080402000080402010080002010080000000000000010080400010080402010000402010080400010080400000000000000080402000080402010080002010080402000080402000000000000000402010000402010",
	mem_init0 => X"08040001008040201000040201000000000000000201008000201008040200008040201008000201008000000000000001008040001008040201008040201008040001008040000000000000008040200008040201008000201008040200008040200000000000000040201000040201008040001008040201000040201000000000000000201008000201008040200008040201008000201008000000000000001008040001008040201000040201008040001008040000000000000008040200008040201008000201008040200008040200000000000000040201000040201008040001008040201000040201000000000000000201008000201008040201",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y46_N2
\U_ARGMAX|count_ones~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~363_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(63) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(254) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(56) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(166)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(254),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(56),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(63),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(166),
	combout => \U_ARGMAX|count_ones~363_combout\);

-- Location: LCCOMB_X56_Y48_N8
\U_ARGMAX|count_ones~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~365_combout\ = (\U_ARGMAX|count_ones~362_combout\ & (\U_ARGMAX|count_ones~361_combout\ & (\U_ARGMAX|count_ones~364_combout\ & \U_ARGMAX|count_ones~363_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~362_combout\,
	datab => \U_ARGMAX|count_ones~361_combout\,
	datac => \U_ARGMAX|count_ones~364_combout\,
	datad => \U_ARGMAX|count_ones~363_combout\,
	combout => \U_ARGMAX|count_ones~365_combout\);

-- Location: LCCOMB_X56_Y44_N22
\U_ARGMAX|count_ones~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~358_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(16) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(26)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(246) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(246),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(26),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(108),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(16),
	combout => \U_ARGMAX|count_ones~358_combout\);

-- Location: M9K_X53_Y46_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a34\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 34,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y50_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0001C0E020301C0207008080A05010040E01038180407038000C03030000E07010180E010380404050280802070081C0C020381C0006020180007038080C070081C0202028140401038040E060101C0E00030100C000381C0406038040E01010140A020081C0207030080E070001806060001C0E020301C0207008080A050100",
	mem_init3 => X"40E01038180407038000C03030000E07010180E010380404050280802070081C0C020381C0006008180007038080C070081C0202028140401038040E060101C0E00030140C000381C0406038040E01010140A020081C0207030080E07000180A060001C0E020301C0207008080A05010040E01038180407038000C02030000E07010180E010380404050280802070081C0C020381C0006020180007038080C070081C0202028140401038040E060101C0E00030000C000381C0406038040E01010140A020081C0207030080E07000180C060001C0E020301C0207008080A05010040E01038180407038000C00030000E07010180E01038040405028080207008",
	mem_init2 => X"1C0C020381C0006010180007038080C070081C0202028140401038040E060101C0E00030040C000381C0406038040E01010140A020081C0207030080E07000180A060001C0E020301C0207008080A05010040E01038180407038000C04030000E07010180E010380404050280802070081C0C020381C0006020180007038080C070081C0202028140401038040E060101C0E00030000C000381C0406038040E01010140A020081C0207030080E07000180A060001C0E020301C0207008080A05010040E01038180407038000C03030000E07010180E010380404050280802070081C0C020381C0006020180007038080C070081C0202028140401038040E0601",
	mem_init1 => X"01C0E000300C0C000381C0406038040E01010140A020081C0207030080E07000180A060001C0E020301C0207008080A05010040E01038180407038000C02030000E07010180E010380404050280802070081C0C020381C0006000180007038080C070081C0202028140401038040E060101C0E00030000C000381C0406038040E01010140A020081C0207030080E070001802060001C0E020301C0207008080A05010040E01038180407038000C04030000E07010180E010380404050280802070081C0C020381C0006000180007038080C070081C0202028140401038040E060101C0E000300C0C000381C0406038040E01010140A020081C0207030080E070",
	mem_init0 => X"001806060001C0E020301C0207008080A05010040E01038180407038000C02030000E07010180E010380404050280802070081C0C020381C0006000180007038080C070081C0202028140401038040E060101C0E00030100C000381C0406038040E01010140A020081C0207030080E070001806060001C0E020301C0207008080A05010040E01038180407038000C02030000E07010180E010380404050280802070081C0C020381C0006020180007038080C070081C0202028140401038040E060101C0E00030080C000381C0406038040E01010140A020081C0207030080E070001804060001C0E020301C0207008080A05010040E01038180407038000C01",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y46_N12
\U_ARGMAX|count_ones~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~357_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(13) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(40)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(229) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(229),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(40),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(13),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(15),
	combout => \U_ARGMAX|count_ones~357_combout\);

-- Location: M9K_X53_Y51_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0180006000080800010180806030100C02000100400030000C04010100C00030000404000080C04030180806010000802000180006020180806000180002020000406020180C04030080004010000C00030100804030000C00010100002030100C06020180400020080006000180806020180006000080800010180806030100",
	mem_init3 => X"C02000100400030000C04030100C00030000404000080C04030180806010000802000180006020080806000180002020000406020180C04030080004010000C00030100804030000C00010100002030100C06020180400020080006000180800020180006000080800010180806030100C02000100400030000C04020100C00030000404000080C04030180806010000802000180006020180806000180002020000406020180C04030080004010000C00030100004030000C00010100002030100C06020180400020080006000180802020180006000080800010180806030100C02000100400030000C04020100C00030000404000080C0403018080601000",
	mem_init2 => X"0802000180006020080806000180002020000406020180C04030080004010000C00030100004030000C00010100002030100C06020180400020080006000180806020180006000080800010180806030100C02000100400030000C04010100C00030000404000080C04030180806010000802000180006020080806000180002020000406020180C04030080004010000C00030100004030000C00010100002030100C06020180400020080006000180806020180006000080800010180806030100C02000100400030000C04010100C00030000404000080C04030180806010000802000180006020100806000180002020000406020180C040300800040100",
	mem_init1 => X"00C00030100C04030000C00010100002030100C06020180400020080006000180804020180006000080800010180806030100C02000100400030000C04020100C00030000404000080C04030180806010000802000180006020000806000180002020000406020180C04030080004010000C00030100804030000C00010100002030100C06020180400020080006000180800020180006000080800010180806030100C02000100400030000C04010100C00030000404000080C04030180806010000802000180006020000806000180002020000406020180C04030080004010000C00030100404030000C00010100002030100C06020180400020080006000",
	mem_init0 => X"180806020180006000080800010180806030100C02000100400030000C04020100C00030000404000080C04030180806010000802000180006020100806000180002020000406020180C04030080004010000C00030100404030000C00010100002030100C06020180400020080006000180802020180006000080800010180806030100C02000100400030000C04020100C00030000404000080C04030180806010000802000180006020080806000180002020000406020180C04030080004010000C00030100804030000C00010100002030100C06020180400020080006000180804020180006000080800010180806030100C02000100400030000C040B",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y50_N8
\U_ARGMAX|count_ones~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~356_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(5) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(224)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(87) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(191)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(87),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(5),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(224),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(191),
	combout => \U_ARGMAX|count_ones~356_combout\);

-- Location: LCCOMB_X56_Y50_N30
\U_ARGMAX|count_ones~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~359_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(19) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(185)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(37) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(37),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(185),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(19),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(28),
	combout => \U_ARGMAX|count_ones~359_combout\);

-- Location: LCCOMB_X56_Y48_N4
\U_ARGMAX|count_ones~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~360_combout\ = (\U_ARGMAX|count_ones~358_combout\ & (\U_ARGMAX|count_ones~357_combout\ & (\U_ARGMAX|count_ones~356_combout\ & \U_ARGMAX|count_ones~359_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~358_combout\,
	datab => \U_ARGMAX|count_ones~357_combout\,
	datac => \U_ARGMAX|count_ones~356_combout\,
	datad => \U_ARGMAX|count_ones~359_combout\,
	combout => \U_ARGMAX|count_ones~360_combout\);

-- Location: M9K_X53_Y45_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0180806030100804020180C06010080400000000002010000402030180C04030180804020100C06030080402000000000010080002010180C06020180C04020100806030180402010000000000080400010080C06030100C06020100804030180C02010080000000000402000080406030180806030100804020180C06010080",
	mem_init3 => X"400000000002010000402020180C04030180804020100C06030080402000000000010080002010100C06020180C04020100806030180402010000000000080400010080806030100C06020100804030180C02010080000000000402000080404030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010100C06020180C04020100806030180402010000000000080400010080C06030100C06020100804030180C02010080000000000402000080406030180806030100804020180C06010080400000000002010000402020180C04030180804020100C0603008040200000",
	mem_init2 => X"0000010080002010100C06020180C04020100806030180402010000000000080400010080806030100C06020100804030180C02010080000000000402000080404030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010100C06020180C04020100806030180402010000000000080400010080C06030100C06020100804030180C02010080000000000402000080406030180806030100804020180C06010080400000000002010000402030180C04030180804020100C06030080402000000000010080002010180C06020180C040201008060301804020100000000000",
	mem_init1 => X"80400010080806030100C06020100804030180C02010080000000000402000080404030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010180C06020180C04020100806030180402010000000000080400010080806030100C06020100804030180C02010080000000000402000080404030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010180C06020180C04020100806030180402010000000000080400010080C06030100C06020100804030180C02010080000000000402000",
	mem_init0 => X"080404030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010100C06020180C04020100806030180402010000000000080400010080806030100C06020100804030180C02010080000000000402000080406030180806030100804020180C06010080400000000002010000402020180C04030180804020100C06030080402000000000010080002010100C06020180C04020100806030180402010000000000080400010080806030100C06020100804030180C02010080000000000402000080404030180806030100804020180C0601008040000000000201000040203",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N6
\U_ARGMAX|count_ones~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~366_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(84) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(169)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(1)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(158)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(169),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(158),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(84),
	combout => \U_ARGMAX|count_ones~366_combout\);

-- Location: LCCOMB_X57_Y47_N10
\U_ARGMAX|count_ones~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~367_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(86) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(70)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(67))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(89),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(70),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(67),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(86),
	combout => \U_ARGMAX|count_ones~367_combout\);

-- Location: LCCOMB_X56_Y44_N2
\U_ARGMAX|count_ones~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~368_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(88) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(177)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(154)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(88),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(177),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(154),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(77),
	combout => \U_ARGMAX|count_ones~368_combout\);

-- Location: LCCOMB_X56_Y46_N6
\U_ARGMAX|count_ones~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~369_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(91) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(131)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(15)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(131),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(15),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(91),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(116),
	combout => \U_ARGMAX|count_ones~369_combout\);

-- Location: LCCOMB_X56_Y48_N24
\U_ARGMAX|count_ones~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~370_combout\ = (\U_ARGMAX|count_ones~366_combout\ & (\U_ARGMAX|count_ones~367_combout\ & (\U_ARGMAX|count_ones~368_combout\ & \U_ARGMAX|count_ones~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~366_combout\,
	datab => \U_ARGMAX|count_ones~367_combout\,
	datac => \U_ARGMAX|count_ones~368_combout\,
	datad => \U_ARGMAX|count_ones~369_combout\,
	combout => \U_ARGMAX|count_ones~370_combout\);

-- Location: LCCOMB_X56_Y48_N16
\U_ARGMAX|count_ones~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~376_combout\ = (\U_ARGMAX|count_ones~375_combout\ & (\U_ARGMAX|count_ones~365_combout\ & (\U_ARGMAX|count_ones~360_combout\ & \U_ARGMAX|count_ones~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~375_combout\,
	datab => \U_ARGMAX|count_ones~365_combout\,
	datac => \U_ARGMAX|count_ones~360_combout\,
	datad => \U_ARGMAX|count_ones~370_combout\,
	combout => \U_ARGMAX|count_ones~376_combout\);

-- Location: M9K_X73_Y42_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a59\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 59,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y49_N26
\U_ARGMAX|count_ones~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~386_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(132) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(8)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(96)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(254)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(8),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(96),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(254),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(132),
	combout => \U_ARGMAX|count_ones~386_combout\);

-- Location: LCCOMB_X57_Y49_N8
\U_ARGMAX|count_ones~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~389_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(137) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(195)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(142) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(142),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(195),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(98),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(137),
	combout => \U_ARGMAX|count_ones~389_combout\);

-- Location: LCCOMB_X57_Y49_N14
\U_ARGMAX|count_ones~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~388_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(135) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(103)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(239) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(239),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(135),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(59),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(103),
	combout => \U_ARGMAX|count_ones~388_combout\);

-- Location: LCCOMB_X57_Y49_N16
\U_ARGMAX|count_ones~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~387_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(134) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(54)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(248)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(54),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(248),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(36),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(134),
	combout => \U_ARGMAX|count_ones~387_combout\);

-- Location: LCCOMB_X57_Y49_N30
\U_ARGMAX|count_ones~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~390_combout\ = (\U_ARGMAX|count_ones~386_combout\ & (\U_ARGMAX|count_ones~389_combout\ & (\U_ARGMAX|count_ones~388_combout\ & \U_ARGMAX|count_ones~387_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~386_combout\,
	datab => \U_ARGMAX|count_ones~389_combout\,
	datac => \U_ARGMAX|count_ones~388_combout\,
	datad => \U_ARGMAX|count_ones~387_combout\,
	combout => \U_ARGMAX|count_ones~390_combout\);

-- Location: M9K_X73_Y48_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a138\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 138,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a138_PORTADATAOUT_bus\);

-- Location: LCCOMB_X72_Y48_N12
\U_ARGMAX|count_ones~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~392_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(163) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(147) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(153) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(160))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(163),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(147),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(153),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(160),
	combout => \U_ARGMAX|count_ones~392_combout\);

-- Location: LCCOMB_X61_Y48_N28
\U_ARGMAX|count_ones~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~391_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(138) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(51)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(233) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(173)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(138),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(233),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(173),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(51),
	combout => \U_ARGMAX|count_ones~391_combout\);

-- Location: LCCOMB_X72_Y48_N6
\U_ARGMAX|count_ones~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~393_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(172) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(167) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(171) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(176))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(172),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(167),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(171),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(176),
	combout => \U_ARGMAX|count_ones~393_combout\);

-- Location: M9K_X73_Y52_N0
\U_MEMORY|altsyncram_component|auto_generated|ram_block1a178\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image_input.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U_MEMORY|altsyncram:altsyncram_component|altsyncram_his3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 178,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 256,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEMORY|altsyncram_component|auto_generated|ram_block1a178_PORTADATAOUT_bus\);

-- Location: LCCOMB_X72_Y52_N8
\U_ARGMAX|count_ones~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~394_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(178) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(186) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(203) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(209))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(178),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(186),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(203),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(209),
	combout => \U_ARGMAX|count_ones~394_combout\);

-- Location: LCCOMB_X61_Y48_N10
\U_ARGMAX|count_ones~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~395_combout\ = (\U_ARGMAX|count_ones~392_combout\ & (\U_ARGMAX|count_ones~391_combout\ & (\U_ARGMAX|count_ones~393_combout\ & \U_ARGMAX|count_ones~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~392_combout\,
	datab => \U_ARGMAX|count_ones~391_combout\,
	datac => \U_ARGMAX|count_ones~393_combout\,
	datad => \U_ARGMAX|count_ones~394_combout\,
	combout => \U_ARGMAX|count_ones~395_combout\);

-- Location: LCCOMB_X72_Y49_N24
\U_ARGMAX|count_ones~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~382_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(120) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(173)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(97)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(173),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(120),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(97),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(67),
	combout => \U_ARGMAX|count_ones~382_combout\);

-- Location: LCCOMB_X57_Y44_N14
\U_ARGMAX|count_ones~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~383_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(123) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(6) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(121) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(121),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(9),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(123),
	combout => \U_ARGMAX|count_ones~383_combout\);

-- Location: LCCOMB_X57_Y49_N22
\U_ARGMAX|count_ones~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~378_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(111) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(3)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(87)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(111),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(87),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(99),
	combout => \U_ARGMAX|count_ones~378_combout\);

-- Location: LCCOMB_X57_Y49_N20
\U_ARGMAX|count_ones~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~377_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(107) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(150)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(44)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(150),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(44),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(90),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(107),
	combout => \U_ARGMAX|count_ones~377_combout\);

-- Location: LCCOMB_X57_Y49_N4
\U_ARGMAX|count_ones~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~379_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(113) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(115)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(72)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(255)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(115),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(72),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(113),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(255),
	combout => \U_ARGMAX|count_ones~379_combout\);

-- Location: LCCOMB_X57_Y49_N10
\U_ARGMAX|count_ones~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~380_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(118) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(98)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(75)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(224)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(118),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(98),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(75),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(224),
	combout => \U_ARGMAX|count_ones~380_combout\);

-- Location: LCCOMB_X57_Y49_N28
\U_ARGMAX|count_ones~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~381_combout\ = (\U_ARGMAX|count_ones~378_combout\ & (\U_ARGMAX|count_ones~377_combout\ & (\U_ARGMAX|count_ones~379_combout\ & \U_ARGMAX|count_ones~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~378_combout\,
	datab => \U_ARGMAX|count_ones~377_combout\,
	datac => \U_ARGMAX|count_ones~379_combout\,
	datad => \U_ARGMAX|count_ones~380_combout\,
	combout => \U_ARGMAX|count_ones~381_combout\);

-- Location: LCCOMB_X57_Y48_N22
\U_NETWORK|outputs~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~34_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(133)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(224))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(7),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(133),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(224),
	combout => \U_NETWORK|outputs~34_combout\);

-- Location: LCCOMB_X56_Y48_N14
\U_NETWORK|outputs[480]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[480]~33_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(157)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(233)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(207)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(157),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(233),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(207),
	combout => \U_NETWORK|outputs[480]~33_combout\);

-- Location: LCCOMB_X57_Y48_N16
\U_ARGMAX|count_ones~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~384_combout\ = (\U_NETWORK|outputs~34_combout\ & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(128) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(124) & \U_NETWORK|outputs[480]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs~34_combout\,
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(128),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(124),
	datad => \U_NETWORK|outputs[480]~33_combout\,
	combout => \U_ARGMAX|count_ones~384_combout\);

-- Location: LCCOMB_X57_Y48_N2
\U_ARGMAX|count_ones~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~385_combout\ = (\U_ARGMAX|count_ones~382_combout\ & (\U_ARGMAX|count_ones~383_combout\ & (\U_ARGMAX|count_ones~381_combout\ & \U_ARGMAX|count_ones~384_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~382_combout\,
	datab => \U_ARGMAX|count_ones~383_combout\,
	datac => \U_ARGMAX|count_ones~381_combout\,
	datad => \U_ARGMAX|count_ones~384_combout\,
	combout => \U_ARGMAX|count_ones~385_combout\);

-- Location: LCCOMB_X57_Y48_N20
\U_ARGMAX|count_ones~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~396_combout\ = (\U_ARGMAX|count_ones~390_combout\ & (\U_ARGMAX|count_ones~395_combout\ & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(243) & \U_ARGMAX|count_ones~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~390_combout\,
	datab => \U_ARGMAX|count_ones~395_combout\,
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(243),
	datad => \U_ARGMAX|count_ones~385_combout\,
	combout => \U_ARGMAX|count_ones~396_combout\);

-- Location: LCCOMB_X60_Y48_N30
\U_ARGMAX|count_ones~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~353_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(20) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(126) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(20) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(53)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(53),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(20),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(7),
	combout => \U_ARGMAX|count_ones~353_combout\);

-- Location: LCCOMB_X60_Y48_N8
\U_ARGMAX|count_ones~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~352_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(126) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(53) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(83)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(219))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(126) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(83)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(219)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(83),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(53),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(219),
	combout => \U_ARGMAX|count_ones~352_combout\);

-- Location: LCCOMB_X61_Y48_N14
\U_ARGMAX|count_ones~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~350_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(229) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(85) & ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(143)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(34))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(229) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(34)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(143)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(34),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(85),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(143),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(229),
	combout => \U_ARGMAX|count_ones~350_combout\);

-- Location: LCCOMB_X60_Y48_N18
\U_ARGMAX|count_ones~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~351_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(202) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(131)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(12))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(202) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(85) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(131)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(131),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(85),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(202),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(12),
	combout => \U_ARGMAX|count_ones~351_combout\);

-- Location: LCCOMB_X60_Y48_N12
\U_ARGMAX|count_ones~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~354_combout\ = (\U_ARGMAX|count_ones~353_combout\ & (\U_ARGMAX|count_ones~352_combout\ & (\U_ARGMAX|count_ones~350_combout\ & \U_ARGMAX|count_ones~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~353_combout\,
	datab => \U_ARGMAX|count_ones~352_combout\,
	datac => \U_ARGMAX|count_ones~350_combout\,
	datad => \U_ARGMAX|count_ones~351_combout\,
	combout => \U_ARGMAX|count_ones~354_combout\);

-- Location: LCCOMB_X60_Y48_N26
\U_ARGMAX|count_ones~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~346_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(36) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(211) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(218)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(130))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(36) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(218)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(130)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(36),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(211),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(130),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(218),
	combout => \U_ARGMAX|count_ones~346_combout\);

-- Location: LCCOMB_X60_Y48_N2
\U_ARGMAX|count_ones~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~348_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(196) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(121))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(180) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(149) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(196) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(180),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(149),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(196),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(121),
	combout => \U_ARGMAX|count_ones~348_combout\);

-- Location: LCCOMB_X60_Y48_N4
\U_ARGMAX|count_ones~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~347_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(175) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(20) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(14)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(175) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(14)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(175),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(20),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(14),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(180),
	combout => \U_ARGMAX|count_ones~347_combout\);

-- Location: LCCOMB_X60_Y48_N16
\U_ARGMAX|count_ones~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~345_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(210) $ ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(48))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(249) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(210) $ (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(210),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(48),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(101),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(249),
	combout => \U_ARGMAX|count_ones~345_combout\);

-- Location: LCCOMB_X60_Y48_N20
\U_ARGMAX|count_ones~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~349_combout\ = (\U_ARGMAX|count_ones~346_combout\ & (\U_ARGMAX|count_ones~348_combout\ & (\U_ARGMAX|count_ones~347_combout\ & \U_ARGMAX|count_ones~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~346_combout\,
	datab => \U_ARGMAX|count_ones~348_combout\,
	datac => \U_ARGMAX|count_ones~347_combout\,
	datad => \U_ARGMAX|count_ones~345_combout\,
	combout => \U_ARGMAX|count_ones~349_combout\);

-- Location: LCCOMB_X54_Y50_N24
\U_ARGMAX|count_ones~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~335_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(25) & ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(183))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(25) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(78)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(183)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(215),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(25),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(78),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(183),
	combout => \U_ARGMAX|count_ones~335_combout\);

-- Location: LCCOMB_X60_Y48_N0
\U_ARGMAX|count_ones~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~336_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(242) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(32) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(14))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(32) $ ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(32),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(101),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(14),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(242),
	combout => \U_ARGMAX|count_ones~336_combout\);

-- Location: LCCOMB_X54_Y48_N26
\U_ARGMAX|count_ones~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~337_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(217) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(115)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(93))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(217) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(115) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(217),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(115),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(93),
	combout => \U_ARGMAX|count_ones~337_combout\);

-- Location: LCCOMB_X59_Y48_N12
\U_ARGMAX|count_ones~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~338_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(122)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(103))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(125) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(122)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(103)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(215),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(125),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(122),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(103),
	combout => \U_ARGMAX|count_ones~338_combout\);

-- Location: LCCOMB_X60_Y48_N14
\U_ARGMAX|count_ones~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~339_combout\ = (\U_ARGMAX|count_ones~335_combout\ & (\U_ARGMAX|count_ones~336_combout\ & (\U_ARGMAX|count_ones~337_combout\ & \U_ARGMAX|count_ones~338_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~335_combout\,
	datab => \U_ARGMAX|count_ones~336_combout\,
	datac => \U_ARGMAX|count_ones~337_combout\,
	datad => \U_ARGMAX|count_ones~338_combout\,
	combout => \U_ARGMAX|count_ones~339_combout\);

-- Location: LCCOMB_X59_Y48_N10
\U_ARGMAX|count_ones~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~341_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(239) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(188) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(198)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(9))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(239) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(198))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(239),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(9),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(198),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(188),
	combout => \U_ARGMAX|count_ones~341_combout\);

-- Location: LCCOMB_X60_Y48_N24
\U_ARGMAX|count_ones~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~342_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(230) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(141) $ (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(180)))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(230) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(56) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(141) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(141),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(230),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(56),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(180),
	combout => \U_ARGMAX|count_ones~342_combout\);

-- Location: LCCOMB_X61_Y48_N12
\U_ARGMAX|count_ones~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~340_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(238) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(218)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(150))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(238) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(76) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(218)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(150)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(238),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(76),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(218),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(150),
	combout => \U_ARGMAX|count_ones~340_combout\);

-- Location: LCCOMB_X55_Y48_N20
\U_ARGMAX|count_ones~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~343_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(109) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(69)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(122))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(109) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(252) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(69)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(252),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(69),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(122),
	combout => \U_ARGMAX|count_ones~343_combout\);

-- Location: LCCOMB_X60_Y48_N10
\U_ARGMAX|count_ones~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~344_combout\ = (\U_ARGMAX|count_ones~341_combout\ & (\U_ARGMAX|count_ones~342_combout\ & (\U_ARGMAX|count_ones~340_combout\ & \U_ARGMAX|count_ones~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~341_combout\,
	datab => \U_ARGMAX|count_ones~342_combout\,
	datac => \U_ARGMAX|count_ones~340_combout\,
	datad => \U_ARGMAX|count_ones~343_combout\,
	combout => \U_ARGMAX|count_ones~344_combout\);

-- Location: LCCOMB_X60_Y48_N22
\U_ARGMAX|count_ones~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~355_combout\ = (\U_ARGMAX|count_ones~354_combout\ & (\U_ARGMAX|count_ones~349_combout\ & (\U_ARGMAX|count_ones~339_combout\ & \U_ARGMAX|count_ones~344_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~354_combout\,
	datab => \U_ARGMAX|count_ones~349_combout\,
	datac => \U_ARGMAX|count_ones~339_combout\,
	datad => \U_ARGMAX|count_ones~344_combout\,
	combout => \U_ARGMAX|count_ones~355_combout\);

-- Location: LCCOMB_X56_Y45_N30
\U_NETWORK|outputs~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~32_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(2)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(93)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(197)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(2),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(93),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(197),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(62),
	combout => \U_NETWORK|outputs~32_combout\);

-- Location: LCCOMB_X56_Y45_N28
\U_NETWORK|outputs[502]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[502]~31_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(235)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(38)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(202)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(235),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(38),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(202),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(110),
	combout => \U_NETWORK|outputs[502]~31_combout\);

-- Location: LCCOMB_X56_Y45_N8
\U_NETWORK|outputs~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~29_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(85)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(53)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(227) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(236))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(85),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(227),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(236),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(53),
	combout => \U_NETWORK|outputs~29_combout\);

-- Location: LCCOMB_X56_Y45_N2
\U_NETWORK|outputs~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~30_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(121)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(230)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(92)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(218))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(121),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(230),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(92),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(218),
	combout => \U_NETWORK|outputs~30_combout\);

-- Location: LCCOMB_X56_Y45_N24
\U_ARGMAX|count_ones~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~296_combout\ = (\U_NETWORK|outputs~32_combout\ & (\U_NETWORK|outputs[502]~31_combout\ & (\U_NETWORK|outputs~29_combout\ & \U_NETWORK|outputs~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs~32_combout\,
	datab => \U_NETWORK|outputs[502]~31_combout\,
	datac => \U_NETWORK|outputs~29_combout\,
	datad => \U_NETWORK|outputs~30_combout\,
	combout => \U_ARGMAX|count_ones~296_combout\);

-- Location: LCCOMB_X54_Y44_N26
\U_ARGMAX|count_ones~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~309_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(68)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(228) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(2) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(152))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(228),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(2),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(68),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(152),
	combout => \U_ARGMAX|count_ones~309_combout\);

-- Location: LCCOMB_X54_Y48_N18
\U_ARGMAX|count_ones~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~310_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(53) & (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(46)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(72))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(53) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(69) & ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(46)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(53),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(69),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(72),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(46),
	combout => \U_ARGMAX|count_ones~310_combout\);

-- Location: LCCOMB_X54_Y45_N8
\U_ARGMAX|count_ones~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~307_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(196)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(188)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(98) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(196),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(98),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(188),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(18),
	combout => \U_ARGMAX|count_ones~307_combout\);

-- Location: LCCOMB_X54_Y41_N4
\U_ARGMAX|count_ones~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~308_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(133) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(100) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(6))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(9)))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(133) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(100) $ ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(100),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(133),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(9),
	combout => \U_ARGMAX|count_ones~308_combout\);

-- Location: LCCOMB_X57_Y48_N18
\U_ARGMAX|count_ones~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~311_combout\ = (\U_ARGMAX|count_ones~309_combout\ & (\U_ARGMAX|count_ones~310_combout\ & (\U_ARGMAX|count_ones~307_combout\ & \U_ARGMAX|count_ones~308_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~309_combout\,
	datab => \U_ARGMAX|count_ones~310_combout\,
	datac => \U_ARGMAX|count_ones~307_combout\,
	datad => \U_ARGMAX|count_ones~308_combout\,
	combout => \U_ARGMAX|count_ones~311_combout\);

-- Location: LCCOMB_X56_Y46_N12
\U_ARGMAX|count_ones~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~298_combout\ = (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(15) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(229))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(223))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(194))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(194),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(15),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(229),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(223),
	combout => \U_ARGMAX|count_ones~298_combout\);

-- Location: LCCOMB_X56_Y46_N18
\U_ARGMAX|count_ones~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~297_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(204)) # (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(96) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(93))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(182)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(204),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(96),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(93),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(182),
	combout => \U_ARGMAX|count_ones~297_combout\);

-- Location: LCCOMB_X56_Y46_N26
\U_ARGMAX|count_ones~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~299_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(109)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(126)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(43) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(208))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(43),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(208),
	combout => \U_ARGMAX|count_ones~299_combout\);

-- Location: LCCOMB_X56_Y46_N20
\U_ARGMAX|count_ones~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~300_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(34) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(158) $ (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(191)))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(34) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(77)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(158) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(191)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(34),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(158),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(77),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(191),
	combout => \U_ARGMAX|count_ones~300_combout\);

-- Location: LCCOMB_X56_Y46_N2
\U_ARGMAX|count_ones~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~301_combout\ = (\U_ARGMAX|count_ones~298_combout\ & (\U_ARGMAX|count_ones~297_combout\ & (\U_ARGMAX|count_ones~299_combout\ & \U_ARGMAX|count_ones~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~298_combout\,
	datab => \U_ARGMAX|count_ones~297_combout\,
	datac => \U_ARGMAX|count_ones~299_combout\,
	datad => \U_ARGMAX|count_ones~300_combout\,
	combout => \U_ARGMAX|count_ones~301_combout\);

-- Location: LCCOMB_X54_Y49_N30
\U_ARGMAX|count_ones~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~305_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(92)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(219)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(3) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(143),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(92),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(219),
	combout => \U_ARGMAX|count_ones~305_combout\);

-- Location: LCCOMB_X57_Y44_N20
\U_ARGMAX|count_ones~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~302_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(10)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(17) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(24)))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(233))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(17),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(24),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(233),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(10),
	combout => \U_ARGMAX|count_ones~302_combout\);

-- Location: LCCOMB_X72_Y47_N0
\U_ARGMAX|count_ones~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~304_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(220)) # (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(189) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(166))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(220),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(189),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(43),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(166),
	combout => \U_ARGMAX|count_ones~304_combout\);

-- Location: LCCOMB_X56_Y46_N24
\U_ARGMAX|count_ones~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~303_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(241)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(194) & \U_MEMORY|altsyncram_component|auto_generated|q_a\(198)))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(194),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(15),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(241),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(198),
	combout => \U_ARGMAX|count_ones~303_combout\);

-- Location: LCCOMB_X57_Y48_N28
\U_ARGMAX|count_ones~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~306_combout\ = (\U_ARGMAX|count_ones~305_combout\ & (\U_ARGMAX|count_ones~302_combout\ & (\U_ARGMAX|count_ones~304_combout\ & \U_ARGMAX|count_ones~303_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~305_combout\,
	datab => \U_ARGMAX|count_ones~302_combout\,
	datac => \U_ARGMAX|count_ones~304_combout\,
	datad => \U_ARGMAX|count_ones~303_combout\,
	combout => \U_ARGMAX|count_ones~306_combout\);

-- Location: LCCOMB_X57_Y48_N12
\U_ARGMAX|count_ones~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~312_combout\ = (\U_ARGMAX|count_ones~296_combout\ & (\U_ARGMAX|count_ones~311_combout\ & (\U_ARGMAX|count_ones~301_combout\ & \U_ARGMAX|count_ones~306_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~296_combout\,
	datab => \U_ARGMAX|count_ones~311_combout\,
	datac => \U_ARGMAX|count_ones~301_combout\,
	datad => \U_ARGMAX|count_ones~306_combout\,
	combout => \U_ARGMAX|count_ones~312_combout\);

-- Location: LCCOMB_X54_Y48_N30
\U_NETWORK|outputs[329]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[329]~11_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(247)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(68)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(21),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(247),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(68),
	combout => \U_NETWORK|outputs[329]~11_combout\);

-- Location: LCCOMB_X54_Y48_N28
\U_NETWORK|outputs~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~10_combout\ = \U_MEMORY|altsyncram_component|auto_generated|q_a\(30) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(217) $ (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(20)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(185)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(20),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(30),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(217),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(185),
	combout => \U_NETWORK|outputs~10_combout\);

-- Location: LCCOMB_X54_Y43_N0
\U_NETWORK|outputs~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~12_combout\ = (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(24) & \U_MEMORY|altsyncram_component|auto_generated|q_a\(235))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(177))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(246))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(24),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(235),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(246),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(177),
	combout => \U_NETWORK|outputs~12_combout\);

-- Location: LCCOMB_X54_Y48_N12
\U_NETWORK|outputs[334]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[334]~13_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(127) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(109) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(127),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(112),
	combout => \U_NETWORK|outputs[334]~13_combout\);

-- Location: LCCOMB_X54_Y48_N6
\U_ARGMAX|count_ones~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~288_combout\ = (\U_NETWORK|outputs[329]~11_combout\ & (\U_NETWORK|outputs~10_combout\ & (\U_NETWORK|outputs~12_combout\ & !\U_NETWORK|outputs[334]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[329]~11_combout\,
	datab => \U_NETWORK|outputs~10_combout\,
	datac => \U_NETWORK|outputs~12_combout\,
	datad => \U_NETWORK|outputs[334]~13_combout\,
	combout => \U_ARGMAX|count_ones~288_combout\);

-- Location: LCCOMB_X56_Y49_N12
\U_NETWORK|outputs[321]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[321]~9_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(31) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(131) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(131),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(31),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(48),
	combout => \U_NETWORK|outputs[321]~9_combout\);

-- Location: LCCOMB_X56_Y49_N8
\U_NETWORK|outputs[318]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[318]~6_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(3)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(204)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(143)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(131))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(204),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(143),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(131),
	combout => \U_NETWORK|outputs[318]~6_combout\);

-- Location: LCCOMB_X54_Y49_N28
\U_NETWORK|outputs[301]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[301]~7_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(217) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(211) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(3) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(241)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(217),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(211),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(241),
	combout => \U_NETWORK|outputs[301]~7_combout\);

-- Location: LCCOMB_X56_Y49_N18
\U_NETWORK|outputs[307]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[307]~8_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(253) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(114) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(119) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(119),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(44),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(253),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(114),
	combout => \U_NETWORK|outputs[307]~8_combout\);

-- Location: LCCOMB_X56_Y49_N26
\U_ARGMAX|count_ones~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~287_combout\ = (!\U_NETWORK|outputs[321]~9_combout\ & (\U_NETWORK|outputs[318]~6_combout\ & (!\U_NETWORK|outputs[301]~7_combout\ & !\U_NETWORK|outputs[307]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[321]~9_combout\,
	datab => \U_NETWORK|outputs[318]~6_combout\,
	datac => \U_NETWORK|outputs[301]~7_combout\,
	datad => \U_NETWORK|outputs[307]~8_combout\,
	combout => \U_ARGMAX|count_ones~287_combout\);

-- Location: LCCOMB_X54_Y44_N30
\U_NETWORK|outputs[300]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[300]~4_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(68)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(109)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(45)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(68),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(45),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	combout => \U_NETWORK|outputs[300]~4_combout\);

-- Location: LCCOMB_X54_Y44_N4
\U_NETWORK|outputs[291]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[291]~3_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(201)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(62)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(110)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(155))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(201),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(62),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(110),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(155),
	combout => \U_NETWORK|outputs[291]~3_combout\);

-- Location: LCCOMB_X54_Y45_N30
\U_NETWORK|outputs[270]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[270]~2_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(196)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(192)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(242)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(196),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(192),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(242),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(31),
	combout => \U_NETWORK|outputs[270]~2_combout\);

-- Location: LCCOMB_X54_Y44_N12
\U_NETWORK|outputs[276]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[276]~5_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(109) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(11) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(62) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(141))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(11),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(62),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(141),
	combout => \U_NETWORK|outputs[276]~5_combout\);

-- Location: LCCOMB_X56_Y44_N8
\U_ARGMAX|count_ones~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~286_combout\ = (\U_NETWORK|outputs[300]~4_combout\ & (\U_NETWORK|outputs[291]~3_combout\ & (\U_NETWORK|outputs[270]~2_combout\ & !\U_NETWORK|outputs[276]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[300]~4_combout\,
	datab => \U_NETWORK|outputs[291]~3_combout\,
	datac => \U_NETWORK|outputs[270]~2_combout\,
	datad => \U_NETWORK|outputs[276]~5_combout\,
	combout => \U_ARGMAX|count_ones~286_combout\);

-- Location: LCCOMB_X54_Y51_N24
\U_NETWORK|outputs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~0_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(165) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(79) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(87))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(165) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(101)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(79) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(165),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(101),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(79),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(87),
	combout => \U_NETWORK|outputs~0_combout\);

-- Location: LCCOMB_X56_Y51_N28
\U_ARGMAX|count_ones~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~284_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(8)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(248))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(248),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(8),
	combout => \U_ARGMAX|count_ones~284_combout\);

-- Location: LCCOMB_X54_Y51_N2
\U_NETWORK|outputs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~1_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(225) & (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(14) & \U_MEMORY|altsyncram_component|auto_generated|q_a\(53))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(225) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(39)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(14) & \U_MEMORY|altsyncram_component|auto_generated|q_a\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(225),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(39),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(14),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(53),
	combout => \U_NETWORK|outputs~1_combout\);

-- Location: LCCOMB_X54_Y45_N4
\U_NETWORK|outputs[346]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs\(346) = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(89) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(240) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(64))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(89) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(240) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(89),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(240),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(64),
	combout => \U_NETWORK|outputs\(346));

-- Location: LCCOMB_X56_Y51_N2
\U_ARGMAX|count_ones~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~285_combout\ = (\U_NETWORK|outputs~0_combout\ & (\U_ARGMAX|count_ones~284_combout\ & (\U_NETWORK|outputs~1_combout\ & !\U_NETWORK|outputs\(346))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs~0_combout\,
	datab => \U_ARGMAX|count_ones~284_combout\,
	datac => \U_NETWORK|outputs~1_combout\,
	datad => \U_NETWORK|outputs\(346),
	combout => \U_ARGMAX|count_ones~285_combout\);

-- Location: LCCOMB_X57_Y48_N24
\U_ARGMAX|count_ones~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~289_combout\ = (\U_ARGMAX|count_ones~288_combout\ & (\U_ARGMAX|count_ones~287_combout\ & (\U_ARGMAX|count_ones~286_combout\ & \U_ARGMAX|count_ones~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~288_combout\,
	datab => \U_ARGMAX|count_ones~287_combout\,
	datac => \U_ARGMAX|count_ones~286_combout\,
	datad => \U_ARGMAX|count_ones~285_combout\,
	combout => \U_ARGMAX|count_ones~289_combout\);

-- Location: LCCOMB_X55_Y48_N30
\U_NETWORK|outputs[465]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[465]~27_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(126) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(40) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(69) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(40),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(69),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(105),
	combout => \U_NETWORK|outputs[465]~27_combout\);

-- Location: LCCOMB_X54_Y48_N20
\U_NETWORK|outputs[481]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[481]~28_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(115) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(117) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(238) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(136)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(238),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(115),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(136),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(117),
	combout => \U_NETWORK|outputs[481]~28_combout\);

-- Location: LCCOMB_X55_Y48_N4
\U_NETWORK|outputs~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~26_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(165)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(185)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(158) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(162))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(165),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(158),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(185),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(162),
	combout => \U_NETWORK|outputs~26_combout\);

-- Location: LCCOMB_X54_Y46_N20
\U_ARGMAX|count_ones~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~293_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(142)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(149))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(142),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(149),
	combout => \U_ARGMAX|count_ones~293_combout\);

-- Location: LCCOMB_X55_Y48_N12
\U_ARGMAX|count_ones~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~294_combout\ = (!\U_NETWORK|outputs[465]~27_combout\ & (!\U_NETWORK|outputs[481]~28_combout\ & (\U_NETWORK|outputs~26_combout\ & \U_ARGMAX|count_ones~293_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[465]~27_combout\,
	datab => \U_NETWORK|outputs[481]~28_combout\,
	datac => \U_NETWORK|outputs~26_combout\,
	datad => \U_ARGMAX|count_ones~293_combout\,
	combout => \U_ARGMAX|count_ones~294_combout\);

-- Location: LCCOMB_X56_Y47_N6
\U_NETWORK|outputs[406]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[406]~15_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(98)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(215)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(96)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(98),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(215),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(96),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(126),
	combout => \U_NETWORK|outputs[406]~15_combout\);

-- Location: LCCOMB_X56_Y47_N4
\U_NETWORK|outputs~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~14_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(254)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(94) $ (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(17)))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(94),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(66),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(17),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(254),
	combout => \U_NETWORK|outputs~14_combout\);

-- Location: LCCOMB_X54_Y47_N24
\U_NETWORK|outputs[366]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[366]~17_combout\ = (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(169) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(136) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(169),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(136),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(64),
	combout => \U_NETWORK|outputs[366]~17_combout\);

-- Location: LCCOMB_X56_Y47_N0
\U_NETWORK|outputs~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~16_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(26) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(7))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(45))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(26),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(51),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(45),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(7),
	combout => \U_NETWORK|outputs~16_combout\);

-- Location: LCCOMB_X56_Y47_N22
\U_ARGMAX|count_ones~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~290_combout\ = (\U_NETWORK|outputs[406]~15_combout\ & (\U_NETWORK|outputs~14_combout\ & (!\U_NETWORK|outputs[366]~17_combout\ & \U_NETWORK|outputs~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[406]~15_combout\,
	datab => \U_NETWORK|outputs~14_combout\,
	datac => \U_NETWORK|outputs[366]~17_combout\,
	datad => \U_NETWORK|outputs~16_combout\,
	combout => \U_ARGMAX|count_ones~290_combout\);

-- Location: LCCOMB_X61_Y48_N26
\U_NETWORK|outputs[424]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[424]~19_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(39)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(247)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(174) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(244))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(39),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(174),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(247),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(244),
	combout => \U_NETWORK|outputs[424]~19_combout\);

-- Location: LCCOMB_X61_Y48_N16
\U_NETWORK|outputs[419]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[419]~18_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(109)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(76)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(97) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(109),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(76),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(97),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(67),
	combout => \U_NETWORK|outputs[419]~18_combout\);

-- Location: LCCOMB_X61_Y48_N8
\U_NETWORK|outputs~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~21_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(66)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(229)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(204) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(252))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(204),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(66),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(252),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(229),
	combout => \U_NETWORK|outputs~21_combout\);

-- Location: LCCOMB_X72_Y45_N28
\U_NETWORK|outputs[425]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[425]~20_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(237)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(195)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(218)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(164))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(237),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(195),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(218),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(164),
	combout => \U_NETWORK|outputs[425]~20_combout\);

-- Location: LCCOMB_X61_Y48_N6
\U_ARGMAX|count_ones~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~291_combout\ = (\U_NETWORK|outputs[424]~19_combout\ & (\U_NETWORK|outputs[419]~18_combout\ & (\U_NETWORK|outputs~21_combout\ & \U_NETWORK|outputs[425]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs[424]~19_combout\,
	datab => \U_NETWORK|outputs[419]~18_combout\,
	datac => \U_NETWORK|outputs~21_combout\,
	datad => \U_NETWORK|outputs[425]~20_combout\,
	combout => \U_ARGMAX|count_ones~291_combout\);

-- Location: LCCOMB_X56_Y46_N30
\U_NETWORK|outputs~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~23_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(21)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(229)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(205)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(21),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(229),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(43),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(205),
	combout => \U_NETWORK|outputs~23_combout\);

-- Location: LCCOMB_X56_Y46_N14
\U_NETWORK|outputs[441]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[441]~25_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(168) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(24) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(47) $ 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(168),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(24),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(47),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(62),
	combout => \U_NETWORK|outputs[441]~25_combout\);

-- Location: LCCOMB_X56_Y46_N4
\U_NETWORK|outputs~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs~22_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(196)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(161)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(177) $ 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(159))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(177),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(196),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(159),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(161),
	combout => \U_NETWORK|outputs~22_combout\);

-- Location: LCCOMB_X56_Y46_N0
\U_NETWORK|outputs[439]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_NETWORK|outputs[439]~24_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(180)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(233)) # ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(34) & 
-- \U_MEMORY|altsyncram_component|auto_generated|q_a\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(34),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(180),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(233),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(99),
	combout => \U_NETWORK|outputs[439]~24_combout\);

-- Location: LCCOMB_X56_Y46_N16
\U_ARGMAX|count_ones~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~292_combout\ = (\U_NETWORK|outputs~23_combout\ & (!\U_NETWORK|outputs[441]~25_combout\ & (\U_NETWORK|outputs~22_combout\ & \U_NETWORK|outputs[439]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_NETWORK|outputs~23_combout\,
	datab => \U_NETWORK|outputs[441]~25_combout\,
	datac => \U_NETWORK|outputs~22_combout\,
	datad => \U_NETWORK|outputs[439]~24_combout\,
	combout => \U_ARGMAX|count_ones~292_combout\);

-- Location: LCCOMB_X57_Y48_N26
\U_ARGMAX|count_ones~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~295_combout\ = (\U_ARGMAX|count_ones~294_combout\ & (\U_ARGMAX|count_ones~290_combout\ & (\U_ARGMAX|count_ones~291_combout\ & \U_ARGMAX|count_ones~292_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~294_combout\,
	datab => \U_ARGMAX|count_ones~290_combout\,
	datac => \U_ARGMAX|count_ones~291_combout\,
	datad => \U_ARGMAX|count_ones~292_combout\,
	combout => \U_ARGMAX|count_ones~295_combout\);

-- Location: LCCOMB_X54_Y46_N6
\U_ARGMAX|count_ones~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~329_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(105) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(230)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(70))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(105) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(230)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(105),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(230),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(54),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(70),
	combout => \U_ARGMAX|count_ones~329_combout\);

-- Location: LCCOMB_X54_Y48_N4
\U_ARGMAX|count_ones~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~330_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(141) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(213)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(253))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(141) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(68) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(213)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(253)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(141),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(68),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(253),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(213),
	combout => \U_ARGMAX|count_ones~330_combout\);

-- Location: LCCOMB_X54_Y52_N4
\U_ARGMAX|count_ones~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~331_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(21) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(50)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(74))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(21) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(214) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(50)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(21),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(50),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(214),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(74),
	combout => \U_ARGMAX|count_ones~331_combout\);

-- Location: LCCOMB_X55_Y48_N0
\U_ARGMAX|count_ones~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~328_combout\ = ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(27) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(117) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(35))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(151))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(117),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(35),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(27),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(151),
	combout => \U_ARGMAX|count_ones~328_combout\);

-- Location: LCCOMB_X55_Y48_N18
\U_ARGMAX|count_ones~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~332_combout\ = (\U_ARGMAX|count_ones~329_combout\ & (\U_ARGMAX|count_ones~330_combout\ & (\U_ARGMAX|count_ones~331_combout\ & \U_ARGMAX|count_ones~328_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~329_combout\,
	datab => \U_ARGMAX|count_ones~330_combout\,
	datac => \U_ARGMAX|count_ones~331_combout\,
	datad => \U_ARGMAX|count_ones~328_combout\,
	combout => \U_ARGMAX|count_ones~332_combout\);

-- Location: LCCOMB_X56_Y47_N10
\U_ARGMAX|count_ones~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~314_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(250) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(76)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(37))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(250) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(76)) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(54),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(250),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(76),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(37),
	combout => \U_ARGMAX|count_ones~314_combout\);

-- Location: LCCOMB_X56_Y47_N2
\U_ARGMAX|count_ones~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~316_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(168) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(51) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(70)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(188))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(168) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(70)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(188)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(168),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(51),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(70),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(188),
	combout => \U_ARGMAX|count_ones~316_combout\);

-- Location: LCCOMB_X56_Y47_N8
\U_ARGMAX|count_ones~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~315_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(45) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(25) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(166)))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(45) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(25)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(149)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(45),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(25),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(166),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(149),
	combout => \U_ARGMAX|count_ones~315_combout\);

-- Location: LCCOMB_X56_Y47_N20
\U_ARGMAX|count_ones~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~313_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(9) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(200)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(174))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(9) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(150) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(200)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(174)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(150),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(200),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(9),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(174),
	combout => \U_ARGMAX|count_ones~313_combout\);

-- Location: LCCOMB_X56_Y47_N28
\U_ARGMAX|count_ones~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~317_combout\ = (\U_ARGMAX|count_ones~314_combout\ & (\U_ARGMAX|count_ones~316_combout\ & (\U_ARGMAX|count_ones~315_combout\ & \U_ARGMAX|count_ones~313_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~314_combout\,
	datab => \U_ARGMAX|count_ones~316_combout\,
	datac => \U_ARGMAX|count_ones~315_combout\,
	datad => \U_ARGMAX|count_ones~313_combout\,
	combout => \U_ARGMAX|count_ones~317_combout\);

-- Location: LCCOMB_X54_Y48_N22
\U_ARGMAX|count_ones~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~320_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(197) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(231) & ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(213))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(197) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(247) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(231)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(213)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(231),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(247),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(197),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(213),
	combout => \U_ARGMAX|count_ones~320_combout\);

-- Location: LCCOMB_X54_Y48_N16
\U_ARGMAX|count_ones~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~321_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(27) & (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(39) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(35))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(27) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(154) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(39)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(154),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(39),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(27),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(35),
	combout => \U_ARGMAX|count_ones~321_combout\);

-- Location: LCCOMB_X54_Y48_N8
\U_ARGMAX|count_ones~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~319_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(225) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(215))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(225) & 
-- ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(200)))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(215) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(42) & 
-- !\U_MEMORY|altsyncram_component|auto_generated|q_a\(200)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(225),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(215),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(42),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(200),
	combout => \U_ARGMAX|count_ones~319_combout\);

-- Location: LCCOMB_X54_Y40_N20
\U_ARGMAX|count_ones~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~318_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(73) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(245) $ (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(130)))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(73) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(127) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(130)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(245),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(73),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(127),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(130),
	combout => \U_ARGMAX|count_ones~318_combout\);

-- Location: LCCOMB_X54_Y48_N14
\U_ARGMAX|count_ones~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~322_combout\ = (\U_ARGMAX|count_ones~320_combout\ & (\U_ARGMAX|count_ones~321_combout\ & (\U_ARGMAX|count_ones~319_combout\ & \U_ARGMAX|count_ones~318_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~320_combout\,
	datab => \U_ARGMAX|count_ones~321_combout\,
	datac => \U_ARGMAX|count_ones~319_combout\,
	datad => \U_ARGMAX|count_ones~318_combout\,
	combout => \U_ARGMAX|count_ones~322_combout\);

-- Location: LCCOMB_X55_Y48_N22
\U_ARGMAX|count_ones~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~323_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(149) $ (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(29)))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(54) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(157) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(149) $ (\U_MEMORY|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(54),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(149),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(157),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(29),
	combout => \U_ARGMAX|count_ones~323_combout\);

-- Location: LCCOMB_X55_Y48_N2
\U_ARGMAX|count_ones~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~325_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(32) & !\U_MEMORY|altsyncram_component|auto_generated|q_a\(52))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(101) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(52) & ((!\U_MEMORY|altsyncram_component|auto_generated|q_a\(32)) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(142)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(101),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(142),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(32),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(52),
	combout => \U_ARGMAX|count_ones~325_combout\);

-- Location: LCCOMB_X55_Y48_N8
\U_ARGMAX|count_ones~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~326_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(70) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(231)) # ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(75))))) # 
-- (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(70) & (\U_MEMORY|altsyncram_component|auto_generated|q_a\(122) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(231)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(70),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(231),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(75),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(122),
	combout => \U_ARGMAX|count_ones~326_combout\);

-- Location: LCCOMB_X55_Y48_N24
\U_ARGMAX|count_ones~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~324_combout\ = (\U_MEMORY|altsyncram_component|auto_generated|q_a\(140) & (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(64) & ((\U_MEMORY|altsyncram_component|auto_generated|q_a\(139)) # 
-- (\U_MEMORY|altsyncram_component|auto_generated|q_a\(189))))) # (!\U_MEMORY|altsyncram_component|auto_generated|q_a\(140) & (((\U_MEMORY|altsyncram_component|auto_generated|q_a\(139)) # (\U_MEMORY|altsyncram_component|auto_generated|q_a\(189)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORY|altsyncram_component|auto_generated|q_a\(140),
	datab => \U_MEMORY|altsyncram_component|auto_generated|q_a\(64),
	datac => \U_MEMORY|altsyncram_component|auto_generated|q_a\(139),
	datad => \U_MEMORY|altsyncram_component|auto_generated|q_a\(189),
	combout => \U_ARGMAX|count_ones~324_combout\);

-- Location: LCCOMB_X55_Y48_N6
\U_ARGMAX|count_ones~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~327_combout\ = (\U_ARGMAX|count_ones~323_combout\ & (\U_ARGMAX|count_ones~325_combout\ & (\U_ARGMAX|count_ones~326_combout\ & \U_ARGMAX|count_ones~324_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~323_combout\,
	datab => \U_ARGMAX|count_ones~325_combout\,
	datac => \U_ARGMAX|count_ones~326_combout\,
	datad => \U_ARGMAX|count_ones~324_combout\,
	combout => \U_ARGMAX|count_ones~327_combout\);

-- Location: LCCOMB_X57_Y48_N6
\U_ARGMAX|count_ones~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~333_combout\ = (\U_ARGMAX|count_ones~332_combout\ & (\U_ARGMAX|count_ones~317_combout\ & (\U_ARGMAX|count_ones~322_combout\ & \U_ARGMAX|count_ones~327_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~332_combout\,
	datab => \U_ARGMAX|count_ones~317_combout\,
	datac => \U_ARGMAX|count_ones~322_combout\,
	datad => \U_ARGMAX|count_ones~327_combout\,
	combout => \U_ARGMAX|count_ones~333_combout\);

-- Location: LCCOMB_X57_Y48_N0
\U_ARGMAX|count_ones~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~334_combout\ = (\U_ARGMAX|count_ones~312_combout\ & (\U_ARGMAX|count_ones~289_combout\ & (\U_ARGMAX|count_ones~295_combout\ & \U_ARGMAX|count_ones~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~312_combout\,
	datab => \U_ARGMAX|count_ones~289_combout\,
	datac => \U_ARGMAX|count_ones~295_combout\,
	datad => \U_ARGMAX|count_ones~333_combout\,
	combout => \U_ARGMAX|count_ones~334_combout\);

-- Location: LCCOMB_X57_Y48_N30
\U_ARGMAX|count_ones~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones~397_combout\ = (\U_ARGMAX|count_ones~376_combout\ & (\U_ARGMAX|count_ones~396_combout\ & (\U_ARGMAX|count_ones~355_combout\ & \U_ARGMAX|count_ones~334_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones~376_combout\,
	datab => \U_ARGMAX|count_ones~396_combout\,
	datac => \U_ARGMAX|count_ones~355_combout\,
	datad => \U_ARGMAX|count_ones~334_combout\,
	combout => \U_ARGMAX|count_ones~397_combout\);

-- Location: FF_X58_Y48_N1
\U_ARGMAX|count_ones[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][0]~220_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][0]~q\);

-- Location: LCCOMB_X58_Y48_N2
\U_ARGMAX|count_ones[1][1]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][1]~222_combout\ = (\U_ARGMAX|count_ones[1][1]~q\ & (!\U_ARGMAX|count_ones[1][0]~221\)) # (!\U_ARGMAX|count_ones[1][1]~q\ & ((\U_ARGMAX|count_ones[1][0]~221\) # (GND)))
-- \U_ARGMAX|count_ones[1][1]~223\ = CARRY((!\U_ARGMAX|count_ones[1][0]~221\) # (!\U_ARGMAX|count_ones[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][1]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][0]~221\,
	combout => \U_ARGMAX|count_ones[1][1]~222_combout\,
	cout => \U_ARGMAX|count_ones[1][1]~223\);

-- Location: FF_X58_Y48_N3
\U_ARGMAX|count_ones[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][1]~222_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][1]~q\);

-- Location: LCCOMB_X58_Y48_N4
\U_ARGMAX|count_ones[1][2]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][2]~224_combout\ = (\U_ARGMAX|count_ones[1][2]~q\ & (\U_ARGMAX|count_ones[1][1]~223\ $ (GND))) # (!\U_ARGMAX|count_ones[1][2]~q\ & (!\U_ARGMAX|count_ones[1][1]~223\ & VCC))
-- \U_ARGMAX|count_ones[1][2]~225\ = CARRY((\U_ARGMAX|count_ones[1][2]~q\ & !\U_ARGMAX|count_ones[1][1]~223\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][2]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][1]~223\,
	combout => \U_ARGMAX|count_ones[1][2]~224_combout\,
	cout => \U_ARGMAX|count_ones[1][2]~225\);

-- Location: FF_X58_Y48_N5
\U_ARGMAX|count_ones[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][2]~224_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][2]~q\);

-- Location: LCCOMB_X58_Y48_N6
\U_ARGMAX|count_ones[1][3]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][3]~226_combout\ = (\U_ARGMAX|count_ones[1][3]~q\ & (!\U_ARGMAX|count_ones[1][2]~225\)) # (!\U_ARGMAX|count_ones[1][3]~q\ & ((\U_ARGMAX|count_ones[1][2]~225\) # (GND)))
-- \U_ARGMAX|count_ones[1][3]~227\ = CARRY((!\U_ARGMAX|count_ones[1][2]~225\) # (!\U_ARGMAX|count_ones[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][3]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][2]~225\,
	combout => \U_ARGMAX|count_ones[1][3]~226_combout\,
	cout => \U_ARGMAX|count_ones[1][3]~227\);

-- Location: FF_X58_Y48_N7
\U_ARGMAX|count_ones[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][3]~226_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][3]~q\);

-- Location: LCCOMB_X58_Y48_N8
\U_ARGMAX|count_ones[1][4]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][4]~228_combout\ = (\U_ARGMAX|count_ones[1][4]~q\ & (\U_ARGMAX|count_ones[1][3]~227\ $ (GND))) # (!\U_ARGMAX|count_ones[1][4]~q\ & (!\U_ARGMAX|count_ones[1][3]~227\ & VCC))
-- \U_ARGMAX|count_ones[1][4]~229\ = CARRY((\U_ARGMAX|count_ones[1][4]~q\ & !\U_ARGMAX|count_ones[1][3]~227\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][4]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][3]~227\,
	combout => \U_ARGMAX|count_ones[1][4]~228_combout\,
	cout => \U_ARGMAX|count_ones[1][4]~229\);

-- Location: FF_X58_Y48_N9
\U_ARGMAX|count_ones[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][4]~228_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][4]~q\);

-- Location: LCCOMB_X58_Y48_N10
\U_ARGMAX|count_ones[1][5]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][5]~230_combout\ = (\U_ARGMAX|count_ones[1][5]~q\ & (!\U_ARGMAX|count_ones[1][4]~229\)) # (!\U_ARGMAX|count_ones[1][5]~q\ & ((\U_ARGMAX|count_ones[1][4]~229\) # (GND)))
-- \U_ARGMAX|count_ones[1][5]~231\ = CARRY((!\U_ARGMAX|count_ones[1][4]~229\) # (!\U_ARGMAX|count_ones[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][5]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][4]~229\,
	combout => \U_ARGMAX|count_ones[1][5]~230_combout\,
	cout => \U_ARGMAX|count_ones[1][5]~231\);

-- Location: FF_X58_Y48_N11
\U_ARGMAX|count_ones[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][5]~230_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][5]~q\);

-- Location: LCCOMB_X58_Y48_N12
\U_ARGMAX|count_ones[1][6]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][6]~232_combout\ = (\U_ARGMAX|count_ones[1][6]~q\ & (\U_ARGMAX|count_ones[1][5]~231\ $ (GND))) # (!\U_ARGMAX|count_ones[1][6]~q\ & (!\U_ARGMAX|count_ones[1][5]~231\ & VCC))
-- \U_ARGMAX|count_ones[1][6]~233\ = CARRY((\U_ARGMAX|count_ones[1][6]~q\ & !\U_ARGMAX|count_ones[1][5]~231\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][5]~231\,
	combout => \U_ARGMAX|count_ones[1][6]~232_combout\,
	cout => \U_ARGMAX|count_ones[1][6]~233\);

-- Location: FF_X58_Y48_N13
\U_ARGMAX|count_ones[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][6]~232_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][6]~q\);

-- Location: LCCOMB_X58_Y48_N14
\U_ARGMAX|count_ones[1][7]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][7]~234_combout\ = (\U_ARGMAX|count_ones[1][7]~q\ & (!\U_ARGMAX|count_ones[1][6]~233\)) # (!\U_ARGMAX|count_ones[1][7]~q\ & ((\U_ARGMAX|count_ones[1][6]~233\) # (GND)))
-- \U_ARGMAX|count_ones[1][7]~235\ = CARRY((!\U_ARGMAX|count_ones[1][6]~233\) # (!\U_ARGMAX|count_ones[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][7]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][6]~233\,
	combout => \U_ARGMAX|count_ones[1][7]~234_combout\,
	cout => \U_ARGMAX|count_ones[1][7]~235\);

-- Location: FF_X58_Y48_N15
\U_ARGMAX|count_ones[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][7]~234_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][7]~q\);

-- Location: LCCOMB_X58_Y48_N16
\U_ARGMAX|count_ones[1][8]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][8]~236_combout\ = (\U_ARGMAX|count_ones[1][8]~q\ & (\U_ARGMAX|count_ones[1][7]~235\ $ (GND))) # (!\U_ARGMAX|count_ones[1][8]~q\ & (!\U_ARGMAX|count_ones[1][7]~235\ & VCC))
-- \U_ARGMAX|count_ones[1][8]~237\ = CARRY((\U_ARGMAX|count_ones[1][8]~q\ & !\U_ARGMAX|count_ones[1][7]~235\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][8]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][7]~235\,
	combout => \U_ARGMAX|count_ones[1][8]~236_combout\,
	cout => \U_ARGMAX|count_ones[1][8]~237\);

-- Location: FF_X58_Y48_N17
\U_ARGMAX|count_ones[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][8]~236_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][8]~q\);

-- Location: LCCOMB_X58_Y48_N18
\U_ARGMAX|count_ones[1][9]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][9]~238_combout\ = (\U_ARGMAX|count_ones[1][9]~q\ & (!\U_ARGMAX|count_ones[1][8]~237\)) # (!\U_ARGMAX|count_ones[1][9]~q\ & ((\U_ARGMAX|count_ones[1][8]~237\) # (GND)))
-- \U_ARGMAX|count_ones[1][9]~239\ = CARRY((!\U_ARGMAX|count_ones[1][8]~237\) # (!\U_ARGMAX|count_ones[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][8]~237\,
	combout => \U_ARGMAX|count_ones[1][9]~238_combout\,
	cout => \U_ARGMAX|count_ones[1][9]~239\);

-- Location: FF_X58_Y48_N19
\U_ARGMAX|count_ones[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][9]~238_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][9]~q\);

-- Location: LCCOMB_X58_Y48_N20
\U_ARGMAX|count_ones[1][10]~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][10]~240_combout\ = (\U_ARGMAX|count_ones[1][10]~q\ & (\U_ARGMAX|count_ones[1][9]~239\ $ (GND))) # (!\U_ARGMAX|count_ones[1][10]~q\ & (!\U_ARGMAX|count_ones[1][9]~239\ & VCC))
-- \U_ARGMAX|count_ones[1][10]~241\ = CARRY((\U_ARGMAX|count_ones[1][10]~q\ & !\U_ARGMAX|count_ones[1][9]~239\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][10]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][9]~239\,
	combout => \U_ARGMAX|count_ones[1][10]~240_combout\,
	cout => \U_ARGMAX|count_ones[1][10]~241\);

-- Location: FF_X58_Y48_N21
\U_ARGMAX|count_ones[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][10]~240_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][10]~q\);

-- Location: LCCOMB_X58_Y48_N22
\U_ARGMAX|count_ones[1][11]~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][11]~242_combout\ = (\U_ARGMAX|count_ones[1][11]~q\ & (!\U_ARGMAX|count_ones[1][10]~241\)) # (!\U_ARGMAX|count_ones[1][11]~q\ & ((\U_ARGMAX|count_ones[1][10]~241\) # (GND)))
-- \U_ARGMAX|count_ones[1][11]~243\ = CARRY((!\U_ARGMAX|count_ones[1][10]~241\) # (!\U_ARGMAX|count_ones[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][11]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][10]~241\,
	combout => \U_ARGMAX|count_ones[1][11]~242_combout\,
	cout => \U_ARGMAX|count_ones[1][11]~243\);

-- Location: FF_X58_Y48_N23
\U_ARGMAX|count_ones[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][11]~242_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][11]~q\);

-- Location: LCCOMB_X58_Y48_N24
\U_ARGMAX|count_ones[1][12]~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][12]~244_combout\ = (\U_ARGMAX|count_ones[1][12]~q\ & (\U_ARGMAX|count_ones[1][11]~243\ $ (GND))) # (!\U_ARGMAX|count_ones[1][12]~q\ & (!\U_ARGMAX|count_ones[1][11]~243\ & VCC))
-- \U_ARGMAX|count_ones[1][12]~245\ = CARRY((\U_ARGMAX|count_ones[1][12]~q\ & !\U_ARGMAX|count_ones[1][11]~243\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][12]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][11]~243\,
	combout => \U_ARGMAX|count_ones[1][12]~244_combout\,
	cout => \U_ARGMAX|count_ones[1][12]~245\);

-- Location: FF_X58_Y48_N25
\U_ARGMAX|count_ones[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][12]~244_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][12]~q\);

-- Location: LCCOMB_X58_Y48_N26
\U_ARGMAX|count_ones[1][13]~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][13]~246_combout\ = (\U_ARGMAX|count_ones[1][13]~q\ & (!\U_ARGMAX|count_ones[1][12]~245\)) # (!\U_ARGMAX|count_ones[1][13]~q\ & ((\U_ARGMAX|count_ones[1][12]~245\) # (GND)))
-- \U_ARGMAX|count_ones[1][13]~247\ = CARRY((!\U_ARGMAX|count_ones[1][12]~245\) # (!\U_ARGMAX|count_ones[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][13]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][12]~245\,
	combout => \U_ARGMAX|count_ones[1][13]~246_combout\,
	cout => \U_ARGMAX|count_ones[1][13]~247\);

-- Location: FF_X58_Y48_N27
\U_ARGMAX|count_ones[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][13]~246_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][13]~q\);

-- Location: LCCOMB_X58_Y48_N28
\U_ARGMAX|count_ones[1][14]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][14]~248_combout\ = (\U_ARGMAX|count_ones[1][14]~q\ & (\U_ARGMAX|count_ones[1][13]~247\ $ (GND))) # (!\U_ARGMAX|count_ones[1][14]~q\ & (!\U_ARGMAX|count_ones[1][13]~247\ & VCC))
-- \U_ARGMAX|count_ones[1][14]~249\ = CARRY((\U_ARGMAX|count_ones[1][14]~q\ & !\U_ARGMAX|count_ones[1][13]~247\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][13]~247\,
	combout => \U_ARGMAX|count_ones[1][14]~248_combout\,
	cout => \U_ARGMAX|count_ones[1][14]~249\);

-- Location: FF_X58_Y48_N29
\U_ARGMAX|count_ones[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][14]~248_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][14]~q\);

-- Location: LCCOMB_X58_Y48_N30
\U_ARGMAX|count_ones[1][15]~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][15]~250_combout\ = (\U_ARGMAX|count_ones[1][15]~q\ & (!\U_ARGMAX|count_ones[1][14]~249\)) # (!\U_ARGMAX|count_ones[1][15]~q\ & ((\U_ARGMAX|count_ones[1][14]~249\) # (GND)))
-- \U_ARGMAX|count_ones[1][15]~251\ = CARRY((!\U_ARGMAX|count_ones[1][14]~249\) # (!\U_ARGMAX|count_ones[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][15]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][14]~249\,
	combout => \U_ARGMAX|count_ones[1][15]~250_combout\,
	cout => \U_ARGMAX|count_ones[1][15]~251\);

-- Location: FF_X58_Y48_N31
\U_ARGMAX|count_ones[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][15]~250_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][15]~q\);

-- Location: LCCOMB_X58_Y47_N0
\U_ARGMAX|count_ones[1][16]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][16]~252_combout\ = (\U_ARGMAX|count_ones[1][16]~q\ & (\U_ARGMAX|count_ones[1][15]~251\ $ (GND))) # (!\U_ARGMAX|count_ones[1][16]~q\ & (!\U_ARGMAX|count_ones[1][15]~251\ & VCC))
-- \U_ARGMAX|count_ones[1][16]~253\ = CARRY((\U_ARGMAX|count_ones[1][16]~q\ & !\U_ARGMAX|count_ones[1][15]~251\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][16]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][15]~251\,
	combout => \U_ARGMAX|count_ones[1][16]~252_combout\,
	cout => \U_ARGMAX|count_ones[1][16]~253\);

-- Location: FF_X58_Y47_N1
\U_ARGMAX|count_ones[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][16]~252_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][16]~q\);

-- Location: LCCOMB_X58_Y47_N2
\U_ARGMAX|count_ones[1][17]~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][17]~254_combout\ = (\U_ARGMAX|count_ones[1][17]~q\ & (!\U_ARGMAX|count_ones[1][16]~253\)) # (!\U_ARGMAX|count_ones[1][17]~q\ & ((\U_ARGMAX|count_ones[1][16]~253\) # (GND)))
-- \U_ARGMAX|count_ones[1][17]~255\ = CARRY((!\U_ARGMAX|count_ones[1][16]~253\) # (!\U_ARGMAX|count_ones[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][17]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][16]~253\,
	combout => \U_ARGMAX|count_ones[1][17]~254_combout\,
	cout => \U_ARGMAX|count_ones[1][17]~255\);

-- Location: FF_X58_Y47_N3
\U_ARGMAX|count_ones[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][17]~254_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][17]~q\);

-- Location: LCCOMB_X58_Y47_N4
\U_ARGMAX|count_ones[1][18]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][18]~256_combout\ = (\U_ARGMAX|count_ones[1][18]~q\ & (\U_ARGMAX|count_ones[1][17]~255\ $ (GND))) # (!\U_ARGMAX|count_ones[1][18]~q\ & (!\U_ARGMAX|count_ones[1][17]~255\ & VCC))
-- \U_ARGMAX|count_ones[1][18]~257\ = CARRY((\U_ARGMAX|count_ones[1][18]~q\ & !\U_ARGMAX|count_ones[1][17]~255\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][18]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][17]~255\,
	combout => \U_ARGMAX|count_ones[1][18]~256_combout\,
	cout => \U_ARGMAX|count_ones[1][18]~257\);

-- Location: FF_X58_Y47_N5
\U_ARGMAX|count_ones[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][18]~256_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][18]~q\);

-- Location: LCCOMB_X58_Y47_N6
\U_ARGMAX|count_ones[1][19]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][19]~258_combout\ = (\U_ARGMAX|count_ones[1][19]~q\ & (!\U_ARGMAX|count_ones[1][18]~257\)) # (!\U_ARGMAX|count_ones[1][19]~q\ & ((\U_ARGMAX|count_ones[1][18]~257\) # (GND)))
-- \U_ARGMAX|count_ones[1][19]~259\ = CARRY((!\U_ARGMAX|count_ones[1][18]~257\) # (!\U_ARGMAX|count_ones[1][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][19]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][18]~257\,
	combout => \U_ARGMAX|count_ones[1][19]~258_combout\,
	cout => \U_ARGMAX|count_ones[1][19]~259\);

-- Location: FF_X58_Y47_N7
\U_ARGMAX|count_ones[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][19]~258_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][19]~q\);

-- Location: LCCOMB_X58_Y47_N8
\U_ARGMAX|count_ones[1][20]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][20]~260_combout\ = (\U_ARGMAX|count_ones[1][20]~q\ & (\U_ARGMAX|count_ones[1][19]~259\ $ (GND))) # (!\U_ARGMAX|count_ones[1][20]~q\ & (!\U_ARGMAX|count_ones[1][19]~259\ & VCC))
-- \U_ARGMAX|count_ones[1][20]~261\ = CARRY((\U_ARGMAX|count_ones[1][20]~q\ & !\U_ARGMAX|count_ones[1][19]~259\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][19]~259\,
	combout => \U_ARGMAX|count_ones[1][20]~260_combout\,
	cout => \U_ARGMAX|count_ones[1][20]~261\);

-- Location: FF_X58_Y47_N9
\U_ARGMAX|count_ones[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][20]~260_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][20]~q\);

-- Location: LCCOMB_X58_Y47_N10
\U_ARGMAX|count_ones[1][21]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][21]~262_combout\ = (\U_ARGMAX|count_ones[1][21]~q\ & (!\U_ARGMAX|count_ones[1][20]~261\)) # (!\U_ARGMAX|count_ones[1][21]~q\ & ((\U_ARGMAX|count_ones[1][20]~261\) # (GND)))
-- \U_ARGMAX|count_ones[1][21]~263\ = CARRY((!\U_ARGMAX|count_ones[1][20]~261\) # (!\U_ARGMAX|count_ones[1][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][21]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][20]~261\,
	combout => \U_ARGMAX|count_ones[1][21]~262_combout\,
	cout => \U_ARGMAX|count_ones[1][21]~263\);

-- Location: FF_X58_Y47_N11
\U_ARGMAX|count_ones[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][21]~262_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][21]~q\);

-- Location: LCCOMB_X58_Y47_N12
\U_ARGMAX|count_ones[1][22]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][22]~264_combout\ = (\U_ARGMAX|count_ones[1][22]~q\ & (\U_ARGMAX|count_ones[1][21]~263\ $ (GND))) # (!\U_ARGMAX|count_ones[1][22]~q\ & (!\U_ARGMAX|count_ones[1][21]~263\ & VCC))
-- \U_ARGMAX|count_ones[1][22]~265\ = CARRY((\U_ARGMAX|count_ones[1][22]~q\ & !\U_ARGMAX|count_ones[1][21]~263\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][22]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][21]~263\,
	combout => \U_ARGMAX|count_ones[1][22]~264_combout\,
	cout => \U_ARGMAX|count_ones[1][22]~265\);

-- Location: FF_X58_Y47_N13
\U_ARGMAX|count_ones[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][22]~264_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][22]~q\);

-- Location: LCCOMB_X58_Y47_N14
\U_ARGMAX|count_ones[1][23]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][23]~266_combout\ = (\U_ARGMAX|count_ones[1][23]~q\ & (!\U_ARGMAX|count_ones[1][22]~265\)) # (!\U_ARGMAX|count_ones[1][23]~q\ & ((\U_ARGMAX|count_ones[1][22]~265\) # (GND)))
-- \U_ARGMAX|count_ones[1][23]~267\ = CARRY((!\U_ARGMAX|count_ones[1][22]~265\) # (!\U_ARGMAX|count_ones[1][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][23]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][22]~265\,
	combout => \U_ARGMAX|count_ones[1][23]~266_combout\,
	cout => \U_ARGMAX|count_ones[1][23]~267\);

-- Location: FF_X58_Y47_N15
\U_ARGMAX|count_ones[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][23]~266_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][23]~q\);

-- Location: LCCOMB_X58_Y47_N16
\U_ARGMAX|count_ones[1][24]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][24]~268_combout\ = (\U_ARGMAX|count_ones[1][24]~q\ & (\U_ARGMAX|count_ones[1][23]~267\ $ (GND))) # (!\U_ARGMAX|count_ones[1][24]~q\ & (!\U_ARGMAX|count_ones[1][23]~267\ & VCC))
-- \U_ARGMAX|count_ones[1][24]~269\ = CARRY((\U_ARGMAX|count_ones[1][24]~q\ & !\U_ARGMAX|count_ones[1][23]~267\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][24]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][23]~267\,
	combout => \U_ARGMAX|count_ones[1][24]~268_combout\,
	cout => \U_ARGMAX|count_ones[1][24]~269\);

-- Location: FF_X58_Y47_N17
\U_ARGMAX|count_ones[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][24]~268_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][24]~q\);

-- Location: LCCOMB_X58_Y47_N18
\U_ARGMAX|count_ones[1][25]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][25]~270_combout\ = (\U_ARGMAX|count_ones[1][25]~q\ & (!\U_ARGMAX|count_ones[1][24]~269\)) # (!\U_ARGMAX|count_ones[1][25]~q\ & ((\U_ARGMAX|count_ones[1][24]~269\) # (GND)))
-- \U_ARGMAX|count_ones[1][25]~271\ = CARRY((!\U_ARGMAX|count_ones[1][24]~269\) # (!\U_ARGMAX|count_ones[1][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][24]~269\,
	combout => \U_ARGMAX|count_ones[1][25]~270_combout\,
	cout => \U_ARGMAX|count_ones[1][25]~271\);

-- Location: FF_X58_Y47_N19
\U_ARGMAX|count_ones[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][25]~270_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][25]~q\);

-- Location: LCCOMB_X58_Y47_N20
\U_ARGMAX|count_ones[1][26]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][26]~272_combout\ = (\U_ARGMAX|count_ones[1][26]~q\ & (\U_ARGMAX|count_ones[1][25]~271\ $ (GND))) # (!\U_ARGMAX|count_ones[1][26]~q\ & (!\U_ARGMAX|count_ones[1][25]~271\ & VCC))
-- \U_ARGMAX|count_ones[1][26]~273\ = CARRY((\U_ARGMAX|count_ones[1][26]~q\ & !\U_ARGMAX|count_ones[1][25]~271\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][26]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][25]~271\,
	combout => \U_ARGMAX|count_ones[1][26]~272_combout\,
	cout => \U_ARGMAX|count_ones[1][26]~273\);

-- Location: FF_X58_Y47_N21
\U_ARGMAX|count_ones[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][26]~272_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][26]~q\);

-- Location: LCCOMB_X58_Y47_N22
\U_ARGMAX|count_ones[1][27]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][27]~274_combout\ = (\U_ARGMAX|count_ones[1][27]~q\ & (!\U_ARGMAX|count_ones[1][26]~273\)) # (!\U_ARGMAX|count_ones[1][27]~q\ & ((\U_ARGMAX|count_ones[1][26]~273\) # (GND)))
-- \U_ARGMAX|count_ones[1][27]~275\ = CARRY((!\U_ARGMAX|count_ones[1][26]~273\) # (!\U_ARGMAX|count_ones[1][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][26]~273\,
	combout => \U_ARGMAX|count_ones[1][27]~274_combout\,
	cout => \U_ARGMAX|count_ones[1][27]~275\);

-- Location: FF_X58_Y47_N23
\U_ARGMAX|count_ones[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][27]~274_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][27]~q\);

-- Location: LCCOMB_X58_Y47_N24
\U_ARGMAX|count_ones[1][28]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][28]~276_combout\ = (\U_ARGMAX|count_ones[1][28]~q\ & (\U_ARGMAX|count_ones[1][27]~275\ $ (GND))) # (!\U_ARGMAX|count_ones[1][28]~q\ & (!\U_ARGMAX|count_ones[1][27]~275\ & VCC))
-- \U_ARGMAX|count_ones[1][28]~277\ = CARRY((\U_ARGMAX|count_ones[1][28]~q\ & !\U_ARGMAX|count_ones[1][27]~275\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][27]~275\,
	combout => \U_ARGMAX|count_ones[1][28]~276_combout\,
	cout => \U_ARGMAX|count_ones[1][28]~277\);

-- Location: FF_X58_Y47_N25
\U_ARGMAX|count_ones[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][28]~276_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][28]~q\);

-- Location: LCCOMB_X58_Y47_N26
\U_ARGMAX|count_ones[1][29]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][29]~278_combout\ = (\U_ARGMAX|count_ones[1][29]~q\ & (!\U_ARGMAX|count_ones[1][28]~277\)) # (!\U_ARGMAX|count_ones[1][29]~q\ & ((\U_ARGMAX|count_ones[1][28]~277\) # (GND)))
-- \U_ARGMAX|count_ones[1][29]~279\ = CARRY((!\U_ARGMAX|count_ones[1][28]~277\) # (!\U_ARGMAX|count_ones[1][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][29]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][28]~277\,
	combout => \U_ARGMAX|count_ones[1][29]~278_combout\,
	cout => \U_ARGMAX|count_ones[1][29]~279\);

-- Location: FF_X58_Y47_N27
\U_ARGMAX|count_ones[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][29]~278_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][29]~q\);

-- Location: LCCOMB_X58_Y47_N28
\U_ARGMAX|count_ones[1][30]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][30]~280_combout\ = (\U_ARGMAX|count_ones[1][30]~q\ & (\U_ARGMAX|count_ones[1][29]~279\ $ (GND))) # (!\U_ARGMAX|count_ones[1][30]~q\ & (!\U_ARGMAX|count_ones[1][29]~279\ & VCC))
-- \U_ARGMAX|count_ones[1][30]~281\ = CARRY((\U_ARGMAX|count_ones[1][30]~q\ & !\U_ARGMAX|count_ones[1][29]~279\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[1][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|count_ones[1][29]~279\,
	combout => \U_ARGMAX|count_ones[1][30]~280_combout\,
	cout => \U_ARGMAX|count_ones[1][30]~281\);

-- Location: FF_X58_Y47_N29
\U_ARGMAX|count_ones[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][30]~280_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][30]~q\);

-- Location: LCCOMB_X50_Y47_N4
\U_ARGMAX|max_count[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[30]~1_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][30]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][30]~q\,
	datad => \U_ARGMAX|count_ones[0][30]~q\,
	combout => \U_ARGMAX|max_count[30]~1_combout\);

-- Location: LCCOMB_X51_Y47_N22
\U_ARGMAX|max_count[29]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[29]~2_combout\ = (\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[1][29]~q\))) # (!\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[0][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][29]~q\,
	datab => \U_ARGMAX|count_ones[1][29]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[29]~2_combout\);

-- Location: LCCOMB_X50_Y47_N2
\U_ARGMAX|max_count[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[0]~31_combout\ = (\U_ARGMAX|LessThan9~62_combout\) # ((\U_ARGMAX|LessThan4~62_combout\ & !\U_ARGMAX|LessThan8~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan4~62_combout\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datad => \U_ARGMAX|LessThan9~62_combout\,
	combout => \U_ARGMAX|max_count[0]~31_combout\);

-- Location: FF_X51_Y47_N23
\U_ARGMAX|max_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[29]~2_combout\,
	asdata => \U_ARGMAX|count_ones[4][29]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(29));

-- Location: LCCOMB_X50_Y47_N12
\U_ARGMAX|max_count[28]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[28]~3_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][28]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][28]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan9~62_combout\,
	datab => \U_ARGMAX|count_ones[0][28]~q\,
	datac => \U_ARGMAX|count_ones[1][28]~q\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_count[28]~3_combout\);

-- Location: LCCOMB_X50_Y47_N6
\U_ARGMAX|max_count[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[28]~feeder_combout\ = \U_ARGMAX|max_count[28]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[28]~3_combout\,
	combout => \U_ARGMAX|max_count[28]~feeder_combout\);

-- Location: FF_X50_Y47_N7
\U_ARGMAX|max_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[28]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][28]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(28));

-- Location: LCCOMB_X51_Y47_N12
\U_ARGMAX|max_count[27]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[27]~4_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][27]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|count_ones[0][27]~q\))) # (!\U_ARGMAX|LessThan9~62_combout\ 
-- & (\U_ARGMAX|count_ones[1][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|LessThan9~62_combout\,
	datac => \U_ARGMAX|count_ones[1][27]~q\,
	datad => \U_ARGMAX|count_ones[0][27]~q\,
	combout => \U_ARGMAX|max_count[27]~4_combout\);

-- Location: LCCOMB_X51_Y47_N8
\U_ARGMAX|max_count[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[27]~feeder_combout\ = \U_ARGMAX|max_count[27]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[27]~4_combout\,
	combout => \U_ARGMAX|max_count[27]~feeder_combout\);

-- Location: FF_X51_Y47_N9
\U_ARGMAX|max_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[27]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][27]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(27));

-- Location: LCCOMB_X50_Y47_N20
\U_ARGMAX|max_count[26]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[26]~5_combout\ = (\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[1][26]~q\))) # (!\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[0][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[0][26]~q\,
	datad => \U_ARGMAX|count_ones[1][26]~q\,
	combout => \U_ARGMAX|max_count[26]~5_combout\);

-- Location: FF_X50_Y47_N21
\U_ARGMAX|max_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[26]~5_combout\,
	asdata => \U_ARGMAX|count_ones[4][26]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(26));

-- Location: LCCOMB_X51_Y47_N10
\U_ARGMAX|max_count[25]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[25]~6_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][25]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][25]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|count_ones[0][25]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[1][25]~q\,
	combout => \U_ARGMAX|max_count[25]~6_combout\);

-- Location: LCCOMB_X51_Y47_N14
\U_ARGMAX|max_count[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[25]~feeder_combout\ = \U_ARGMAX|max_count[25]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[25]~6_combout\,
	combout => \U_ARGMAX|max_count[25]~feeder_combout\);

-- Location: FF_X51_Y47_N15
\U_ARGMAX|max_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[25]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][25]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(25));

-- Location: LCCOMB_X50_Y47_N18
\U_ARGMAX|max_count[24]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[24]~7_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][24]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][24]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][24]~q\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|count_ones[1][24]~q\,
	datad => \U_ARGMAX|LessThan9~62_combout\,
	combout => \U_ARGMAX|max_count[24]~7_combout\);

-- Location: LCCOMB_X50_Y47_N10
\U_ARGMAX|max_count[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[24]~feeder_combout\ = \U_ARGMAX|max_count[24]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[24]~7_combout\,
	combout => \U_ARGMAX|max_count[24]~feeder_combout\);

-- Location: FF_X50_Y47_N11
\U_ARGMAX|max_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[24]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][24]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(24));

-- Location: LCCOMB_X50_Y47_N24
\U_ARGMAX|max_count[23]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[23]~8_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][23]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][23]~q\,
	datad => \U_ARGMAX|count_ones[0][23]~q\,
	combout => \U_ARGMAX|max_count[23]~8_combout\);

-- Location: FF_X50_Y47_N25
\U_ARGMAX|max_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[23]~8_combout\,
	asdata => \U_ARGMAX|count_ones[4][23]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(23));

-- Location: LCCOMB_X50_Y47_N14
\U_ARGMAX|max_count[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[22]~9_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][22]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][22]~q\,
	datad => \U_ARGMAX|count_ones[0][22]~q\,
	combout => \U_ARGMAX|max_count[22]~9_combout\);

-- Location: FF_X50_Y47_N15
\U_ARGMAX|max_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[22]~9_combout\,
	asdata => \U_ARGMAX|count_ones[4][22]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(22));

-- Location: LCCOMB_X51_Y47_N16
\U_ARGMAX|max_count[21]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[21]~10_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][21]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][21]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][21]~q\,
	datab => \U_ARGMAX|LessThan9~62_combout\,
	datac => \U_ARGMAX|LessThan8~62_combout\,
	datad => \U_ARGMAX|count_ones[1][21]~q\,
	combout => \U_ARGMAX|max_count[21]~10_combout\);

-- Location: LCCOMB_X52_Y45_N4
\U_ARGMAX|max_count[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[21]~feeder_combout\ = \U_ARGMAX|max_count[21]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[21]~10_combout\,
	combout => \U_ARGMAX|max_count[21]~feeder_combout\);

-- Location: FF_X52_Y45_N5
\U_ARGMAX|max_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[21]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][21]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(21));

-- Location: LCCOMB_X50_Y47_N28
\U_ARGMAX|max_count[20]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[20]~11_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][20]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][20]~q\,
	datad => \U_ARGMAX|count_ones[0][20]~q\,
	combout => \U_ARGMAX|max_count[20]~11_combout\);

-- Location: FF_X50_Y47_N29
\U_ARGMAX|max_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[20]~11_combout\,
	asdata => \U_ARGMAX|count_ones[4][20]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(20));

-- Location: LCCOMB_X50_Y47_N22
\U_ARGMAX|max_count[19]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[19]~12_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][19]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][19]~q\,
	datad => \U_ARGMAX|count_ones[0][19]~q\,
	combout => \U_ARGMAX|max_count[19]~12_combout\);

-- Location: FF_X50_Y47_N23
\U_ARGMAX|max_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[19]~12_combout\,
	asdata => \U_ARGMAX|count_ones[4][19]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(19));

-- Location: LCCOMB_X50_Y47_N0
\U_ARGMAX|max_count[18]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[18]~13_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][18]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|count_ones[0][18]~q\))) # 
-- (!\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[1][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][18]~q\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|count_ones[0][18]~q\,
	datad => \U_ARGMAX|LessThan9~62_combout\,
	combout => \U_ARGMAX|max_count[18]~13_combout\);

-- Location: LCCOMB_X50_Y48_N12
\U_ARGMAX|max_count[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[18]~feeder_combout\ = \U_ARGMAX|max_count[18]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[18]~13_combout\,
	combout => \U_ARGMAX|max_count[18]~feeder_combout\);

-- Location: FF_X50_Y48_N13
\U_ARGMAX|max_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[18]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][18]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(18));

-- Location: LCCOMB_X50_Y48_N2
\U_ARGMAX|max_count[17]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[17]~14_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][17]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][17]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][17]~q\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[1][17]~q\,
	combout => \U_ARGMAX|max_count[17]~14_combout\);

-- Location: LCCOMB_X50_Y48_N14
\U_ARGMAX|max_count[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[17]~feeder_combout\ = \U_ARGMAX|max_count[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[17]~14_combout\,
	combout => \U_ARGMAX|max_count[17]~feeder_combout\);

-- Location: FF_X50_Y48_N15
\U_ARGMAX|max_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[17]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][17]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(17));

-- Location: LCCOMB_X51_Y47_N2
\U_ARGMAX|max_count[16]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[16]~15_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][16]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|count_ones[0][16]~q\))) # 
-- (!\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[1][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|count_ones[1][16]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[0][16]~q\,
	combout => \U_ARGMAX|max_count[16]~15_combout\);

-- Location: LCCOMB_X51_Y47_N28
\U_ARGMAX|max_count[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[16]~feeder_combout\ = \U_ARGMAX|max_count[16]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[16]~15_combout\,
	combout => \U_ARGMAX|max_count[16]~feeder_combout\);

-- Location: FF_X51_Y47_N29
\U_ARGMAX|max_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[16]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][16]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(16));

-- Location: LCCOMB_X51_Y47_N24
\U_ARGMAX|max_count[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[15]~16_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][15]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|count_ones[0][15]~q\))) # 
-- (!\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|count_ones[1][15]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[0][15]~q\,
	combout => \U_ARGMAX|max_count[15]~16_combout\);

-- Location: LCCOMB_X51_Y47_N30
\U_ARGMAX|max_count[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[15]~feeder_combout\ = \U_ARGMAX|max_count[15]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[15]~16_combout\,
	combout => \U_ARGMAX|max_count[15]~feeder_combout\);

-- Location: FF_X51_Y47_N31
\U_ARGMAX|max_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[15]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][15]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(15));

-- Location: LCCOMB_X50_Y48_N0
\U_ARGMAX|max_count[14]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[14]~17_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][14]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][14]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][14]~q\,
	datab => \U_ARGMAX|count_ones[1][14]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_count[14]~17_combout\);

-- Location: LCCOMB_X50_Y47_N8
\U_ARGMAX|max_count[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[14]~feeder_combout\ = \U_ARGMAX|max_count[14]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[14]~17_combout\,
	combout => \U_ARGMAX|max_count[14]~feeder_combout\);

-- Location: FF_X50_Y47_N9
\U_ARGMAX|max_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[14]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][14]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(14));

-- Location: LCCOMB_X50_Y48_N28
\U_ARGMAX|max_count[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[13]~18_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][13]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][13]~q\,
	datab => \U_ARGMAX|count_ones[0][13]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[13]~18_combout\);

-- Location: FF_X50_Y48_N29
\U_ARGMAX|max_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[13]~18_combout\,
	asdata => \U_ARGMAX|count_ones[4][13]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(13));

-- Location: LCCOMB_X50_Y48_N18
\U_ARGMAX|max_count[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[12]~19_combout\ = (\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[1][12]~q\))) # (!\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[0][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][12]~q\,
	datab => \U_ARGMAX|count_ones[1][12]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[12]~19_combout\);

-- Location: FF_X50_Y48_N19
\U_ARGMAX|max_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[12]~19_combout\,
	asdata => \U_ARGMAX|count_ones[4][12]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(12));

-- Location: LCCOMB_X50_Y48_N10
\U_ARGMAX|max_count[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[11]~20_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][11]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][11]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][11]~q\,
	datab => \U_ARGMAX|count_ones[1][11]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_count[11]~20_combout\);

-- Location: LCCOMB_X50_Y48_N24
\U_ARGMAX|max_count[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[11]~feeder_combout\ = \U_ARGMAX|max_count[11]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[11]~20_combout\,
	combout => \U_ARGMAX|max_count[11]~feeder_combout\);

-- Location: FF_X50_Y48_N25
\U_ARGMAX|max_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[11]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][11]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(11));

-- Location: LCCOMB_X51_Y48_N24
\U_ARGMAX|max_count[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[10]~21_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][10]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][10]~q\,
	datab => \U_ARGMAX|count_ones[0][10]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[10]~21_combout\);

-- Location: FF_X51_Y48_N25
\U_ARGMAX|max_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[10]~21_combout\,
	asdata => \U_ARGMAX|count_ones[4][10]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(10));

-- Location: LCCOMB_X50_Y48_N20
\U_ARGMAX|max_count[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[9]~22_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][9]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][9]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][9]~q\,
	datab => \U_ARGMAX|count_ones[1][9]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_count[9]~22_combout\);

-- Location: LCCOMB_X50_Y48_N26
\U_ARGMAX|max_count[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[9]~feeder_combout\ = \U_ARGMAX|max_count[9]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[9]~22_combout\,
	combout => \U_ARGMAX|max_count[9]~feeder_combout\);

-- Location: FF_X50_Y48_N27
\U_ARGMAX|max_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[9]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][9]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(9));

-- Location: LCCOMB_X51_Y48_N18
\U_ARGMAX|max_count[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[8]~23_combout\ = (\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[1][8]~q\))) # (!\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][8]~q\,
	datab => \U_ARGMAX|count_ones[1][8]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[8]~23_combout\);

-- Location: FF_X51_Y48_N19
\U_ARGMAX|max_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[8]~23_combout\,
	asdata => \U_ARGMAX|count_ones[4][8]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(8));

-- Location: LCCOMB_X50_Y48_N30
\U_ARGMAX|max_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[7]~24_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][7]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|count_ones[0][7]~q\))) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- (\U_ARGMAX|count_ones[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][7]~q\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[0][7]~q\,
	combout => \U_ARGMAX|max_count[7]~24_combout\);

-- Location: LCCOMB_X50_Y48_N4
\U_ARGMAX|max_count[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[7]~feeder_combout\ = \U_ARGMAX|max_count[7]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count[7]~24_combout\,
	combout => \U_ARGMAX|max_count[7]~feeder_combout\);

-- Location: FF_X50_Y48_N5
\U_ARGMAX|max_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[7]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][7]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(7));

-- Location: LCCOMB_X50_Y48_N16
\U_ARGMAX|max_count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[6]~25_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][6]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][6]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][6]~q\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[1][6]~q\,
	combout => \U_ARGMAX|max_count[6]~25_combout\);

-- Location: LCCOMB_X50_Y48_N6
\U_ARGMAX|max_count[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[6]~feeder_combout\ = \U_ARGMAX|max_count[6]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[6]~25_combout\,
	combout => \U_ARGMAX|max_count[6]~feeder_combout\);

-- Location: FF_X50_Y48_N7
\U_ARGMAX|max_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[6]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][6]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(6));

-- Location: LCCOMB_X50_Y47_N26
\U_ARGMAX|max_count[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[5]~26_combout\ = (\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[1][5]~q\)) # (!\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_index~2_combout\,
	datab => \U_ARGMAX|count_ones[1][5]~q\,
	datad => \U_ARGMAX|count_ones[0][5]~q\,
	combout => \U_ARGMAX|max_count[5]~26_combout\);

-- Location: FF_X50_Y47_N27
\U_ARGMAX|max_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[5]~26_combout\,
	asdata => \U_ARGMAX|count_ones[4][5]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(5));

-- Location: LCCOMB_X51_Y47_N18
\U_ARGMAX|max_count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[4]~27_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (((\U_ARGMAX|count_ones[0][4]~q\)))) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][4]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|LessThan9~62_combout\,
	datac => \U_ARGMAX|count_ones[0][4]~q\,
	datad => \U_ARGMAX|count_ones[1][4]~q\,
	combout => \U_ARGMAX|max_count[4]~27_combout\);

-- Location: LCCOMB_X51_Y47_N0
\U_ARGMAX|max_count[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[4]~feeder_combout\ = \U_ARGMAX|max_count[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[4]~27_combout\,
	combout => \U_ARGMAX|max_count[4]~feeder_combout\);

-- Location: FF_X51_Y47_N1
\U_ARGMAX|max_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[4]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][4]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(4));

-- Location: LCCOMB_X50_Y48_N22
\U_ARGMAX|max_count[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[3]~28_combout\ = (\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][3]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & ((\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][3]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][3]~q\,
	datab => \U_ARGMAX|count_ones[1][3]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|LessThan8~62_combout\,
	combout => \U_ARGMAX|max_count[3]~28_combout\);

-- Location: LCCOMB_X50_Y48_N8
\U_ARGMAX|max_count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[3]~feeder_combout\ = \U_ARGMAX|max_count[3]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count[3]~28_combout\,
	combout => \U_ARGMAX|max_count[3]~feeder_combout\);

-- Location: FF_X50_Y48_N9
\U_ARGMAX|max_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[3]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][3]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(3));

-- Location: LCCOMB_X51_Y48_N16
\U_ARGMAX|max_count[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[2]~29_combout\ = (\U_ARGMAX|max_index~2_combout\ & ((\U_ARGMAX|count_ones[1][2]~q\))) # (!\U_ARGMAX|max_index~2_combout\ & (\U_ARGMAX|count_ones[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][2]~q\,
	datab => \U_ARGMAX|count_ones[1][2]~q\,
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_count[2]~29_combout\);

-- Location: FF_X51_Y48_N17
\U_ARGMAX|max_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[2]~29_combout\,
	asdata => \U_ARGMAX|count_ones[4][2]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(2));

-- Location: LCCOMB_X52_Y45_N18
\U_ARGMAX|max_count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[0]~32_combout\ = (\U_ARGMAX|LessThan4~62_combout\) # ((\U_ARGMAX|LessThan8~62_combout\) # (\U_ARGMAX|LessThan9~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|LessThan4~62_combout\,
	datac => \U_ARGMAX|LessThan8~62_combout\,
	datad => \U_ARGMAX|LessThan9~62_combout\,
	combout => \U_ARGMAX|max_count[0]~32_combout\);

-- Location: LCCOMB_X52_Y45_N26
\U_ARGMAX|max_count~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count~33_combout\ = (!\U_ARGMAX|max_count[0]~30_combout\ & ((\U_ARGMAX|max_count[0]~32_combout\ & (\U_ARGMAX|count_ones[4][1]~q\)) # (!\U_ARGMAX|max_count[0]~32_combout\ & ((\U_ARGMAX|count_ones[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][1]~q\,
	datab => \U_ARGMAX|max_count[0]~32_combout\,
	datac => \U_ARGMAX|count_ones[1][1]~q\,
	datad => \U_ARGMAX|max_count[0]~30_combout\,
	combout => \U_ARGMAX|max_count~33_combout\);

-- Location: FF_X52_Y45_N27
\U_ARGMAX|max_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(1));

-- Location: LCCOMB_X52_Y45_N0
\U_ARGMAX|max_count~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count~34_combout\ = (!\U_ARGMAX|max_count[0]~30_combout\ & ((\U_ARGMAX|max_count[0]~32_combout\ & ((\U_ARGMAX|count_ones[4][0]~q\))) # (!\U_ARGMAX|max_count[0]~32_combout\ & (\U_ARGMAX|count_ones[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][0]~q\,
	datab => \U_ARGMAX|max_count[0]~32_combout\,
	datac => \U_ARGMAX|count_ones[4][0]~q\,
	datad => \U_ARGMAX|max_count[0]~30_combout\,
	combout => \U_ARGMAX|max_count~34_combout\);

-- Location: FF_X52_Y45_N1
\U_ARGMAX|max_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(0));

-- Location: LCCOMB_X51_Y46_N0
\U_ARGMAX|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~1_cout\ = CARRY((\U_ARGMAX|count_ones[4][0]~q\ & !\U_ARGMAX|max_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][0]~q\,
	datab => \U_ARGMAX|max_count\(0),
	datad => VCC,
	cout => \U_ARGMAX|LessThan4~1_cout\);

-- Location: LCCOMB_X51_Y46_N2
\U_ARGMAX|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~3_cout\ = CARRY((\U_ARGMAX|count_ones[4][1]~q\ & (\U_ARGMAX|max_count\(1) & !\U_ARGMAX|LessThan4~1_cout\)) # (!\U_ARGMAX|count_ones[4][1]~q\ & ((\U_ARGMAX|max_count\(1)) # (!\U_ARGMAX|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][1]~q\,
	datab => \U_ARGMAX|max_count\(1),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~1_cout\,
	cout => \U_ARGMAX|LessThan4~3_cout\);

-- Location: LCCOMB_X51_Y46_N4
\U_ARGMAX|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~5_cout\ = CARRY((\U_ARGMAX|count_ones[4][2]~q\ & ((!\U_ARGMAX|LessThan4~3_cout\) # (!\U_ARGMAX|max_count\(2)))) # (!\U_ARGMAX|count_ones[4][2]~q\ & (!\U_ARGMAX|max_count\(2) & !\U_ARGMAX|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][2]~q\,
	datab => \U_ARGMAX|max_count\(2),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~3_cout\,
	cout => \U_ARGMAX|LessThan4~5_cout\);

-- Location: LCCOMB_X51_Y46_N6
\U_ARGMAX|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~7_cout\ = CARRY((\U_ARGMAX|count_ones[4][3]~q\ & (\U_ARGMAX|max_count\(3) & !\U_ARGMAX|LessThan4~5_cout\)) # (!\U_ARGMAX|count_ones[4][3]~q\ & ((\U_ARGMAX|max_count\(3)) # (!\U_ARGMAX|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][3]~q\,
	datab => \U_ARGMAX|max_count\(3),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~5_cout\,
	cout => \U_ARGMAX|LessThan4~7_cout\);

-- Location: LCCOMB_X51_Y46_N8
\U_ARGMAX|LessThan4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~9_cout\ = CARRY((\U_ARGMAX|max_count\(4) & (\U_ARGMAX|count_ones[4][4]~q\ & !\U_ARGMAX|LessThan4~7_cout\)) # (!\U_ARGMAX|max_count\(4) & ((\U_ARGMAX|count_ones[4][4]~q\) # (!\U_ARGMAX|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(4),
	datab => \U_ARGMAX|count_ones[4][4]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~7_cout\,
	cout => \U_ARGMAX|LessThan4~9_cout\);

-- Location: LCCOMB_X51_Y46_N10
\U_ARGMAX|LessThan4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~11_cout\ = CARRY((\U_ARGMAX|count_ones[4][5]~q\ & (\U_ARGMAX|max_count\(5) & !\U_ARGMAX|LessThan4~9_cout\)) # (!\U_ARGMAX|count_ones[4][5]~q\ & ((\U_ARGMAX|max_count\(5)) # (!\U_ARGMAX|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][5]~q\,
	datab => \U_ARGMAX|max_count\(5),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~9_cout\,
	cout => \U_ARGMAX|LessThan4~11_cout\);

-- Location: LCCOMB_X51_Y46_N12
\U_ARGMAX|LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~13_cout\ = CARRY((\U_ARGMAX|count_ones[4][6]~q\ & ((!\U_ARGMAX|LessThan4~11_cout\) # (!\U_ARGMAX|max_count\(6)))) # (!\U_ARGMAX|count_ones[4][6]~q\ & (!\U_ARGMAX|max_count\(6) & !\U_ARGMAX|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][6]~q\,
	datab => \U_ARGMAX|max_count\(6),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~11_cout\,
	cout => \U_ARGMAX|LessThan4~13_cout\);

-- Location: LCCOMB_X51_Y46_N14
\U_ARGMAX|LessThan4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~15_cout\ = CARRY((\U_ARGMAX|count_ones[4][7]~q\ & (\U_ARGMAX|max_count\(7) & !\U_ARGMAX|LessThan4~13_cout\)) # (!\U_ARGMAX|count_ones[4][7]~q\ & ((\U_ARGMAX|max_count\(7)) # (!\U_ARGMAX|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][7]~q\,
	datab => \U_ARGMAX|max_count\(7),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~13_cout\,
	cout => \U_ARGMAX|LessThan4~15_cout\);

-- Location: LCCOMB_X51_Y46_N16
\U_ARGMAX|LessThan4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~17_cout\ = CARRY((\U_ARGMAX|max_count\(8) & (\U_ARGMAX|count_ones[4][8]~q\ & !\U_ARGMAX|LessThan4~15_cout\)) # (!\U_ARGMAX|max_count\(8) & ((\U_ARGMAX|count_ones[4][8]~q\) # (!\U_ARGMAX|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(8),
	datab => \U_ARGMAX|count_ones[4][8]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~15_cout\,
	cout => \U_ARGMAX|LessThan4~17_cout\);

-- Location: LCCOMB_X51_Y46_N18
\U_ARGMAX|LessThan4~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~19_cout\ = CARRY((\U_ARGMAX|max_count\(9) & ((!\U_ARGMAX|LessThan4~17_cout\) # (!\U_ARGMAX|count_ones[4][9]~q\))) # (!\U_ARGMAX|max_count\(9) & (!\U_ARGMAX|count_ones[4][9]~q\ & !\U_ARGMAX|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(9),
	datab => \U_ARGMAX|count_ones[4][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~17_cout\,
	cout => \U_ARGMAX|LessThan4~19_cout\);

-- Location: LCCOMB_X51_Y46_N20
\U_ARGMAX|LessThan4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~21_cout\ = CARRY((\U_ARGMAX|max_count\(10) & (\U_ARGMAX|count_ones[4][10]~q\ & !\U_ARGMAX|LessThan4~19_cout\)) # (!\U_ARGMAX|max_count\(10) & ((\U_ARGMAX|count_ones[4][10]~q\) # (!\U_ARGMAX|LessThan4~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(10),
	datab => \U_ARGMAX|count_ones[4][10]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~19_cout\,
	cout => \U_ARGMAX|LessThan4~21_cout\);

-- Location: LCCOMB_X51_Y46_N22
\U_ARGMAX|LessThan4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~23_cout\ = CARRY((\U_ARGMAX|max_count\(11) & ((!\U_ARGMAX|LessThan4~21_cout\) # (!\U_ARGMAX|count_ones[4][11]~q\))) # (!\U_ARGMAX|max_count\(11) & (!\U_ARGMAX|count_ones[4][11]~q\ & !\U_ARGMAX|LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(11),
	datab => \U_ARGMAX|count_ones[4][11]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~21_cout\,
	cout => \U_ARGMAX|LessThan4~23_cout\);

-- Location: LCCOMB_X51_Y46_N24
\U_ARGMAX|LessThan4~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~25_cout\ = CARRY((\U_ARGMAX|count_ones[4][12]~q\ & ((!\U_ARGMAX|LessThan4~23_cout\) # (!\U_ARGMAX|max_count\(12)))) # (!\U_ARGMAX|count_ones[4][12]~q\ & (!\U_ARGMAX|max_count\(12) & !\U_ARGMAX|LessThan4~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][12]~q\,
	datab => \U_ARGMAX|max_count\(12),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~23_cout\,
	cout => \U_ARGMAX|LessThan4~25_cout\);

-- Location: LCCOMB_X51_Y46_N26
\U_ARGMAX|LessThan4~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~27_cout\ = CARRY((\U_ARGMAX|count_ones[4][13]~q\ & (\U_ARGMAX|max_count\(13) & !\U_ARGMAX|LessThan4~25_cout\)) # (!\U_ARGMAX|count_ones[4][13]~q\ & ((\U_ARGMAX|max_count\(13)) # (!\U_ARGMAX|LessThan4~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][13]~q\,
	datab => \U_ARGMAX|max_count\(13),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~25_cout\,
	cout => \U_ARGMAX|LessThan4~27_cout\);

-- Location: LCCOMB_X51_Y46_N28
\U_ARGMAX|LessThan4~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~29_cout\ = CARRY((\U_ARGMAX|max_count\(14) & (\U_ARGMAX|count_ones[4][14]~q\ & !\U_ARGMAX|LessThan4~27_cout\)) # (!\U_ARGMAX|max_count\(14) & ((\U_ARGMAX|count_ones[4][14]~q\) # (!\U_ARGMAX|LessThan4~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(14),
	datab => \U_ARGMAX|count_ones[4][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~27_cout\,
	cout => \U_ARGMAX|LessThan4~29_cout\);

-- Location: LCCOMB_X51_Y46_N30
\U_ARGMAX|LessThan4~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~31_cout\ = CARRY((\U_ARGMAX|max_count\(15) & ((!\U_ARGMAX|LessThan4~29_cout\) # (!\U_ARGMAX|count_ones[4][15]~q\))) # (!\U_ARGMAX|max_count\(15) & (!\U_ARGMAX|count_ones[4][15]~q\ & !\U_ARGMAX|LessThan4~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(15),
	datab => \U_ARGMAX|count_ones[4][15]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~29_cout\,
	cout => \U_ARGMAX|LessThan4~31_cout\);

-- Location: LCCOMB_X51_Y45_N0
\U_ARGMAX|LessThan4~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~33_cout\ = CARRY((\U_ARGMAX|count_ones[4][16]~q\ & ((!\U_ARGMAX|LessThan4~31_cout\) # (!\U_ARGMAX|max_count\(16)))) # (!\U_ARGMAX|count_ones[4][16]~q\ & (!\U_ARGMAX|max_count\(16) & !\U_ARGMAX|LessThan4~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][16]~q\,
	datab => \U_ARGMAX|max_count\(16),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~31_cout\,
	cout => \U_ARGMAX|LessThan4~33_cout\);

-- Location: LCCOMB_X51_Y45_N2
\U_ARGMAX|LessThan4~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~35_cout\ = CARRY((\U_ARGMAX|count_ones[4][17]~q\ & (\U_ARGMAX|max_count\(17) & !\U_ARGMAX|LessThan4~33_cout\)) # (!\U_ARGMAX|count_ones[4][17]~q\ & ((\U_ARGMAX|max_count\(17)) # (!\U_ARGMAX|LessThan4~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][17]~q\,
	datab => \U_ARGMAX|max_count\(17),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~33_cout\,
	cout => \U_ARGMAX|LessThan4~35_cout\);

-- Location: LCCOMB_X51_Y45_N4
\U_ARGMAX|LessThan4~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~37_cout\ = CARRY((\U_ARGMAX|max_count\(18) & (\U_ARGMAX|count_ones[4][18]~q\ & !\U_ARGMAX|LessThan4~35_cout\)) # (!\U_ARGMAX|max_count\(18) & ((\U_ARGMAX|count_ones[4][18]~q\) # (!\U_ARGMAX|LessThan4~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(18),
	datab => \U_ARGMAX|count_ones[4][18]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~35_cout\,
	cout => \U_ARGMAX|LessThan4~37_cout\);

-- Location: LCCOMB_X51_Y45_N6
\U_ARGMAX|LessThan4~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~39_cout\ = CARRY((\U_ARGMAX|count_ones[4][19]~q\ & (\U_ARGMAX|max_count\(19) & !\U_ARGMAX|LessThan4~37_cout\)) # (!\U_ARGMAX|count_ones[4][19]~q\ & ((\U_ARGMAX|max_count\(19)) # (!\U_ARGMAX|LessThan4~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][19]~q\,
	datab => \U_ARGMAX|max_count\(19),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~37_cout\,
	cout => \U_ARGMAX|LessThan4~39_cout\);

-- Location: LCCOMB_X51_Y45_N8
\U_ARGMAX|LessThan4~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~41_cout\ = CARRY((\U_ARGMAX|count_ones[4][20]~q\ & ((!\U_ARGMAX|LessThan4~39_cout\) # (!\U_ARGMAX|max_count\(20)))) # (!\U_ARGMAX|count_ones[4][20]~q\ & (!\U_ARGMAX|max_count\(20) & !\U_ARGMAX|LessThan4~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][20]~q\,
	datab => \U_ARGMAX|max_count\(20),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~39_cout\,
	cout => \U_ARGMAX|LessThan4~41_cout\);

-- Location: LCCOMB_X51_Y45_N10
\U_ARGMAX|LessThan4~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~43_cout\ = CARRY((\U_ARGMAX|count_ones[4][21]~q\ & (\U_ARGMAX|max_count\(21) & !\U_ARGMAX|LessThan4~41_cout\)) # (!\U_ARGMAX|count_ones[4][21]~q\ & ((\U_ARGMAX|max_count\(21)) # (!\U_ARGMAX|LessThan4~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][21]~q\,
	datab => \U_ARGMAX|max_count\(21),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~41_cout\,
	cout => \U_ARGMAX|LessThan4~43_cout\);

-- Location: LCCOMB_X51_Y45_N12
\U_ARGMAX|LessThan4~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~45_cout\ = CARRY((\U_ARGMAX|count_ones[4][22]~q\ & ((!\U_ARGMAX|LessThan4~43_cout\) # (!\U_ARGMAX|max_count\(22)))) # (!\U_ARGMAX|count_ones[4][22]~q\ & (!\U_ARGMAX|max_count\(22) & !\U_ARGMAX|LessThan4~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][22]~q\,
	datab => \U_ARGMAX|max_count\(22),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~43_cout\,
	cout => \U_ARGMAX|LessThan4~45_cout\);

-- Location: LCCOMB_X51_Y45_N14
\U_ARGMAX|LessThan4~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~47_cout\ = CARRY((\U_ARGMAX|count_ones[4][23]~q\ & (\U_ARGMAX|max_count\(23) & !\U_ARGMAX|LessThan4~45_cout\)) # (!\U_ARGMAX|count_ones[4][23]~q\ & ((\U_ARGMAX|max_count\(23)) # (!\U_ARGMAX|LessThan4~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][23]~q\,
	datab => \U_ARGMAX|max_count\(23),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~45_cout\,
	cout => \U_ARGMAX|LessThan4~47_cout\);

-- Location: LCCOMB_X51_Y45_N16
\U_ARGMAX|LessThan4~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~49_cout\ = CARRY((\U_ARGMAX|count_ones[4][24]~q\ & ((!\U_ARGMAX|LessThan4~47_cout\) # (!\U_ARGMAX|max_count\(24)))) # (!\U_ARGMAX|count_ones[4][24]~q\ & (!\U_ARGMAX|max_count\(24) & !\U_ARGMAX|LessThan4~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][24]~q\,
	datab => \U_ARGMAX|max_count\(24),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~47_cout\,
	cout => \U_ARGMAX|LessThan4~49_cout\);

-- Location: LCCOMB_X51_Y45_N18
\U_ARGMAX|LessThan4~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~51_cout\ = CARRY((\U_ARGMAX|max_count\(25) & ((!\U_ARGMAX|LessThan4~49_cout\) # (!\U_ARGMAX|count_ones[4][25]~q\))) # (!\U_ARGMAX|max_count\(25) & (!\U_ARGMAX|count_ones[4][25]~q\ & !\U_ARGMAX|LessThan4~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(25),
	datab => \U_ARGMAX|count_ones[4][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~49_cout\,
	cout => \U_ARGMAX|LessThan4~51_cout\);

-- Location: LCCOMB_X51_Y45_N20
\U_ARGMAX|LessThan4~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~53_cout\ = CARRY((\U_ARGMAX|max_count\(26) & (\U_ARGMAX|count_ones[4][26]~q\ & !\U_ARGMAX|LessThan4~51_cout\)) # (!\U_ARGMAX|max_count\(26) & ((\U_ARGMAX|count_ones[4][26]~q\) # (!\U_ARGMAX|LessThan4~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(26),
	datab => \U_ARGMAX|count_ones[4][26]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~51_cout\,
	cout => \U_ARGMAX|LessThan4~53_cout\);

-- Location: LCCOMB_X51_Y45_N22
\U_ARGMAX|LessThan4~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~55_cout\ = CARRY((\U_ARGMAX|max_count\(27) & ((!\U_ARGMAX|LessThan4~53_cout\) # (!\U_ARGMAX|count_ones[4][27]~q\))) # (!\U_ARGMAX|max_count\(27) & (!\U_ARGMAX|count_ones[4][27]~q\ & !\U_ARGMAX|LessThan4~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(27),
	datab => \U_ARGMAX|count_ones[4][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~53_cout\,
	cout => \U_ARGMAX|LessThan4~55_cout\);

-- Location: LCCOMB_X51_Y45_N24
\U_ARGMAX|LessThan4~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~57_cout\ = CARRY((\U_ARGMAX|max_count\(28) & (\U_ARGMAX|count_ones[4][28]~q\ & !\U_ARGMAX|LessThan4~55_cout\)) # (!\U_ARGMAX|max_count\(28) & ((\U_ARGMAX|count_ones[4][28]~q\) # (!\U_ARGMAX|LessThan4~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(28),
	datab => \U_ARGMAX|count_ones[4][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~55_cout\,
	cout => \U_ARGMAX|LessThan4~57_cout\);

-- Location: LCCOMB_X51_Y45_N26
\U_ARGMAX|LessThan4~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~59_cout\ = CARRY((\U_ARGMAX|count_ones[4][29]~q\ & (\U_ARGMAX|max_count\(29) & !\U_ARGMAX|LessThan4~57_cout\)) # (!\U_ARGMAX|count_ones[4][29]~q\ & ((\U_ARGMAX|max_count\(29)) # (!\U_ARGMAX|LessThan4~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][29]~q\,
	datab => \U_ARGMAX|max_count\(29),
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~57_cout\,
	cout => \U_ARGMAX|LessThan4~59_cout\);

-- Location: LCCOMB_X51_Y45_N28
\U_ARGMAX|LessThan4~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~61_cout\ = CARRY((\U_ARGMAX|max_count\(30) & (\U_ARGMAX|count_ones[4][30]~q\ & !\U_ARGMAX|LessThan4~59_cout\)) # (!\U_ARGMAX|max_count\(30) & ((\U_ARGMAX|count_ones[4][30]~q\) # (!\U_ARGMAX|LessThan4~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(30),
	datab => \U_ARGMAX|count_ones[4][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan4~59_cout\,
	cout => \U_ARGMAX|LessThan4~61_cout\);

-- Location: LCCOMB_X51_Y45_N30
\U_ARGMAX|LessThan4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan4~62_combout\ = (\U_ARGMAX|count_ones[4][31]~q\ & (\U_ARGMAX|LessThan4~61_cout\ & \U_ARGMAX|max_count\(31))) # (!\U_ARGMAX|count_ones[4][31]~q\ & ((\U_ARGMAX|LessThan4~61_cout\) # (\U_ARGMAX|max_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][31]~q\,
	datad => \U_ARGMAX|max_count\(31),
	cin => \U_ARGMAX|LessThan4~61_cout\,
	combout => \U_ARGMAX|LessThan4~62_combout\);

-- Location: LCCOMB_X58_Y47_N30
\U_ARGMAX|count_ones[1][31]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|count_ones[1][31]~282_combout\ = \U_ARGMAX|count_ones[1][31]~q\ $ (\U_ARGMAX|count_ones[1][30]~281\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][31]~q\,
	cin => \U_ARGMAX|count_ones[1][30]~281\,
	combout => \U_ARGMAX|count_ones[1][31]~282_combout\);

-- Location: FF_X58_Y47_N31
\U_ARGMAX|count_ones[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|count_ones[1][31]~282_combout\,
	sclr => \U_ARGMAX|count_ones~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|count_ones[1][31]~q\);

-- Location: LCCOMB_X52_Y48_N0
\U_ARGMAX|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~1_cout\ = CARRY((\U_ARGMAX|count_ones[1][0]~q\ & !\U_ARGMAX|max_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][0]~q\,
	datab => \U_ARGMAX|max_count\(0),
	datad => VCC,
	cout => \U_ARGMAX|LessThan1~1_cout\);

-- Location: LCCOMB_X52_Y48_N2
\U_ARGMAX|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~3_cout\ = CARRY((\U_ARGMAX|max_count\(1) & ((!\U_ARGMAX|LessThan1~1_cout\) # (!\U_ARGMAX|count_ones[1][1]~q\))) # (!\U_ARGMAX|max_count\(1) & (!\U_ARGMAX|count_ones[1][1]~q\ & !\U_ARGMAX|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(1),
	datab => \U_ARGMAX|count_ones[1][1]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~1_cout\,
	cout => \U_ARGMAX|LessThan1~3_cout\);

-- Location: LCCOMB_X52_Y48_N4
\U_ARGMAX|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~5_cout\ = CARRY((\U_ARGMAX|max_count\(2) & (\U_ARGMAX|count_ones[1][2]~q\ & !\U_ARGMAX|LessThan1~3_cout\)) # (!\U_ARGMAX|max_count\(2) & ((\U_ARGMAX|count_ones[1][2]~q\) # (!\U_ARGMAX|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(2),
	datab => \U_ARGMAX|count_ones[1][2]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~3_cout\,
	cout => \U_ARGMAX|LessThan1~5_cout\);

-- Location: LCCOMB_X52_Y48_N6
\U_ARGMAX|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~7_cout\ = CARRY((\U_ARGMAX|max_count\(3) & ((!\U_ARGMAX|LessThan1~5_cout\) # (!\U_ARGMAX|count_ones[1][3]~q\))) # (!\U_ARGMAX|max_count\(3) & (!\U_ARGMAX|count_ones[1][3]~q\ & !\U_ARGMAX|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(3),
	datab => \U_ARGMAX|count_ones[1][3]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~5_cout\,
	cout => \U_ARGMAX|LessThan1~7_cout\);

-- Location: LCCOMB_X52_Y48_N8
\U_ARGMAX|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~9_cout\ = CARRY((\U_ARGMAX|count_ones[1][4]~q\ & ((!\U_ARGMAX|LessThan1~7_cout\) # (!\U_ARGMAX|max_count\(4)))) # (!\U_ARGMAX|count_ones[1][4]~q\ & (!\U_ARGMAX|max_count\(4) & !\U_ARGMAX|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][4]~q\,
	datab => \U_ARGMAX|max_count\(4),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~7_cout\,
	cout => \U_ARGMAX|LessThan1~9_cout\);

-- Location: LCCOMB_X52_Y48_N10
\U_ARGMAX|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~11_cout\ = CARRY((\U_ARGMAX|count_ones[1][5]~q\ & (\U_ARGMAX|max_count\(5) & !\U_ARGMAX|LessThan1~9_cout\)) # (!\U_ARGMAX|count_ones[1][5]~q\ & ((\U_ARGMAX|max_count\(5)) # (!\U_ARGMAX|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][5]~q\,
	datab => \U_ARGMAX|max_count\(5),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~9_cout\,
	cout => \U_ARGMAX|LessThan1~11_cout\);

-- Location: LCCOMB_X52_Y48_N12
\U_ARGMAX|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~13_cout\ = CARRY((\U_ARGMAX|max_count\(6) & (\U_ARGMAX|count_ones[1][6]~q\ & !\U_ARGMAX|LessThan1~11_cout\)) # (!\U_ARGMAX|max_count\(6) & ((\U_ARGMAX|count_ones[1][6]~q\) # (!\U_ARGMAX|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(6),
	datab => \U_ARGMAX|count_ones[1][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~11_cout\,
	cout => \U_ARGMAX|LessThan1~13_cout\);

-- Location: LCCOMB_X52_Y48_N14
\U_ARGMAX|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~15_cout\ = CARRY((\U_ARGMAX|max_count\(7) & ((!\U_ARGMAX|LessThan1~13_cout\) # (!\U_ARGMAX|count_ones[1][7]~q\))) # (!\U_ARGMAX|max_count\(7) & (!\U_ARGMAX|count_ones[1][7]~q\ & !\U_ARGMAX|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(7),
	datab => \U_ARGMAX|count_ones[1][7]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~13_cout\,
	cout => \U_ARGMAX|LessThan1~15_cout\);

-- Location: LCCOMB_X52_Y48_N16
\U_ARGMAX|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~17_cout\ = CARRY((\U_ARGMAX|count_ones[1][8]~q\ & ((!\U_ARGMAX|LessThan1~15_cout\) # (!\U_ARGMAX|max_count\(8)))) # (!\U_ARGMAX|count_ones[1][8]~q\ & (!\U_ARGMAX|max_count\(8) & !\U_ARGMAX|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][8]~q\,
	datab => \U_ARGMAX|max_count\(8),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~15_cout\,
	cout => \U_ARGMAX|LessThan1~17_cout\);

-- Location: LCCOMB_X52_Y48_N18
\U_ARGMAX|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~19_cout\ = CARRY((\U_ARGMAX|max_count\(9) & ((!\U_ARGMAX|LessThan1~17_cout\) # (!\U_ARGMAX|count_ones[1][9]~q\))) # (!\U_ARGMAX|max_count\(9) & (!\U_ARGMAX|count_ones[1][9]~q\ & !\U_ARGMAX|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(9),
	datab => \U_ARGMAX|count_ones[1][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~17_cout\,
	cout => \U_ARGMAX|LessThan1~19_cout\);

-- Location: LCCOMB_X52_Y48_N20
\U_ARGMAX|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~21_cout\ = CARRY((\U_ARGMAX|count_ones[1][10]~q\ & ((!\U_ARGMAX|LessThan1~19_cout\) # (!\U_ARGMAX|max_count\(10)))) # (!\U_ARGMAX|count_ones[1][10]~q\ & (!\U_ARGMAX|max_count\(10) & !\U_ARGMAX|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][10]~q\,
	datab => \U_ARGMAX|max_count\(10),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~19_cout\,
	cout => \U_ARGMAX|LessThan1~21_cout\);

-- Location: LCCOMB_X52_Y48_N22
\U_ARGMAX|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~23_cout\ = CARRY((\U_ARGMAX|count_ones[1][11]~q\ & (\U_ARGMAX|max_count\(11) & !\U_ARGMAX|LessThan1~21_cout\)) # (!\U_ARGMAX|count_ones[1][11]~q\ & ((\U_ARGMAX|max_count\(11)) # (!\U_ARGMAX|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][11]~q\,
	datab => \U_ARGMAX|max_count\(11),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~21_cout\,
	cout => \U_ARGMAX|LessThan1~23_cout\);

-- Location: LCCOMB_X52_Y48_N24
\U_ARGMAX|LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~25_cout\ = CARRY((\U_ARGMAX|count_ones[1][12]~q\ & ((!\U_ARGMAX|LessThan1~23_cout\) # (!\U_ARGMAX|max_count\(12)))) # (!\U_ARGMAX|count_ones[1][12]~q\ & (!\U_ARGMAX|max_count\(12) & !\U_ARGMAX|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][12]~q\,
	datab => \U_ARGMAX|max_count\(12),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~23_cout\,
	cout => \U_ARGMAX|LessThan1~25_cout\);

-- Location: LCCOMB_X52_Y48_N26
\U_ARGMAX|LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~27_cout\ = CARRY((\U_ARGMAX|count_ones[1][13]~q\ & (\U_ARGMAX|max_count\(13) & !\U_ARGMAX|LessThan1~25_cout\)) # (!\U_ARGMAX|count_ones[1][13]~q\ & ((\U_ARGMAX|max_count\(13)) # (!\U_ARGMAX|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][13]~q\,
	datab => \U_ARGMAX|max_count\(13),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~25_cout\,
	cout => \U_ARGMAX|LessThan1~27_cout\);

-- Location: LCCOMB_X52_Y48_N28
\U_ARGMAX|LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~29_cout\ = CARRY((\U_ARGMAX|max_count\(14) & (\U_ARGMAX|count_ones[1][14]~q\ & !\U_ARGMAX|LessThan1~27_cout\)) # (!\U_ARGMAX|max_count\(14) & ((\U_ARGMAX|count_ones[1][14]~q\) # (!\U_ARGMAX|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(14),
	datab => \U_ARGMAX|count_ones[1][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~27_cout\,
	cout => \U_ARGMAX|LessThan1~29_cout\);

-- Location: LCCOMB_X52_Y48_N30
\U_ARGMAX|LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~31_cout\ = CARRY((\U_ARGMAX|max_count\(15) & ((!\U_ARGMAX|LessThan1~29_cout\) # (!\U_ARGMAX|count_ones[1][15]~q\))) # (!\U_ARGMAX|max_count\(15) & (!\U_ARGMAX|count_ones[1][15]~q\ & !\U_ARGMAX|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(15),
	datab => \U_ARGMAX|count_ones[1][15]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~29_cout\,
	cout => \U_ARGMAX|LessThan1~31_cout\);

-- Location: LCCOMB_X52_Y47_N0
\U_ARGMAX|LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~33_cout\ = CARRY((\U_ARGMAX|count_ones[1][16]~q\ & ((!\U_ARGMAX|LessThan1~31_cout\) # (!\U_ARGMAX|max_count\(16)))) # (!\U_ARGMAX|count_ones[1][16]~q\ & (!\U_ARGMAX|max_count\(16) & !\U_ARGMAX|LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][16]~q\,
	datab => \U_ARGMAX|max_count\(16),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~31_cout\,
	cout => \U_ARGMAX|LessThan1~33_cout\);

-- Location: LCCOMB_X52_Y47_N2
\U_ARGMAX|LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~35_cout\ = CARRY((\U_ARGMAX|max_count\(17) & ((!\U_ARGMAX|LessThan1~33_cout\) # (!\U_ARGMAX|count_ones[1][17]~q\))) # (!\U_ARGMAX|max_count\(17) & (!\U_ARGMAX|count_ones[1][17]~q\ & !\U_ARGMAX|LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(17),
	datab => \U_ARGMAX|count_ones[1][17]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~33_cout\,
	cout => \U_ARGMAX|LessThan1~35_cout\);

-- Location: LCCOMB_X52_Y47_N4
\U_ARGMAX|LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~37_cout\ = CARRY((\U_ARGMAX|max_count\(18) & (\U_ARGMAX|count_ones[1][18]~q\ & !\U_ARGMAX|LessThan1~35_cout\)) # (!\U_ARGMAX|max_count\(18) & ((\U_ARGMAX|count_ones[1][18]~q\) # (!\U_ARGMAX|LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(18),
	datab => \U_ARGMAX|count_ones[1][18]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~35_cout\,
	cout => \U_ARGMAX|LessThan1~37_cout\);

-- Location: LCCOMB_X52_Y47_N6
\U_ARGMAX|LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~39_cout\ = CARRY((\U_ARGMAX|count_ones[1][19]~q\ & (\U_ARGMAX|max_count\(19) & !\U_ARGMAX|LessThan1~37_cout\)) # (!\U_ARGMAX|count_ones[1][19]~q\ & ((\U_ARGMAX|max_count\(19)) # (!\U_ARGMAX|LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][19]~q\,
	datab => \U_ARGMAX|max_count\(19),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~37_cout\,
	cout => \U_ARGMAX|LessThan1~39_cout\);

-- Location: LCCOMB_X52_Y47_N8
\U_ARGMAX|LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~41_cout\ = CARRY((\U_ARGMAX|max_count\(20) & (\U_ARGMAX|count_ones[1][20]~q\ & !\U_ARGMAX|LessThan1~39_cout\)) # (!\U_ARGMAX|max_count\(20) & ((\U_ARGMAX|count_ones[1][20]~q\) # (!\U_ARGMAX|LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(20),
	datab => \U_ARGMAX|count_ones[1][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~39_cout\,
	cout => \U_ARGMAX|LessThan1~41_cout\);

-- Location: LCCOMB_X52_Y47_N10
\U_ARGMAX|LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~43_cout\ = CARRY((\U_ARGMAX|max_count\(21) & ((!\U_ARGMAX|LessThan1~41_cout\) # (!\U_ARGMAX|count_ones[1][21]~q\))) # (!\U_ARGMAX|max_count\(21) & (!\U_ARGMAX|count_ones[1][21]~q\ & !\U_ARGMAX|LessThan1~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(21),
	datab => \U_ARGMAX|count_ones[1][21]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~41_cout\,
	cout => \U_ARGMAX|LessThan1~43_cout\);

-- Location: LCCOMB_X52_Y47_N12
\U_ARGMAX|LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~45_cout\ = CARRY((\U_ARGMAX|max_count\(22) & (\U_ARGMAX|count_ones[1][22]~q\ & !\U_ARGMAX|LessThan1~43_cout\)) # (!\U_ARGMAX|max_count\(22) & ((\U_ARGMAX|count_ones[1][22]~q\) # (!\U_ARGMAX|LessThan1~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(22),
	datab => \U_ARGMAX|count_ones[1][22]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~43_cout\,
	cout => \U_ARGMAX|LessThan1~45_cout\);

-- Location: LCCOMB_X52_Y47_N14
\U_ARGMAX|LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~47_cout\ = CARRY((\U_ARGMAX|max_count\(23) & ((!\U_ARGMAX|LessThan1~45_cout\) # (!\U_ARGMAX|count_ones[1][23]~q\))) # (!\U_ARGMAX|max_count\(23) & (!\U_ARGMAX|count_ones[1][23]~q\ & !\U_ARGMAX|LessThan1~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(23),
	datab => \U_ARGMAX|count_ones[1][23]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~45_cout\,
	cout => \U_ARGMAX|LessThan1~47_cout\);

-- Location: LCCOMB_X52_Y47_N16
\U_ARGMAX|LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~49_cout\ = CARRY((\U_ARGMAX|count_ones[1][24]~q\ & ((!\U_ARGMAX|LessThan1~47_cout\) # (!\U_ARGMAX|max_count\(24)))) # (!\U_ARGMAX|count_ones[1][24]~q\ & (!\U_ARGMAX|max_count\(24) & !\U_ARGMAX|LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][24]~q\,
	datab => \U_ARGMAX|max_count\(24),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~47_cout\,
	cout => \U_ARGMAX|LessThan1~49_cout\);

-- Location: LCCOMB_X52_Y47_N18
\U_ARGMAX|LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~51_cout\ = CARRY((\U_ARGMAX|count_ones[1][25]~q\ & (\U_ARGMAX|max_count\(25) & !\U_ARGMAX|LessThan1~49_cout\)) # (!\U_ARGMAX|count_ones[1][25]~q\ & ((\U_ARGMAX|max_count\(25)) # (!\U_ARGMAX|LessThan1~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][25]~q\,
	datab => \U_ARGMAX|max_count\(25),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~49_cout\,
	cout => \U_ARGMAX|LessThan1~51_cout\);

-- Location: LCCOMB_X52_Y47_N20
\U_ARGMAX|LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~53_cout\ = CARRY((\U_ARGMAX|count_ones[1][26]~q\ & ((!\U_ARGMAX|LessThan1~51_cout\) # (!\U_ARGMAX|max_count\(26)))) # (!\U_ARGMAX|count_ones[1][26]~q\ & (!\U_ARGMAX|max_count\(26) & !\U_ARGMAX|LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][26]~q\,
	datab => \U_ARGMAX|max_count\(26),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~51_cout\,
	cout => \U_ARGMAX|LessThan1~53_cout\);

-- Location: LCCOMB_X52_Y47_N22
\U_ARGMAX|LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~55_cout\ = CARRY((\U_ARGMAX|max_count\(27) & ((!\U_ARGMAX|LessThan1~53_cout\) # (!\U_ARGMAX|count_ones[1][27]~q\))) # (!\U_ARGMAX|max_count\(27) & (!\U_ARGMAX|count_ones[1][27]~q\ & !\U_ARGMAX|LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(27),
	datab => \U_ARGMAX|count_ones[1][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~53_cout\,
	cout => \U_ARGMAX|LessThan1~55_cout\);

-- Location: LCCOMB_X52_Y47_N24
\U_ARGMAX|LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~57_cout\ = CARRY((\U_ARGMAX|max_count\(28) & (\U_ARGMAX|count_ones[1][28]~q\ & !\U_ARGMAX|LessThan1~55_cout\)) # (!\U_ARGMAX|max_count\(28) & ((\U_ARGMAX|count_ones[1][28]~q\) # (!\U_ARGMAX|LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(28),
	datab => \U_ARGMAX|count_ones[1][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~55_cout\,
	cout => \U_ARGMAX|LessThan1~57_cout\);

-- Location: LCCOMB_X52_Y47_N26
\U_ARGMAX|LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~59_cout\ = CARRY((\U_ARGMAX|count_ones[1][29]~q\ & (\U_ARGMAX|max_count\(29) & !\U_ARGMAX|LessThan1~57_cout\)) # (!\U_ARGMAX|count_ones[1][29]~q\ & ((\U_ARGMAX|max_count\(29)) # (!\U_ARGMAX|LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][29]~q\,
	datab => \U_ARGMAX|max_count\(29),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~57_cout\,
	cout => \U_ARGMAX|LessThan1~59_cout\);

-- Location: LCCOMB_X52_Y47_N28
\U_ARGMAX|LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~61_cout\ = CARRY((\U_ARGMAX|count_ones[1][30]~q\ & ((!\U_ARGMAX|LessThan1~59_cout\) # (!\U_ARGMAX|max_count\(30)))) # (!\U_ARGMAX|count_ones[1][30]~q\ & (!\U_ARGMAX|max_count\(30) & !\U_ARGMAX|LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[1][30]~q\,
	datab => \U_ARGMAX|max_count\(30),
	datad => VCC,
	cin => \U_ARGMAX|LessThan1~59_cout\,
	cout => \U_ARGMAX|LessThan1~61_cout\);

-- Location: LCCOMB_X52_Y47_N30
\U_ARGMAX|LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan1~62_combout\ = (\U_ARGMAX|max_count\(31) & ((\U_ARGMAX|LessThan1~61_cout\) # (!\U_ARGMAX|count_ones[1][31]~q\))) # (!\U_ARGMAX|max_count\(31) & (\U_ARGMAX|LessThan1~61_cout\ & !\U_ARGMAX|count_ones[1][31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_count\(31),
	datad => \U_ARGMAX|count_ones[1][31]~q\,
	cin => \U_ARGMAX|LessThan1~61_cout\,
	combout => \U_ARGMAX|LessThan1~62_combout\);

-- Location: LCCOMB_X50_Y47_N16
\U_ARGMAX|max_count[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[0]~30_combout\ = (!\U_ARGMAX|LessThan4~62_combout\ & (!\U_ARGMAX|LessThan8~62_combout\ & (!\U_ARGMAX|LessThan1~62_combout\ & !\U_ARGMAX|LessThan9~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan4~62_combout\,
	datab => \U_ARGMAX|LessThan8~62_combout\,
	datac => \U_ARGMAX|LessThan1~62_combout\,
	datad => \U_ARGMAX|LessThan9~62_combout\,
	combout => \U_ARGMAX|max_count[0]~30_combout\);

-- Location: FF_X50_Y47_N5
\U_ARGMAX|max_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[30]~1_combout\,
	asdata => \U_ARGMAX|count_ones[4][30]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(30));

-- Location: LCCOMB_X49_Y48_N0
\U_ARGMAX|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~1_cout\ = CARRY((!\U_ARGMAX|max_count\(0) & \U_ARGMAX|count_ones[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(0),
	datab => \U_ARGMAX|count_ones[4][0]~q\,
	datad => VCC,
	cout => \U_ARGMAX|LessThan8~1_cout\);

-- Location: LCCOMB_X49_Y48_N2
\U_ARGMAX|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~3_cout\ = CARRY((\U_ARGMAX|max_count\(1) & ((!\U_ARGMAX|LessThan8~1_cout\) # (!\U_ARGMAX|count_ones[4][1]~q\))) # (!\U_ARGMAX|max_count\(1) & (!\U_ARGMAX|count_ones[4][1]~q\ & !\U_ARGMAX|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(1),
	datab => \U_ARGMAX|count_ones[4][1]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~1_cout\,
	cout => \U_ARGMAX|LessThan8~3_cout\);

-- Location: LCCOMB_X49_Y48_N4
\U_ARGMAX|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~5_cout\ = CARRY((\U_ARGMAX|count_ones[0][2]~q\ & ((!\U_ARGMAX|LessThan8~3_cout\) # (!\U_ARGMAX|max_count\(2)))) # (!\U_ARGMAX|count_ones[0][2]~q\ & (!\U_ARGMAX|max_count\(2) & !\U_ARGMAX|LessThan8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][2]~q\,
	datab => \U_ARGMAX|max_count\(2),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~3_cout\,
	cout => \U_ARGMAX|LessThan8~5_cout\);

-- Location: LCCOMB_X49_Y48_N6
\U_ARGMAX|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~7_cout\ = CARRY((\U_ARGMAX|count_ones[0][3]~q\ & (\U_ARGMAX|max_count\(3) & !\U_ARGMAX|LessThan8~5_cout\)) # (!\U_ARGMAX|count_ones[0][3]~q\ & ((\U_ARGMAX|max_count\(3)) # (!\U_ARGMAX|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][3]~q\,
	datab => \U_ARGMAX|max_count\(3),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~5_cout\,
	cout => \U_ARGMAX|LessThan8~7_cout\);

-- Location: LCCOMB_X49_Y48_N8
\U_ARGMAX|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~9_cout\ = CARRY((\U_ARGMAX|count_ones[0][4]~q\ & ((!\U_ARGMAX|LessThan8~7_cout\) # (!\U_ARGMAX|max_count\(4)))) # (!\U_ARGMAX|count_ones[0][4]~q\ & (!\U_ARGMAX|max_count\(4) & !\U_ARGMAX|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][4]~q\,
	datab => \U_ARGMAX|max_count\(4),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~7_cout\,
	cout => \U_ARGMAX|LessThan8~9_cout\);

-- Location: LCCOMB_X49_Y48_N10
\U_ARGMAX|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~11_cout\ = CARRY((\U_ARGMAX|count_ones[0][5]~q\ & (\U_ARGMAX|max_count\(5) & !\U_ARGMAX|LessThan8~9_cout\)) # (!\U_ARGMAX|count_ones[0][5]~q\ & ((\U_ARGMAX|max_count\(5)) # (!\U_ARGMAX|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][5]~q\,
	datab => \U_ARGMAX|max_count\(5),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~9_cout\,
	cout => \U_ARGMAX|LessThan8~11_cout\);

-- Location: LCCOMB_X49_Y48_N12
\U_ARGMAX|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~13_cout\ = CARRY((\U_ARGMAX|max_count\(6) & (\U_ARGMAX|count_ones[0][6]~q\ & !\U_ARGMAX|LessThan8~11_cout\)) # (!\U_ARGMAX|max_count\(6) & ((\U_ARGMAX|count_ones[0][6]~q\) # (!\U_ARGMAX|LessThan8~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(6),
	datab => \U_ARGMAX|count_ones[0][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~11_cout\,
	cout => \U_ARGMAX|LessThan8~13_cout\);

-- Location: LCCOMB_X49_Y48_N14
\U_ARGMAX|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~15_cout\ = CARRY((\U_ARGMAX|count_ones[0][7]~q\ & (\U_ARGMAX|max_count\(7) & !\U_ARGMAX|LessThan8~13_cout\)) # (!\U_ARGMAX|count_ones[0][7]~q\ & ((\U_ARGMAX|max_count\(7)) # (!\U_ARGMAX|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][7]~q\,
	datab => \U_ARGMAX|max_count\(7),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~13_cout\,
	cout => \U_ARGMAX|LessThan8~15_cout\);

-- Location: LCCOMB_X49_Y48_N16
\U_ARGMAX|LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~17_cout\ = CARRY((\U_ARGMAX|count_ones[0][8]~q\ & ((!\U_ARGMAX|LessThan8~15_cout\) # (!\U_ARGMAX|max_count\(8)))) # (!\U_ARGMAX|count_ones[0][8]~q\ & (!\U_ARGMAX|max_count\(8) & !\U_ARGMAX|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][8]~q\,
	datab => \U_ARGMAX|max_count\(8),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~15_cout\,
	cout => \U_ARGMAX|LessThan8~17_cout\);

-- Location: LCCOMB_X49_Y48_N18
\U_ARGMAX|LessThan8~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~19_cout\ = CARRY((\U_ARGMAX|count_ones[0][9]~q\ & (\U_ARGMAX|max_count\(9) & !\U_ARGMAX|LessThan8~17_cout\)) # (!\U_ARGMAX|count_ones[0][9]~q\ & ((\U_ARGMAX|max_count\(9)) # (!\U_ARGMAX|LessThan8~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][9]~q\,
	datab => \U_ARGMAX|max_count\(9),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~17_cout\,
	cout => \U_ARGMAX|LessThan8~19_cout\);

-- Location: LCCOMB_X49_Y48_N20
\U_ARGMAX|LessThan8~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~21_cout\ = CARRY((\U_ARGMAX|max_count\(10) & (\U_ARGMAX|count_ones[0][10]~q\ & !\U_ARGMAX|LessThan8~19_cout\)) # (!\U_ARGMAX|max_count\(10) & ((\U_ARGMAX|count_ones[0][10]~q\) # (!\U_ARGMAX|LessThan8~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(10),
	datab => \U_ARGMAX|count_ones[0][10]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~19_cout\,
	cout => \U_ARGMAX|LessThan8~21_cout\);

-- Location: LCCOMB_X49_Y48_N22
\U_ARGMAX|LessThan8~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~23_cout\ = CARRY((\U_ARGMAX|count_ones[0][11]~q\ & (\U_ARGMAX|max_count\(11) & !\U_ARGMAX|LessThan8~21_cout\)) # (!\U_ARGMAX|count_ones[0][11]~q\ & ((\U_ARGMAX|max_count\(11)) # (!\U_ARGMAX|LessThan8~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][11]~q\,
	datab => \U_ARGMAX|max_count\(11),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~21_cout\,
	cout => \U_ARGMAX|LessThan8~23_cout\);

-- Location: LCCOMB_X49_Y48_N24
\U_ARGMAX|LessThan8~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~25_cout\ = CARRY((\U_ARGMAX|count_ones[0][12]~q\ & ((!\U_ARGMAX|LessThan8~23_cout\) # (!\U_ARGMAX|max_count\(12)))) # (!\U_ARGMAX|count_ones[0][12]~q\ & (!\U_ARGMAX|max_count\(12) & !\U_ARGMAX|LessThan8~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][12]~q\,
	datab => \U_ARGMAX|max_count\(12),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~23_cout\,
	cout => \U_ARGMAX|LessThan8~25_cout\);

-- Location: LCCOMB_X49_Y48_N26
\U_ARGMAX|LessThan8~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~27_cout\ = CARRY((\U_ARGMAX|count_ones[0][13]~q\ & (\U_ARGMAX|max_count\(13) & !\U_ARGMAX|LessThan8~25_cout\)) # (!\U_ARGMAX|count_ones[0][13]~q\ & ((\U_ARGMAX|max_count\(13)) # (!\U_ARGMAX|LessThan8~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][13]~q\,
	datab => \U_ARGMAX|max_count\(13),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~25_cout\,
	cout => \U_ARGMAX|LessThan8~27_cout\);

-- Location: LCCOMB_X49_Y48_N28
\U_ARGMAX|LessThan8~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~29_cout\ = CARRY((\U_ARGMAX|max_count\(14) & (\U_ARGMAX|count_ones[0][14]~q\ & !\U_ARGMAX|LessThan8~27_cout\)) # (!\U_ARGMAX|max_count\(14) & ((\U_ARGMAX|count_ones[0][14]~q\) # (!\U_ARGMAX|LessThan8~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(14),
	datab => \U_ARGMAX|count_ones[0][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~27_cout\,
	cout => \U_ARGMAX|LessThan8~29_cout\);

-- Location: LCCOMB_X49_Y48_N30
\U_ARGMAX|LessThan8~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~31_cout\ = CARRY((\U_ARGMAX|count_ones[0][15]~q\ & (\U_ARGMAX|max_count\(15) & !\U_ARGMAX|LessThan8~29_cout\)) # (!\U_ARGMAX|count_ones[0][15]~q\ & ((\U_ARGMAX|max_count\(15)) # (!\U_ARGMAX|LessThan8~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][15]~q\,
	datab => \U_ARGMAX|max_count\(15),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~29_cout\,
	cout => \U_ARGMAX|LessThan8~31_cout\);

-- Location: LCCOMB_X49_Y47_N0
\U_ARGMAX|LessThan8~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~33_cout\ = CARRY((\U_ARGMAX|max_count\(16) & (\U_ARGMAX|count_ones[0][16]~q\ & !\U_ARGMAX|LessThan8~31_cout\)) # (!\U_ARGMAX|max_count\(16) & ((\U_ARGMAX|count_ones[0][16]~q\) # (!\U_ARGMAX|LessThan8~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(16),
	datab => \U_ARGMAX|count_ones[0][16]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~31_cout\,
	cout => \U_ARGMAX|LessThan8~33_cout\);

-- Location: LCCOMB_X49_Y47_N2
\U_ARGMAX|LessThan8~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~35_cout\ = CARRY((\U_ARGMAX|count_ones[0][17]~q\ & (\U_ARGMAX|max_count\(17) & !\U_ARGMAX|LessThan8~33_cout\)) # (!\U_ARGMAX|count_ones[0][17]~q\ & ((\U_ARGMAX|max_count\(17)) # (!\U_ARGMAX|LessThan8~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][17]~q\,
	datab => \U_ARGMAX|max_count\(17),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~33_cout\,
	cout => \U_ARGMAX|LessThan8~35_cout\);

-- Location: LCCOMB_X49_Y47_N4
\U_ARGMAX|LessThan8~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~37_cout\ = CARRY((\U_ARGMAX|count_ones[0][18]~q\ & ((!\U_ARGMAX|LessThan8~35_cout\) # (!\U_ARGMAX|max_count\(18)))) # (!\U_ARGMAX|count_ones[0][18]~q\ & (!\U_ARGMAX|max_count\(18) & !\U_ARGMAX|LessThan8~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][18]~q\,
	datab => \U_ARGMAX|max_count\(18),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~35_cout\,
	cout => \U_ARGMAX|LessThan8~37_cout\);

-- Location: LCCOMB_X49_Y47_N6
\U_ARGMAX|LessThan8~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~39_cout\ = CARRY((\U_ARGMAX|count_ones[0][19]~q\ & (\U_ARGMAX|max_count\(19) & !\U_ARGMAX|LessThan8~37_cout\)) # (!\U_ARGMAX|count_ones[0][19]~q\ & ((\U_ARGMAX|max_count\(19)) # (!\U_ARGMAX|LessThan8~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][19]~q\,
	datab => \U_ARGMAX|max_count\(19),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~37_cout\,
	cout => \U_ARGMAX|LessThan8~39_cout\);

-- Location: LCCOMB_X49_Y47_N8
\U_ARGMAX|LessThan8~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~41_cout\ = CARRY((\U_ARGMAX|max_count\(20) & (\U_ARGMAX|count_ones[0][20]~q\ & !\U_ARGMAX|LessThan8~39_cout\)) # (!\U_ARGMAX|max_count\(20) & ((\U_ARGMAX|count_ones[0][20]~q\) # (!\U_ARGMAX|LessThan8~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(20),
	datab => \U_ARGMAX|count_ones[0][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~39_cout\,
	cout => \U_ARGMAX|LessThan8~41_cout\);

-- Location: LCCOMB_X49_Y47_N10
\U_ARGMAX|LessThan8~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~43_cout\ = CARRY((\U_ARGMAX|max_count\(21) & ((!\U_ARGMAX|LessThan8~41_cout\) # (!\U_ARGMAX|count_ones[0][21]~q\))) # (!\U_ARGMAX|max_count\(21) & (!\U_ARGMAX|count_ones[0][21]~q\ & !\U_ARGMAX|LessThan8~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(21),
	datab => \U_ARGMAX|count_ones[0][21]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~41_cout\,
	cout => \U_ARGMAX|LessThan8~43_cout\);

-- Location: LCCOMB_X49_Y47_N12
\U_ARGMAX|LessThan8~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~45_cout\ = CARRY((\U_ARGMAX|count_ones[0][22]~q\ & ((!\U_ARGMAX|LessThan8~43_cout\) # (!\U_ARGMAX|max_count\(22)))) # (!\U_ARGMAX|count_ones[0][22]~q\ & (!\U_ARGMAX|max_count\(22) & !\U_ARGMAX|LessThan8~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][22]~q\,
	datab => \U_ARGMAX|max_count\(22),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~43_cout\,
	cout => \U_ARGMAX|LessThan8~45_cout\);

-- Location: LCCOMB_X49_Y47_N14
\U_ARGMAX|LessThan8~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~47_cout\ = CARRY((\U_ARGMAX|count_ones[0][23]~q\ & (\U_ARGMAX|max_count\(23) & !\U_ARGMAX|LessThan8~45_cout\)) # (!\U_ARGMAX|count_ones[0][23]~q\ & ((\U_ARGMAX|max_count\(23)) # (!\U_ARGMAX|LessThan8~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][23]~q\,
	datab => \U_ARGMAX|max_count\(23),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~45_cout\,
	cout => \U_ARGMAX|LessThan8~47_cout\);

-- Location: LCCOMB_X49_Y47_N16
\U_ARGMAX|LessThan8~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~49_cout\ = CARRY((\U_ARGMAX|count_ones[0][24]~q\ & ((!\U_ARGMAX|LessThan8~47_cout\) # (!\U_ARGMAX|max_count\(24)))) # (!\U_ARGMAX|count_ones[0][24]~q\ & (!\U_ARGMAX|max_count\(24) & !\U_ARGMAX|LessThan8~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][24]~q\,
	datab => \U_ARGMAX|max_count\(24),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~47_cout\,
	cout => \U_ARGMAX|LessThan8~49_cout\);

-- Location: LCCOMB_X49_Y47_N18
\U_ARGMAX|LessThan8~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~51_cout\ = CARRY((\U_ARGMAX|max_count\(25) & ((!\U_ARGMAX|LessThan8~49_cout\) # (!\U_ARGMAX|count_ones[0][25]~q\))) # (!\U_ARGMAX|max_count\(25) & (!\U_ARGMAX|count_ones[0][25]~q\ & !\U_ARGMAX|LessThan8~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(25),
	datab => \U_ARGMAX|count_ones[0][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~49_cout\,
	cout => \U_ARGMAX|LessThan8~51_cout\);

-- Location: LCCOMB_X49_Y47_N20
\U_ARGMAX|LessThan8~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~53_cout\ = CARRY((\U_ARGMAX|max_count\(26) & (\U_ARGMAX|count_ones[0][26]~q\ & !\U_ARGMAX|LessThan8~51_cout\)) # (!\U_ARGMAX|max_count\(26) & ((\U_ARGMAX|count_ones[0][26]~q\) # (!\U_ARGMAX|LessThan8~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(26),
	datab => \U_ARGMAX|count_ones[0][26]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~51_cout\,
	cout => \U_ARGMAX|LessThan8~53_cout\);

-- Location: LCCOMB_X49_Y47_N22
\U_ARGMAX|LessThan8~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~55_cout\ = CARRY((\U_ARGMAX|count_ones[0][27]~q\ & (\U_ARGMAX|max_count\(27) & !\U_ARGMAX|LessThan8~53_cout\)) # (!\U_ARGMAX|count_ones[0][27]~q\ & ((\U_ARGMAX|max_count\(27)) # (!\U_ARGMAX|LessThan8~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][27]~q\,
	datab => \U_ARGMAX|max_count\(27),
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~53_cout\,
	cout => \U_ARGMAX|LessThan8~55_cout\);

-- Location: LCCOMB_X49_Y47_N24
\U_ARGMAX|LessThan8~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~57_cout\ = CARRY((\U_ARGMAX|max_count\(28) & (\U_ARGMAX|count_ones[0][28]~q\ & !\U_ARGMAX|LessThan8~55_cout\)) # (!\U_ARGMAX|max_count\(28) & ((\U_ARGMAX|count_ones[0][28]~q\) # (!\U_ARGMAX|LessThan8~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(28),
	datab => \U_ARGMAX|count_ones[0][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~55_cout\,
	cout => \U_ARGMAX|LessThan8~57_cout\);

-- Location: LCCOMB_X49_Y47_N26
\U_ARGMAX|LessThan8~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~59_cout\ = CARRY((\U_ARGMAX|max_count\(29) & ((!\U_ARGMAX|LessThan8~57_cout\) # (!\U_ARGMAX|count_ones[0][29]~q\))) # (!\U_ARGMAX|max_count\(29) & (!\U_ARGMAX|count_ones[0][29]~q\ & !\U_ARGMAX|LessThan8~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(29),
	datab => \U_ARGMAX|count_ones[0][29]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~57_cout\,
	cout => \U_ARGMAX|LessThan8~59_cout\);

-- Location: LCCOMB_X49_Y47_N28
\U_ARGMAX|LessThan8~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~61_cout\ = CARRY((\U_ARGMAX|max_count\(30) & (\U_ARGMAX|count_ones[0][30]~q\ & !\U_ARGMAX|LessThan8~59_cout\)) # (!\U_ARGMAX|max_count\(30) & ((\U_ARGMAX|count_ones[0][30]~q\) # (!\U_ARGMAX|LessThan8~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(30),
	datab => \U_ARGMAX|count_ones[0][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan8~59_cout\,
	cout => \U_ARGMAX|LessThan8~61_cout\);

-- Location: LCCOMB_X49_Y47_N30
\U_ARGMAX|LessThan8~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan8~62_combout\ = (\U_ARGMAX|count_ones[0][31]~q\ & (\U_ARGMAX|LessThan8~61_cout\ & \U_ARGMAX|max_count\(31))) # (!\U_ARGMAX|count_ones[0][31]~q\ & ((\U_ARGMAX|LessThan8~61_cout\) # (\U_ARGMAX|max_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[0][31]~q\,
	datad => \U_ARGMAX|max_count\(31),
	cin => \U_ARGMAX|LessThan8~61_cout\,
	combout => \U_ARGMAX|LessThan8~62_combout\);

-- Location: LCCOMB_X51_Y47_N6
\U_ARGMAX|max_count[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[31]~0_combout\ = (\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|count_ones[0][31]~q\)) # (!\U_ARGMAX|LessThan8~62_combout\ & ((\U_ARGMAX|LessThan9~62_combout\ & (\U_ARGMAX|count_ones[0][31]~q\)) # (!\U_ARGMAX|LessThan9~62_combout\ & 
-- ((\U_ARGMAX|count_ones[1][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|count_ones[0][31]~q\,
	datac => \U_ARGMAX|LessThan9~62_combout\,
	datad => \U_ARGMAX|count_ones[1][31]~q\,
	combout => \U_ARGMAX|max_count[31]~0_combout\);

-- Location: LCCOMB_X51_Y47_N20
\U_ARGMAX|max_count[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_count[31]~feeder_combout\ = \U_ARGMAX|max_count[31]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_count[31]~0_combout\,
	combout => \U_ARGMAX|max_count[31]~feeder_combout\);

-- Location: FF_X51_Y47_N21
\U_ARGMAX|max_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_count[31]~feeder_combout\,
	asdata => \U_ARGMAX|count_ones[4][31]~q\,
	sclr => \U_ARGMAX|max_count[0]~30_combout\,
	sload => \U_ARGMAX|max_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_count\(31));

-- Location: LCCOMB_X49_Y46_N0
\U_ARGMAX|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~1_cout\ = CARRY((!\U_ARGMAX|max_count\(0) & \U_ARGMAX|count_ones[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(0),
	datab => \U_ARGMAX|count_ones[4][0]~q\,
	datad => VCC,
	cout => \U_ARGMAX|LessThan9~1_cout\);

-- Location: LCCOMB_X49_Y46_N2
\U_ARGMAX|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~3_cout\ = CARRY((\U_ARGMAX|count_ones[4][1]~q\ & (\U_ARGMAX|max_count\(1) & !\U_ARGMAX|LessThan9~1_cout\)) # (!\U_ARGMAX|count_ones[4][1]~q\ & ((\U_ARGMAX|max_count\(1)) # (!\U_ARGMAX|LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][1]~q\,
	datab => \U_ARGMAX|max_count\(1),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~1_cout\,
	cout => \U_ARGMAX|LessThan9~3_cout\);

-- Location: LCCOMB_X49_Y46_N4
\U_ARGMAX|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~5_cout\ = CARRY((\U_ARGMAX|count_ones[4][2]~q\ & ((!\U_ARGMAX|LessThan9~3_cout\) # (!\U_ARGMAX|max_count\(2)))) # (!\U_ARGMAX|count_ones[4][2]~q\ & (!\U_ARGMAX|max_count\(2) & !\U_ARGMAX|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][2]~q\,
	datab => \U_ARGMAX|max_count\(2),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~3_cout\,
	cout => \U_ARGMAX|LessThan9~5_cout\);

-- Location: LCCOMB_X49_Y46_N6
\U_ARGMAX|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~7_cout\ = CARRY((\U_ARGMAX|count_ones[4][3]~q\ & (\U_ARGMAX|max_count\(3) & !\U_ARGMAX|LessThan9~5_cout\)) # (!\U_ARGMAX|count_ones[4][3]~q\ & ((\U_ARGMAX|max_count\(3)) # (!\U_ARGMAX|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][3]~q\,
	datab => \U_ARGMAX|max_count\(3),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~5_cout\,
	cout => \U_ARGMAX|LessThan9~7_cout\);

-- Location: LCCOMB_X49_Y46_N8
\U_ARGMAX|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~9_cout\ = CARRY((\U_ARGMAX|max_count\(4) & (\U_ARGMAX|count_ones[4][4]~q\ & !\U_ARGMAX|LessThan9~7_cout\)) # (!\U_ARGMAX|max_count\(4) & ((\U_ARGMAX|count_ones[4][4]~q\) # (!\U_ARGMAX|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(4),
	datab => \U_ARGMAX|count_ones[4][4]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~7_cout\,
	cout => \U_ARGMAX|LessThan9~9_cout\);

-- Location: LCCOMB_X49_Y46_N10
\U_ARGMAX|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~11_cout\ = CARRY((\U_ARGMAX|max_count\(5) & ((!\U_ARGMAX|LessThan9~9_cout\) # (!\U_ARGMAX|count_ones[4][5]~q\))) # (!\U_ARGMAX|max_count\(5) & (!\U_ARGMAX|count_ones[4][5]~q\ & !\U_ARGMAX|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(5),
	datab => \U_ARGMAX|count_ones[4][5]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~9_cout\,
	cout => \U_ARGMAX|LessThan9~11_cout\);

-- Location: LCCOMB_X49_Y46_N12
\U_ARGMAX|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~13_cout\ = CARRY((\U_ARGMAX|max_count\(6) & (\U_ARGMAX|count_ones[4][6]~q\ & !\U_ARGMAX|LessThan9~11_cout\)) # (!\U_ARGMAX|max_count\(6) & ((\U_ARGMAX|count_ones[4][6]~q\) # (!\U_ARGMAX|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(6),
	datab => \U_ARGMAX|count_ones[4][6]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~11_cout\,
	cout => \U_ARGMAX|LessThan9~13_cout\);

-- Location: LCCOMB_X49_Y46_N14
\U_ARGMAX|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~15_cout\ = CARRY((\U_ARGMAX|max_count\(7) & ((!\U_ARGMAX|LessThan9~13_cout\) # (!\U_ARGMAX|count_ones[4][7]~q\))) # (!\U_ARGMAX|max_count\(7) & (!\U_ARGMAX|count_ones[4][7]~q\ & !\U_ARGMAX|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(7),
	datab => \U_ARGMAX|count_ones[4][7]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~13_cout\,
	cout => \U_ARGMAX|LessThan9~15_cout\);

-- Location: LCCOMB_X49_Y46_N16
\U_ARGMAX|LessThan9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~17_cout\ = CARRY((\U_ARGMAX|count_ones[4][8]~q\ & ((!\U_ARGMAX|LessThan9~15_cout\) # (!\U_ARGMAX|max_count\(8)))) # (!\U_ARGMAX|count_ones[4][8]~q\ & (!\U_ARGMAX|max_count\(8) & !\U_ARGMAX|LessThan9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][8]~q\,
	datab => \U_ARGMAX|max_count\(8),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~15_cout\,
	cout => \U_ARGMAX|LessThan9~17_cout\);

-- Location: LCCOMB_X49_Y46_N18
\U_ARGMAX|LessThan9~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~19_cout\ = CARRY((\U_ARGMAX|max_count\(9) & ((!\U_ARGMAX|LessThan9~17_cout\) # (!\U_ARGMAX|count_ones[4][9]~q\))) # (!\U_ARGMAX|max_count\(9) & (!\U_ARGMAX|count_ones[4][9]~q\ & !\U_ARGMAX|LessThan9~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(9),
	datab => \U_ARGMAX|count_ones[4][9]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~17_cout\,
	cout => \U_ARGMAX|LessThan9~19_cout\);

-- Location: LCCOMB_X49_Y46_N20
\U_ARGMAX|LessThan9~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~21_cout\ = CARRY((\U_ARGMAX|count_ones[4][10]~q\ & ((!\U_ARGMAX|LessThan9~19_cout\) # (!\U_ARGMAX|max_count\(10)))) # (!\U_ARGMAX|count_ones[4][10]~q\ & (!\U_ARGMAX|max_count\(10) & !\U_ARGMAX|LessThan9~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][10]~q\,
	datab => \U_ARGMAX|max_count\(10),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~19_cout\,
	cout => \U_ARGMAX|LessThan9~21_cout\);

-- Location: LCCOMB_X49_Y46_N22
\U_ARGMAX|LessThan9~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~23_cout\ = CARRY((\U_ARGMAX|count_ones[4][11]~q\ & (\U_ARGMAX|max_count\(11) & !\U_ARGMAX|LessThan9~21_cout\)) # (!\U_ARGMAX|count_ones[4][11]~q\ & ((\U_ARGMAX|max_count\(11)) # (!\U_ARGMAX|LessThan9~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][11]~q\,
	datab => \U_ARGMAX|max_count\(11),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~21_cout\,
	cout => \U_ARGMAX|LessThan9~23_cout\);

-- Location: LCCOMB_X49_Y46_N24
\U_ARGMAX|LessThan9~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~25_cout\ = CARRY((\U_ARGMAX|max_count\(12) & (\U_ARGMAX|count_ones[4][12]~q\ & !\U_ARGMAX|LessThan9~23_cout\)) # (!\U_ARGMAX|max_count\(12) & ((\U_ARGMAX|count_ones[4][12]~q\) # (!\U_ARGMAX|LessThan9~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(12),
	datab => \U_ARGMAX|count_ones[4][12]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~23_cout\,
	cout => \U_ARGMAX|LessThan9~25_cout\);

-- Location: LCCOMB_X49_Y46_N26
\U_ARGMAX|LessThan9~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~27_cout\ = CARRY((\U_ARGMAX|max_count\(13) & ((!\U_ARGMAX|LessThan9~25_cout\) # (!\U_ARGMAX|count_ones[4][13]~q\))) # (!\U_ARGMAX|max_count\(13) & (!\U_ARGMAX|count_ones[4][13]~q\ & !\U_ARGMAX|LessThan9~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(13),
	datab => \U_ARGMAX|count_ones[4][13]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~25_cout\,
	cout => \U_ARGMAX|LessThan9~27_cout\);

-- Location: LCCOMB_X49_Y46_N28
\U_ARGMAX|LessThan9~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~29_cout\ = CARRY((\U_ARGMAX|max_count\(14) & (\U_ARGMAX|count_ones[4][14]~q\ & !\U_ARGMAX|LessThan9~27_cout\)) # (!\U_ARGMAX|max_count\(14) & ((\U_ARGMAX|count_ones[4][14]~q\) # (!\U_ARGMAX|LessThan9~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(14),
	datab => \U_ARGMAX|count_ones[4][14]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~27_cout\,
	cout => \U_ARGMAX|LessThan9~29_cout\);

-- Location: LCCOMB_X49_Y46_N30
\U_ARGMAX|LessThan9~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~31_cout\ = CARRY((\U_ARGMAX|count_ones[4][15]~q\ & (\U_ARGMAX|max_count\(15) & !\U_ARGMAX|LessThan9~29_cout\)) # (!\U_ARGMAX|count_ones[4][15]~q\ & ((\U_ARGMAX|max_count\(15)) # (!\U_ARGMAX|LessThan9~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][15]~q\,
	datab => \U_ARGMAX|max_count\(15),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~29_cout\,
	cout => \U_ARGMAX|LessThan9~31_cout\);

-- Location: LCCOMB_X49_Y45_N0
\U_ARGMAX|LessThan9~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~33_cout\ = CARRY((\U_ARGMAX|count_ones[4][16]~q\ & ((!\U_ARGMAX|LessThan9~31_cout\) # (!\U_ARGMAX|max_count\(16)))) # (!\U_ARGMAX|count_ones[4][16]~q\ & (!\U_ARGMAX|max_count\(16) & !\U_ARGMAX|LessThan9~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][16]~q\,
	datab => \U_ARGMAX|max_count\(16),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~31_cout\,
	cout => \U_ARGMAX|LessThan9~33_cout\);

-- Location: LCCOMB_X49_Y45_N2
\U_ARGMAX|LessThan9~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~35_cout\ = CARRY((\U_ARGMAX|count_ones[4][17]~q\ & (\U_ARGMAX|max_count\(17) & !\U_ARGMAX|LessThan9~33_cout\)) # (!\U_ARGMAX|count_ones[4][17]~q\ & ((\U_ARGMAX|max_count\(17)) # (!\U_ARGMAX|LessThan9~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][17]~q\,
	datab => \U_ARGMAX|max_count\(17),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~33_cout\,
	cout => \U_ARGMAX|LessThan9~35_cout\);

-- Location: LCCOMB_X49_Y45_N4
\U_ARGMAX|LessThan9~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~37_cout\ = CARRY((\U_ARGMAX|count_ones[4][18]~q\ & ((!\U_ARGMAX|LessThan9~35_cout\) # (!\U_ARGMAX|max_count\(18)))) # (!\U_ARGMAX|count_ones[4][18]~q\ & (!\U_ARGMAX|max_count\(18) & !\U_ARGMAX|LessThan9~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][18]~q\,
	datab => \U_ARGMAX|max_count\(18),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~35_cout\,
	cout => \U_ARGMAX|LessThan9~37_cout\);

-- Location: LCCOMB_X49_Y45_N6
\U_ARGMAX|LessThan9~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~39_cout\ = CARRY((\U_ARGMAX|count_ones[4][19]~q\ & (\U_ARGMAX|max_count\(19) & !\U_ARGMAX|LessThan9~37_cout\)) # (!\U_ARGMAX|count_ones[4][19]~q\ & ((\U_ARGMAX|max_count\(19)) # (!\U_ARGMAX|LessThan9~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][19]~q\,
	datab => \U_ARGMAX|max_count\(19),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~37_cout\,
	cout => \U_ARGMAX|LessThan9~39_cout\);

-- Location: LCCOMB_X49_Y45_N8
\U_ARGMAX|LessThan9~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~41_cout\ = CARRY((\U_ARGMAX|max_count\(20) & (\U_ARGMAX|count_ones[4][20]~q\ & !\U_ARGMAX|LessThan9~39_cout\)) # (!\U_ARGMAX|max_count\(20) & ((\U_ARGMAX|count_ones[4][20]~q\) # (!\U_ARGMAX|LessThan9~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(20),
	datab => \U_ARGMAX|count_ones[4][20]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~39_cout\,
	cout => \U_ARGMAX|LessThan9~41_cout\);

-- Location: LCCOMB_X49_Y45_N10
\U_ARGMAX|LessThan9~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~43_cout\ = CARRY((\U_ARGMAX|count_ones[4][21]~q\ & (\U_ARGMAX|max_count\(21) & !\U_ARGMAX|LessThan9~41_cout\)) # (!\U_ARGMAX|count_ones[4][21]~q\ & ((\U_ARGMAX|max_count\(21)) # (!\U_ARGMAX|LessThan9~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][21]~q\,
	datab => \U_ARGMAX|max_count\(21),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~41_cout\,
	cout => \U_ARGMAX|LessThan9~43_cout\);

-- Location: LCCOMB_X49_Y45_N12
\U_ARGMAX|LessThan9~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~45_cout\ = CARRY((\U_ARGMAX|max_count\(22) & (\U_ARGMAX|count_ones[4][22]~q\ & !\U_ARGMAX|LessThan9~43_cout\)) # (!\U_ARGMAX|max_count\(22) & ((\U_ARGMAX|count_ones[4][22]~q\) # (!\U_ARGMAX|LessThan9~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(22),
	datab => \U_ARGMAX|count_ones[4][22]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~43_cout\,
	cout => \U_ARGMAX|LessThan9~45_cout\);

-- Location: LCCOMB_X49_Y45_N14
\U_ARGMAX|LessThan9~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~47_cout\ = CARRY((\U_ARGMAX|count_ones[4][23]~q\ & (\U_ARGMAX|max_count\(23) & !\U_ARGMAX|LessThan9~45_cout\)) # (!\U_ARGMAX|count_ones[4][23]~q\ & ((\U_ARGMAX|max_count\(23)) # (!\U_ARGMAX|LessThan9~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][23]~q\,
	datab => \U_ARGMAX|max_count\(23),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~45_cout\,
	cout => \U_ARGMAX|LessThan9~47_cout\);

-- Location: LCCOMB_X49_Y45_N16
\U_ARGMAX|LessThan9~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~49_cout\ = CARRY((\U_ARGMAX|count_ones[4][24]~q\ & ((!\U_ARGMAX|LessThan9~47_cout\) # (!\U_ARGMAX|max_count\(24)))) # (!\U_ARGMAX|count_ones[4][24]~q\ & (!\U_ARGMAX|max_count\(24) & !\U_ARGMAX|LessThan9~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][24]~q\,
	datab => \U_ARGMAX|max_count\(24),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~47_cout\,
	cout => \U_ARGMAX|LessThan9~49_cout\);

-- Location: LCCOMB_X49_Y45_N18
\U_ARGMAX|LessThan9~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~51_cout\ = CARRY((\U_ARGMAX|max_count\(25) & ((!\U_ARGMAX|LessThan9~49_cout\) # (!\U_ARGMAX|count_ones[4][25]~q\))) # (!\U_ARGMAX|max_count\(25) & (!\U_ARGMAX|count_ones[4][25]~q\ & !\U_ARGMAX|LessThan9~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(25),
	datab => \U_ARGMAX|count_ones[4][25]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~49_cout\,
	cout => \U_ARGMAX|LessThan9~51_cout\);

-- Location: LCCOMB_X49_Y45_N20
\U_ARGMAX|LessThan9~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~53_cout\ = CARRY((\U_ARGMAX|count_ones[4][26]~q\ & ((!\U_ARGMAX|LessThan9~51_cout\) # (!\U_ARGMAX|max_count\(26)))) # (!\U_ARGMAX|count_ones[4][26]~q\ & (!\U_ARGMAX|max_count\(26) & !\U_ARGMAX|LessThan9~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][26]~q\,
	datab => \U_ARGMAX|max_count\(26),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~51_cout\,
	cout => \U_ARGMAX|LessThan9~53_cout\);

-- Location: LCCOMB_X49_Y45_N22
\U_ARGMAX|LessThan9~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~55_cout\ = CARRY((\U_ARGMAX|max_count\(27) & ((!\U_ARGMAX|LessThan9~53_cout\) # (!\U_ARGMAX|count_ones[4][27]~q\))) # (!\U_ARGMAX|max_count\(27) & (!\U_ARGMAX|count_ones[4][27]~q\ & !\U_ARGMAX|LessThan9~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(27),
	datab => \U_ARGMAX|count_ones[4][27]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~53_cout\,
	cout => \U_ARGMAX|LessThan9~55_cout\);

-- Location: LCCOMB_X49_Y45_N24
\U_ARGMAX|LessThan9~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~57_cout\ = CARRY((\U_ARGMAX|max_count\(28) & (\U_ARGMAX|count_ones[4][28]~q\ & !\U_ARGMAX|LessThan9~55_cout\)) # (!\U_ARGMAX|max_count\(28) & ((\U_ARGMAX|count_ones[4][28]~q\) # (!\U_ARGMAX|LessThan9~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(28),
	datab => \U_ARGMAX|count_ones[4][28]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~55_cout\,
	cout => \U_ARGMAX|LessThan9~57_cout\);

-- Location: LCCOMB_X49_Y45_N26
\U_ARGMAX|LessThan9~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~59_cout\ = CARRY((\U_ARGMAX|count_ones[4][29]~q\ & (\U_ARGMAX|max_count\(29) & !\U_ARGMAX|LessThan9~57_cout\)) # (!\U_ARGMAX|count_ones[4][29]~q\ & ((\U_ARGMAX|max_count\(29)) # (!\U_ARGMAX|LessThan9~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|count_ones[4][29]~q\,
	datab => \U_ARGMAX|max_count\(29),
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~57_cout\,
	cout => \U_ARGMAX|LessThan9~59_cout\);

-- Location: LCCOMB_X49_Y45_N28
\U_ARGMAX|LessThan9~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~61_cout\ = CARRY((\U_ARGMAX|max_count\(30) & (\U_ARGMAX|count_ones[4][30]~q\ & !\U_ARGMAX|LessThan9~59_cout\)) # (!\U_ARGMAX|max_count\(30) & ((\U_ARGMAX|count_ones[4][30]~q\) # (!\U_ARGMAX|LessThan9~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|max_count\(30),
	datab => \U_ARGMAX|count_ones[4][30]~q\,
	datad => VCC,
	cin => \U_ARGMAX|LessThan9~59_cout\,
	cout => \U_ARGMAX|LessThan9~61_cout\);

-- Location: LCCOMB_X49_Y45_N30
\U_ARGMAX|LessThan9~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|LessThan9~62_combout\ = (\U_ARGMAX|count_ones[4][31]~q\ & (\U_ARGMAX|LessThan9~61_cout\ & \U_ARGMAX|max_count\(31))) # (!\U_ARGMAX|count_ones[4][31]~q\ & ((\U_ARGMAX|LessThan9~61_cout\) # (\U_ARGMAX|max_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|count_ones[4][31]~q\,
	datad => \U_ARGMAX|max_count\(31),
	cin => \U_ARGMAX|LessThan9~61_cout\,
	combout => \U_ARGMAX|LessThan9~62_combout\);

-- Location: LCCOMB_X52_Y46_N28
\U_ARGMAX|max_index~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_index~0_combout\ = (!\U_ARGMAX|LessThan9~62_combout\ & (!\U_ARGMAX|LessThan8~62_combout\ & \U_ARGMAX|LessThan4~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|LessThan9~62_combout\,
	datac => \U_ARGMAX|LessThan8~62_combout\,
	datad => \U_ARGMAX|LessThan4~62_combout\,
	combout => \U_ARGMAX|max_index~0_combout\);

-- Location: FF_X52_Y46_N29
\U_ARGMAX|max_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_index~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_index\(2));

-- Location: LCCOMB_X51_Y47_N4
\U_ARGMAX|max_index~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_index~1_combout\ = (\U_ARGMAX|LessThan9~62_combout\) # ((!\U_ARGMAX|LessThan8~62_combout\ & (\U_ARGMAX|LessThan1~62_combout\ & !\U_ARGMAX|LessThan4~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ARGMAX|LessThan8~62_combout\,
	datab => \U_ARGMAX|LessThan9~62_combout\,
	datac => \U_ARGMAX|LessThan1~62_combout\,
	datad => \U_ARGMAX|LessThan4~62_combout\,
	combout => \U_ARGMAX|max_index~1_combout\);

-- Location: FF_X51_Y47_N5
\U_ARGMAX|max_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_index~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_index\(0));

-- Location: LCCOMB_X52_Y46_N18
\U_ARGMAX|max_index[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|max_index[3]~3_combout\ = !\U_ARGMAX|max_index~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ARGMAX|max_index~2_combout\,
	combout => \U_ARGMAX|max_index[3]~3_combout\);

-- Location: FF_X52_Y46_N19
\U_ARGMAX|max_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|max_index[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|max_index\(3));

-- Location: LCCOMB_X52_Y46_N12
\U_ARGMAX|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~0_combout\ = (!\U_ARGMAX|max_index\(2) & (!\U_ARGMAX|max_index\(0) & !\U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~0_combout\);

-- Location: FF_X52_Y46_N13
\U_ARGMAX|one_hot_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(0));

-- Location: LCCOMB_X52_Y46_N2
\U_ARGMAX|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~1_combout\ = (!\U_ARGMAX|max_index\(2) & (\U_ARGMAX|max_index\(0) & !\U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~1_combout\);

-- Location: FF_X52_Y46_N3
\U_ARGMAX|one_hot_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(1));

-- Location: LCCOMB_X52_Y46_N16
\U_ARGMAX|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~2_combout\ = (\U_ARGMAX|max_index\(2) & (!\U_ARGMAX|max_index\(0) & !\U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~2_combout\);

-- Location: FF_X52_Y46_N17
\U_ARGMAX|one_hot_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(4));

-- Location: LCCOMB_X52_Y46_N26
\U_ARGMAX|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~3_combout\ = (\U_ARGMAX|max_index\(2) & (\U_ARGMAX|max_index\(0) & !\U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~3_combout\);

-- Location: FF_X52_Y46_N27
\U_ARGMAX|one_hot_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(5));

-- Location: LCCOMB_X52_Y46_N4
\U_ARGMAX|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~4_combout\ = (!\U_ARGMAX|max_index\(2) & (!\U_ARGMAX|max_index\(0) & \U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~4_combout\);

-- Location: FF_X52_Y46_N5
\U_ARGMAX|one_hot_output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(8));

-- Location: LCCOMB_X52_Y46_N22
\U_ARGMAX|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ARGMAX|Decoder0~5_combout\ = (!\U_ARGMAX|max_index\(2) & (\U_ARGMAX|max_index\(0) & \U_ARGMAX|max_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ARGMAX|max_index\(2),
	datac => \U_ARGMAX|max_index\(0),
	datad => \U_ARGMAX|max_index\(3),
	combout => \U_ARGMAX|Decoder0~5_combout\);

-- Location: FF_X52_Y46_N23
\U_ARGMAX|one_hot_output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ARGMAX|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ARGMAX|one_hot_output\(9));

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
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

ww_outputs(0) <= \outputs[0]~output_o\;

ww_outputs(1) <= \outputs[1]~output_o\;

ww_outputs(2) <= \outputs[2]~output_o\;

ww_outputs(3) <= \outputs[3]~output_o\;

ww_outputs(4) <= \outputs[4]~output_o\;

ww_outputs(5) <= \outputs[5]~output_o\;

ww_outputs(6) <= \outputs[6]~output_o\;

ww_outputs(7) <= \outputs[7]~output_o\;

ww_outputs(8) <= \outputs[8]~output_o\;

ww_outputs(9) <= \outputs[9]~output_o\;
END structure;


