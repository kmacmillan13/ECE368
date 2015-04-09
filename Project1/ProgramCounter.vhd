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
-- Description:    Keep track of location in program
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

entity ProgramCounter is
    Port ( CLK      : in    STD_LOGIC;
           RESET      : in    STD_LOGIC;
			  PC : inout STD_LOGIC_VECTOR(7 downto 0) := (OTHERS => '0')
			);
end ProgramCounter;

architecture Behavioral of ProgramCounter is

	begin
	process(RESET,CLK)
	begin
	if CLK'event and CLK='1' then
		if RESET = '0' then
			PC <= (OTHERS => '0');
		else
			PC <= PC + 1;
		end if;
	end if;
	end process;
end Behavioral;