---------------------------------------------------
-- School:     University of Massachusetts Dartmouth
-- Department: Computer and Electrical Engineering
-- Engineer:   Emily DeBoer and Kayla MacMillan
-- 
-- Create Date:    SPRING 2015
-- Module Name:    BranchOffset
-- Project Name:   UMD_RISC16
-- Target Devices: Spartan-3E
-- Tool versions:  Xilinx ISE 14.7
-- Description:    Adds offset to program counter
---------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.UMDRISC_pkg.ALL;
use work.all;

entity RTL is
    Port ( 
			 isRTL: in STD_LOGIC;
                         
			 stack_pointer_in: in STD_LOGIC_VECTOR(? downto 0);
			 stack_pointer_out: out STD_LOGIC_VECTOR(? downto 0);
			 stack_in: in  STD_LOGIC_VECTOR(? downto 0); --WRONG
                         
			 pc_in: in (4 downto 0));
			 pc_out: out (4 downto 0));
			  
end RTL;

architecture Behavioral of RTL is

begin
	process (isRTL)
	begin
		if isRTL = '1' then
			pc_signal_out <= stack(stack_pointer_in);  --WRONG
			stack_pointer_out <= stack_pointer_in - 1;
		end if;
	end process;
end  Behavioral;
