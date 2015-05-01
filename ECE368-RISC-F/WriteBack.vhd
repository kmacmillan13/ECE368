---------------------------------------------------
-- School:     University of Massachusetts Dartmouth
-- Department: Computer and Electrical Engineering
-- Engineer:   Emily DeBoer and Kayla MacMillan
-- 
-- Create Date:    SPRING 2015
-- Module Name:    WriteBack
-- Project Name:   UMD_RISC16
-- Target Devices: Spartan-3E
-- Tool versions:  Xilinx ISE 14.7
-- Description:    Write result to correct data register
---------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.UMDRISC_pkg.ALL;
use work.all;

entity WriteBack is
    Port ( 
			  --Inputs
			  --regA : in  std_logic_vector(DATA_Width-1 downto 0);
			  --regB : in  std_logic_vector(DATA_Width-1 downto 0);
           --imm, 
			  result : in  std_logic_vector(bit_8-1 downto 0);
			  instruction: in STD_LOGIC_VECTOR (15 downto 0);
			  
			  --outputs
			  v_A: out std_logic_vector(DATA_Width-1 downto 0);
			  result_o: out std_logic_vector(ADRS_WIDTH-1 downto 0);
			  
			  --tmp signals
			  tsel: in STD_LOGIC;
			  tv_regb, timm: in STD_LOGIC_VECTOR (ADRS_WIDTH-1 downto 0);
			  toutput: out  STD_LOGIC_VECTOR (bit_8-1 downto 0)
			  
			  );
			  
end WriteBack;

architecture Structural of WriteBack is

signal ifstall: std_logic;

begin

--MUX2to1
MUX2to1: entity work.MUX2to1
generic map( vector_inSize => adrs_width, vector_outSize => bit_8)
port map(
			SEL => tsel,
			IN_1 => tv_regb,
			IN_2 => timm,
			OUTPUT => toutput
		   );
WriteBackCTL: entity work.WriteBackCTL
port map(
			instruction => instruction,
			ifstall => ifstall
			);
StallConditionReg: entity work.StallConditionReg
port map(
			ifstall => ifstall
			);


end Structural;

