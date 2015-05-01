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
			--Inputs
			CLK, RESET, PC_EN: in STD_LOGIC;
			
			--Control Signals
			imm_mux_sel: in std_logic;
			readORwrite_sel: in std_logic;
		
			--Output
			imm_out : out std_logic_vector(7 downto 0);
			vReg_A: out std_logic_vector (15 downto 0);
			vReg_B : out std_logic_vector (15 downto 0)


			
--			OPCTRLOut: out STD_LOGIC;
--			OPInregOut: out STD_LOGIC;
--			RetOperand: in STD_LOGIC;
--		
--		  	StartOPA: out STD_LOGIC;
--	   	StartOPM: out STD_LOGIC;
--   		OutRegOut: out STD_LOGIC;
--		
--      	ChooseALU: out STD_LOGIC;
--			SendOperandALU: out STD_LOGIC;
--			ChooseMove: out STD_LOGIC;
--			SendOperandMove: out STD_LOGIC;
--				
--			StoreNow: out STD_LOGIC;
--			SendData: out STD_LOGIC;
--			SendAddress: out STD_LOGIC;
--			SendResultA: in STD_LOGIC;
--			SendResultM: in STD_LOGIC
		  ) ;
end RISC;

architecture Structural of RISC is

begin
U1: entity work.ControlUnit
Port Map
(
	CLK => CLK,
	RESET => RESET,
	PC_EN => PC_EN,
	imm_mux_sel => imm_mux_sel,
	readORwrite_sel => readORwrite_sel,
	imm_out => imm_out,
	vReg_A => vReg_A,
	vReg_B => vReg_B
);
--U2: entity work.FPU
--Port Map
--(
--	CLK => CLK,
--	RESET => RESET,
--	D => Data,
--	Q3 => DataOut3,
--	Q4 => DataOut4,
--	ADDR => ADDR,
--	WEA => WEA,
--	dout0 => dout0
--);
end Structural;