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
-- Description:    
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GenReg is
    PORT ( 
			ClK, RESET: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(15 downto 0);
			Q: out STD_LOGIC_VECTOR(15 downto 0)
		  ) ;
end GenReg;

architecture Behavioral of GenReg is
begin
    PROCESS (CLK)
    BEGIN
        IF (CLK'EVENT AND CLK = '1') THEN
			Q <= D;
        END IF;
    END PROCESS;
end Behavioral;