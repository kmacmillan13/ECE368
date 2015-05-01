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
USE work.UMDRISC_pkg.ALL;
use work.all;

Entity PipelineController is
Port(
		--Inputs
		CLK:	in STD_LOGIC;
		RESET, PC_EN:  in STD_LOGIC;
		Opcode: in std_logic_vector(3 downto 0);
		--Control Signals
	   --	imm_mux_sel: in std_logic;
		--	readORwrite_sel: in std_logic;
		
		--Output
		imm_out : out std_logic_vector(7 downto 0);
		vReg_A: out std_logic_vector (15 downto 0);
		vReg_B : out std_logic_vector (15 downto 0)
);
End PipelineController;

architecture Structural of PipelineController is
	signal PC : STD_LOGIC_VECTOR(4 downto 0) := (OTHERS => '0');
	signal Instruction: STD_LOGIC_VECTOR(15 downto 0):=(OTHERS=>'0');
	signal ADRS_Imm, ADRS_A, ADRS_B: std_logic_vector (3 downto 0):=(OTHERS=>'0');
	signal ctrl_readwrite: std_logic;
	signal ctrl_imm_mux_sel: std_logic;
	
	
	--WriteBack Signals
	signal v_A: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal result_o: std_logic_vector(ADRS_WIDTH-1 downto 0);
	
	--tmp signals for writeback mux
	signal tsel: STD_LOGIC;
	signal tv_regb, timm: STD_LOGIC_VECTOR (ADRS_WIDTH-1 downto 0);
	signal toutput:  STD_LOGIC_VECTOR (bit_8-1 downto 0);
	
	--tmp signal from ALU to MUX
	signal tmp_from_ALU: std_logic_vector(bit_8-1 downto 0);
	
    begin
	U2: entity work.Fetch_struct
	Port Map
	(
		PC_out => PC,
		CLK => CLK,
		PC_EN => PC_EN,
		RST => RESET,
		ADRS_IMM => ADRS_IMM,
		ADRS_A => ADRS_A,
		ADRS_B => ADRS_B,
		Instruction_out => Instruction
	);
		
	U3: entity work.Decode
	Port Map
	(
		CLK => CLK,
		RST => RESET,
		ADRS_A_in => ADRS_A,
		ADRS_B_in => ADRS_B,
		Opcode => Opcode,
		Instruction => Instruction,
		imm => ADRS_IMM,
		imm_out => imm_out,
		vReg_A => vReg_A,
		vReg_B => vReg_B
		--v_A => v_A,
		--result_o => result_o
	);
--	U4: entity work.OPERAND
--	Port Map
--	(
--		CLK => CLK,
--		Instr => Instr2
--		
--	);
--	U5: entity work.EXEC
--	Port Map
--	(
--		CLK => CLK,
--		Instr => Instr3
--		
--	);
	U6: entity work.WRITEBACK
	Port Map
	(
			 -- regA => vReg_A,
			  --regB => vReg_B,
        --   imm => imm
			  result => tmp_from_ALU, --CHANGE
			  instruction => Instruction,
			  v_A => v_A,
			  result_o => result_o,
			  
			  --tmp signals
			  tsel => tsel,
			  tv_regb => tv_regb,
			  timm => timm,
			  toutput => toutput
	);

	 
end Structural;