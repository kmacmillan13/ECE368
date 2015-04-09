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
-- Description:    Framework for entire machine
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC is
    PORT (
			ClK, RESET, ENB: in STD_LOGIC;
			DATA: in std_logic_Vector (15 downto 0);
			ADDR: in std_logic_vector (3 downto 0);
			WEA: in std_logic_vector (0 downto 0)
		  ) ;
end RISC;

architecture Structural of RISC is

begin
U1: entity work.ControlUnit
Port Map
(
	CLK => CLK,
	RESET => RESET,
	LOAD  => ENB
);
U2: entity work.FPU
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => Data,
	ADDR => ADDR,
	WEA => WEA
);
end Structural;