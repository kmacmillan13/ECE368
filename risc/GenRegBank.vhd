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
-- Description:    Registers
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GenRegBank is
    PORT ( 
			ClK, RESET: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(23 downto 0);
			Q: out STD_LOGIC_VECTOR(23 downto 0)
		  ) ;
end GenRegBank;

architecture Structural of GenRegBank is
begin
	R0: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R1: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R2: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R3: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R4: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R5: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R6: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R7: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R8: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R9: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R10: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R11: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R12: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R13: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R14: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	R15: entity work.GenReg
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		D => D,
		Q => Q
	);
	
end Structural;
