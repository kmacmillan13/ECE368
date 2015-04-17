---------------------------------------------------
-- School:     University of Massachusetts Dartmouth
-- Department: Computer and Electrical Engineering
-- Engineer:   Emily DeBoer and Kayla MacMillan
-- 
-- Create Date:    SPRING 2015
-- Module Name:    ControlModule
-- Project Name:   UMD_RISC16
-- Target Devices: Spartan-3E
-- Tool versions:  Xilinx ISE 14.7
-- Description:    
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ConMod is
    PORT ( InstrIn           		: in  STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
           CLK,RESET    			: in  STD_LOGIC ;
			  LOAD: in STD_LOGIC;
           InputReg, OP, StoreReg    	: out STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0')) ;
end ConMod;

architecture Behavioral of ConMod is
begin
    PROCESS (CLK)
    BEGIN
        IF (CLK'EVENT AND CLK = '1') THEN
            IF LOAD = '1' THEN
                --look up InstrIn in look up table
		--output InputReg, OP, StoreReg from table
            END IF;
        END IF;
    END PROCESS;
end Behavioral;
