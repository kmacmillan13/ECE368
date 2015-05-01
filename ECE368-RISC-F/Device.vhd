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

entity Device is
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
--			SendResultM: in STD_LOGIC;
--			
--			DataOUT1: out STD_LOGIC_VECTOR(23 downto 0);
--			DataOUT2: out STD_LOGIC_VECTOR(23 downto 0);
--			DataOUT3: out STD_LOGIC_VECTOR(23 downto 0);
--			DataOUT4: out STD_LOGIC_VECTOR(23 downto 0)
		  ) ;
end Device;

architecture Structural of Device is

begin
U1: entity work.RISC
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
--U2: entity work.ExternalMem
--Port Map
--(
--	CLKa => CLK,
--	addra => addr,  --address of RAM to store data
--	dina => data,		--data input (from ALU_data_out
--	douta => dout2,	--
--	wea => wea
--);
end Structural;