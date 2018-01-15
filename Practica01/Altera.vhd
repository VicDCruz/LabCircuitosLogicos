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
-- CREATED		"Fri Aug 25 08:17:45 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Altera IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		ao :  OUT  STD_LOGIC;
		bo :  OUT  STD_LOGIC;
		co :  OUT  STD_LOGIC;
		do :  OUT  STD_LOGIC;
		eo :  OUT  STD_LOGIC;
		fo :  OUT  STD_LOGIC;
		go :  OUT  STD_LOGIC
	);
END Altera;

ARCHITECTURE bdf_type OF Altera IS 

SIGNAL	SYNTHESIZED_WIRE_84 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_85 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_86 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_87 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_62 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_63 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_65 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_80 <= SYNTHESIZED_WIRE_84 AND C;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_84 AND SYNTHESIZED_WIRE_85;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_84 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_84 AND C AND D;


SYNTHESIZED_WIRE_11 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


bo <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_84 AND B;


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_84 AND D;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_22 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


co <= SYNTHESIZED_WIRE_20 OR SYNTHESIZED_WIRE_21 OR SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_23;


SYNTHESIZED_WIRE_38 <= SYNTHESIZED_WIRE_84 AND C AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_83 <= SYNTHESIZED_WIRE_84 AND B AND D;


SYNTHESIZED_WIRE_36 <= SYNTHESIZED_WIRE_84 AND SYNTHESIZED_WIRE_85 AND C;


SYNTHESIZED_WIRE_37 <= SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_40 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


SYNTHESIZED_WIRE_39 <= SYNTHESIZED_WIRE_84 AND B AND SYNTHESIZED_WIRE_86 AND D;


SYNTHESIZED_WIRE_42 <= SYNTHESIZED_WIRE_36 OR SYNTHESIZED_WIRE_37 OR SYNTHESIZED_WIRE_38;


SYNTHESIZED_WIRE_41 <= SYNTHESIZED_WIRE_39 OR SYNTHESIZED_WIRE_40;


do <= SYNTHESIZED_WIRE_41 OR SYNTHESIZED_WIRE_42;


SYNTHESIZED_WIRE_52 <= SYNTHESIZED_WIRE_84 AND C AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_81 <= SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_51 <= SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


eo <= SYNTHESIZED_WIRE_51 OR SYNTHESIZED_WIRE_52;


SYNTHESIZED_WIRE_62 <= SYNTHESIZED_WIRE_84 AND B AND SYNTHESIZED_WIRE_86;


SYNTHESIZED_WIRE_65 <= SYNTHESIZED_WIRE_84 AND SYNTHESIZED_WIRE_86 AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_63 <= SYNTHESIZED_WIRE_84 AND B AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_64 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


fo <= SYNTHESIZED_WIRE_62 OR SYNTHESIZED_WIRE_63 OR SYNTHESIZED_WIRE_64 OR SYNTHESIZED_WIRE_65;


SYNTHESIZED_WIRE_76 <= SYNTHESIZED_WIRE_84 AND C AND SYNTHESIZED_WIRE_87;


SYNTHESIZED_WIRE_79 <= SYNTHESIZED_WIRE_84 AND SYNTHESIZED_WIRE_85 AND C;


SYNTHESIZED_WIRE_77 <= SYNTHESIZED_WIRE_84 AND B AND SYNTHESIZED_WIRE_86;


SYNTHESIZED_WIRE_82 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


SYNTHESIZED_WIRE_78 <= A AND SYNTHESIZED_WIRE_85 AND SYNTHESIZED_WIRE_86;


go <= SYNTHESIZED_WIRE_76 OR SYNTHESIZED_WIRE_77 OR SYNTHESIZED_WIRE_78 OR SYNTHESIZED_WIRE_79;


SYNTHESIZED_WIRE_84 <= NOT(A);



SYNTHESIZED_WIRE_85 <= NOT(B);



SYNTHESIZED_WIRE_86 <= NOT(C);



SYNTHESIZED_WIRE_87 <= NOT(D);



ao <= SYNTHESIZED_WIRE_80 OR SYNTHESIZED_WIRE_81 OR SYNTHESIZED_WIRE_82 OR SYNTHESIZED_WIRE_83;


END bdf_type;