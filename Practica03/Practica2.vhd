-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"
-- CREATED		"Wed Sep  6 13:46:41 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Practica2 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		dip_1 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_2 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_3 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		dip_4 :  IN  STD_LOGIC_VECTOR(0 TO 3);
		pin_name1 :  OUT  STD_LOGIC;
		pin_name2 :  OUT  STD_LOGIC;
		pin_name3 :  OUT  STD_LOGIC;
		pin_name4 :  OUT  STD_LOGIC;
		sal :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END Practica2;

ARCHITECTURE bdf_type OF Practica2 IS 

COMPONENT multiplexer_4_to_1
	PORT(I0 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I1 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I2 : IN STD_LOGIC_VECTOR(0 TO 3);
		 I3 : IN STD_LOGIC_VECTOR(0 TO 3);
		 S : IN STD_LOGIC_VECTOR(0 TO 1);
		 Y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT cont2
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 D : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;

COMPONENT decoder_2_to_4
	PORT(S : IN STD_LOGIC_VECTOR(0 TO 1);
		 D0 : OUT STD_LOGIC;
		 D1 : OUT STD_LOGIC;
		 D2 : OUT STD_LOGIC;
		 D3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT Altera
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 ao : OUT STD_LOGIC;
		 bo : OUT STD_LOGIC;
		 co : OUT STD_LOGIC;
		 eo : OUT STD_LOGIC;
		 do : OUT STD_LOGIC;
		 fo : OUT STD_LOGIC;
		 go : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT div_freq
GENERIC (DIV : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	BCD :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	salida :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(0 TO 1);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_6 <= '0';



b2v_inst : multiplexer_4_to_1
PORT MAP(I0 => dip_1,
		 I1 => dip_2,
		 I2 => dip_3,
		 I3 => dip_4,
		 S => SYNTHESIZED_WIRE_5,
		 Y => BCD);


b2v_inst3 : cont2
PORT MAP(Clock => SYNTHESIZED_WIRE_1,
		 Reset => SYNTHESIZED_WIRE_6,
		 D => SYNTHESIZED_WIRE_5);



b2v_inst6 : decoder_2_to_4
PORT MAP(S => SYNTHESIZED_WIRE_5,
		 D0 => pin_name1,
		 D1 => pin_name2,
		 D2 => pin_name3,
		 D3 => pin_name4);


b2v_inst7 : Altera
PORT MAP(A => BCD(0),
		 B => BCD(1),
		 C => BCD(2),
		 D => BCD(3),
		 ao => salida(6),
		 bo => salida(5),
		 co => salida(4),
		 eo => salida(3),
		 do => salida(2),
		 fo => salida(1),
		 go => salida(0));


b2v_inst8 : div_freq
GENERIC MAP(DIV => 100000
			)
PORT MAP(clk => CLK,
		 reset => SYNTHESIZED_WIRE_6,
		 clk_out => SYNTHESIZED_WIRE_1);

sal <= salida;

END bdf_type;