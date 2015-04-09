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
-- Description:    Framework for execution
---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPU is
    PORT ( 
			ClK, RESET: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR (15 downto 0);
			ADDR: in STD_LOGIC_VECTOR (3 downto 0);
			dout: out STD_LOGIC_VECTOR (15 downto 0);
			wea: in STD_LOGIC_VECTOR (0 downto 0)
		  ) ;
end FPU;

architecture Structural of FPU is
begin
U1: entity work.GenRegBank
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => D
);
U2: entity work.ShadRegBank
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => D
);
U3: entity work.DataMem
Port Map
(
	CLK => CLK,
	addr => addr,  --address of RAM to store data
	din => d,		--data input (from ALU_data_out
	dout => dout,	--
	wea => wea
);  
  U4: entity work.Store_Data
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => D
);
U5: entity work.DST_ADDR
Port Map
(
	CLK => CLK,
	RESET => RESET,
	D => D
); 
end Structural;