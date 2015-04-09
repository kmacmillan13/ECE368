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
-- Description:    Execute instruction
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

Entity EXEC is
Port(	Instr:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC
);
End EXEC;

architecture Behavioral of EXEC is
begin

	process(CLK)
	begin	 
		if (clk='1' and clk'event) then
			--Execute instruction
		end if;
	end process;
end Behavioral;