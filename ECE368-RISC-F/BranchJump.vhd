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

entity BranchJump is
    Port ( 
			 isBranch,isJump: in STD_LOGIC;
			 instruction: in STD_LOGIC_VECTOR(DataWidth-1 downto 0);

                         stack: out  STD_LOGIC_VECTOR(? downto 0); --WRONG
			 stack_pointer_in: in STD_LOGIC_VECTOR(? downto 0);
			 stack_pointer_out: out STD_LOGIC_VECTOR(? downto 0);

                         pc_in: in (4 downto 0));
			 pc_out: out (4 downto 0));
			  
end BranchJump;

architecture Behavioral of BranchOffset is

begin
	process (isBranch,isJump)
	begin
	variable pc_offset <= instruction(? downto ?);
		if isBranch = '1' then
			pc_out <= pc_in + pc_offset;
		elsif isJump = '1' then
			stack(stack_pointer_in) <= pc_in; --WRONG
			stack_pointer_out <= stack_pointer_in + 1;
			pc_out <= pc_in + pc_offset;
		end if;
	end process;
end  Behavioral;
