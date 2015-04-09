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
-- Description:    Grab operands
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

Entity OPERAND is
Port(	Instr:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC
);
End OPERAND;

architecture Behavioral of OPERAND is
begin

	process(CLK)
	begin	 
		if (clk='1' and clk'event) then
		--access operands
		end if;
	end process;
end Behavioral;
