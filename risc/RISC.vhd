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
			CLK, RESET, ENB: in STD_LOGIC;
			DATA: in std_logic_Vector (23 downto 0);
			ADDR: in std_logic_vector (7 downto 0);
			WEA: in std_logic_vector (0 downto 0);
			dout0: out STD_LOGIC_VECTOR (23 downto 0);
			dout1: out STD_LOGIC_VECTOR (23 downto 0)
		  ) ;
end RISC;

architecture Structural of RISC is

begin
U1: entity work.ControlUnit
Port Map
(
	addr => addr,
	CLK => CLK,
	RESET => RESET,
	LOAD  => ENB,
	dout1=>dout1
);
U2: entity work.FPU
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => Data,
	ADDR => ADDR,
	WEA => WEA,
	dout0 => dout0
);
end Structural;