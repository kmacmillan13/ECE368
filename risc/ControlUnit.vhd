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
			CLK, RESET,LOAD: in STD_LOGIC;
			ADDR: in std_logic_vector (7 downto 0);
			dout1: out STD_LOGIC_VECTOR (23 downto 0)
		  ) ;
end ControlUnit;

architecture Structural of ControlUnit is
begin
U1: entity work.PipelineController
Port Map
(
	CLK => CLK,
	RESET => RESET,
	LOAD => LOAD,
	dout1 => dout1,
	addr => addr
);
U2: entity work.ConMod
Port Map
(
	CLK => CLK,
	RESET => RESET,
	LOAD => LOAD
);
    
end Structural;