LIBRARY ieee;
USE ieee.std_logic_1164.all;     
USE ieee.std_logic_arith.all;

entity InstrMem is

	port(
		RESET   : in STD_LOGIC;
		CLK   : in STD_LOGIC
	);

end InstrMem;

architecture dataflow of InstrMem is

begin

	--with  select
		--InstrOut <=
			-- Instructions
			--x"" when x"0000", --ADD REG A, REG B
			--x"" when x"0001", --SUB REG A, REG B
			--x"" when x"0010", --AND REG A, REG B
			--x"" when x"0011",	--OR REG A, REG B
			--x"" when x"0100",	--MOV REG A, REG B
			--x"" when x"0101",	--ADDI REG A
			--x"" when x"0110",	--ANDI REG A
			--x"" when x"0111",	--SL REG A
			--x"" when x"1000",	--SR REG A
			--x"" when x"1001",	--LW REG A
			--x"" when x"1010",	--SW REG A
end architecture dataflow;


