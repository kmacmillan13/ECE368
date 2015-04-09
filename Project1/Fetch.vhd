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
-- Description:    Grab instruction
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

Entity Fetch is
Port(
	PCIn: in STD_LOGIC_VECTOR(7 downto 0);
	Instr: out STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC
);
End Fetch;

architecture Behavioral of Fetch is
begin
	 process(RESET,CLK,Load)
	 begin	 
	if clk='1' and clk'event then
		if RESET = '0' then
			Instr <= "0000";
		elsif LOAD = '1' then
			--Grab instruction from memory
		end if;
	end if;
	end process;
end Behavioral;