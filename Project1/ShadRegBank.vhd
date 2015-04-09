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
-- Description:    Special Registers used to access external memory
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShadRegBank is
    PORT ( 
			ClK, RESET: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(15 downto 0);
			Q: out STD_LOGIC_VECTOR(15 downto 0)
		  ) ;
end ShadRegBank;

architecture Structural of ShadRegBank is
begin
	S0: entity work.ShadReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	S1: entity work.ShadReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	S2: entity work.ShadReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	S3: entity work.ShadReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	
end Structural;
