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
-- Description:    Control States
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

Entity PipelineController is
Port(
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		ADDR: in std_logic_vector (7 downto 0);
		dout1: out STD_LOGIC_VECTOR (23 downto 0)
);
End PipelineController;

architecture Structural of PipelineController is
	signal PC : STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0');
	signal Instr0,Instr1,Instr2,Instr3,Instr4: STD_LOGIC_VECTOR(3 downto 0):=(OTHERS=>'0');
    begin
	U1: entity work.ProgramCounter
	Port Map
	(
		CLK => CLK,
		RESET => RESET,
		PC => PC
	);
	U2: entity work.Fetch
	Port Map
	(
		PCIn => PC,
		CLK => CLK,
		Instr => Instr0,
		LOAD => LOAD,
		RESET => RESET
		
	);
		
	U3: entity work.Decode
	Port Map
	(
		CLK => CLK,
		Instr => Instr1
		
	);
	U4: entity work.OPERAND
	Port Map
	(
		CLK => CLK,
		Instr => Instr2
		
	);
	U5: entity work.EXEC
	Port Map
	(
		CLK => CLK,
		Instr => Instr3
		
	);
	U6: entity work.WRITEBACK
	Port Map
	(
		CLK => CLK,
		Instr => Instr4
		
	);
	

U7: entity work.InstrMem
	 Port Map
	 (
		CLKa=>CLK,
		Addra=>addr,
		douta=>dout1
	);
	
	Instr1 <= Instr0;
	Instr2 <= Instr1;
	Instr3 <= Instr2;
	Instr4 <= Instr3;
	Instr0 <= Instr4;

	 
end Structural;