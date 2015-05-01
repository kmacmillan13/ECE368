---------------------------------------------------
-- School:     University of Massachusetts Dartmouth
-- Department: Computer and Electrical Engineering
-- Engineer:   Emily DeBoer and Kayla MacMillan
-- 
-- Create Date:    SPRING 2015
-- Module Name:    WriteBackCTL
-- Project Name:   UMD_RISC16
-- Target Devices: Spartan-3E
-- Tool versions:  Xilinx ISE 14.7
-- Description:    Write Back Control
---------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.UMDRISC_pkg.ALL;
use work.all;

entity WriteBackCTL is
    Port ( 
			  --Inputs
			  instruction: in STD_LOGIC_VECTOR(15 downto 0);
			  --outputs
			  ifstall: out STD_LOGIC
			  );
			  
end WriteBackCTL;

architecture Structural of WriteBackCTL is

begin


end Structural;

