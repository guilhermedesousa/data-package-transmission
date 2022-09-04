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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/20/2022 13:41:29"
                                                            
-- Vhdl Test Bench template for design  :  data_package_transmission
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY data_package_transmission_vhd_tst IS
END data_package_transmission_vhd_tst;
ARCHITECTURE data_package_transmission_arch OF data_package_transmission_vhd_tst IS
-- constants
CONSTANT clk_period : TIME := 20 ns;
CONSTANT clk_max : integer := 45;                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL resetn : STD_LOGIC;
SIGNAL seqdec : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL valid_out : STD_LOGIC;
COMPONENT data_package_transmission
	PORT (
	clk : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	seqdec : OUT STD_LOGIC_VECTOR(0 TO 7);
	valid_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : data_package_transmission
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	resetn => resetn,
	seqdec => seqdec,
	valid_out => valid_out
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	for count_value in 0 to clk_max loop
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end loop;
	wait;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END data_package_transmission_arch;
