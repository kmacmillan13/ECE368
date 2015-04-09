---------------------------------------------------
-- School:     University of Massachusetts Dartmouth
-- Department: Computer and Electrical Engineering
-- Engineer:   Emily DeBoer and Kayla MacMillan
-- 
-- Create Date:    SPRING 2015
-- Module Name:    GeneralRegister
-- Project Name:   UMD_RISC16
-- Target Devices: Spartan-3E
-- Tool versions:  Xilinx ISE 14.7
-- Description:    Framework for controlling machine
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
    PORT ( 
			ClK, RESET,LOAD: in STD_LOGIC
		  ) ;
end ControlUnit;

architecture Structural of ControlUnit is
begin
U1: entity work.PipelineController
Port Map
(
	CLK => CLK,
	RESET => RESET,
	LOAD => LOAD
);
U2: entity work.ConMod
Port Map
(
	CLK => CLK,
	RESET => RESET,
	LOAD => LOAD
);
    
end Structural;