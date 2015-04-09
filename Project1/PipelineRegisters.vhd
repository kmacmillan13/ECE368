library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

Entity Fetch is
Port(	FInstrIn:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		FInstrOut:	out STD_Logic_Vector(3 downto 0)
);
End Fetch;

architecture Structural of Fetch is
    begin
	 process
	 begin
	if RESET = '0' then
		FInstrIn <= NULL;
	elsif (clk='1' and clk'event) then
	    if LOAD = '1' then
			FInstrOut <= FInstrIn;
	    end if;
	end if;
end Structural;

Entity Decode is
Port(	DInstrIn:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		DInstrOut:	out STD_Logic_Vector(3 downto 0)
);
End Decode;

architecture Structural of Decode is
    begin
	 process
	 begin	 
	if RESET = '0' then
		DInstrIn <= NULL;
	elsif (clk='1' and clk'event) then
	    if LOAD = '1' then
			DInstrIn <= FInstrOut;
			DInstrOut <= DInstrIn;
	    end if;
	end if;
end Structural;

Entity OPERAND is
Port(	OInstrIn:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		OInstrOut:	out STD_Logic_Vector(3 downto 0)
);
End OPERAND;

architecture Structural of OPERAND is
    begin
	if RESET = '0' then
		OInstrIn <= NULL;
	elsif (clk='1' and clk'event) then
	    if LOAD = '1' then
			OInstrIn <= DInstrOut;
			OInstrOut <= OInstrIn;
	    end if;
	end if;
end Structural;

Entity EXEC is
Port(	EInstrIn:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		EInstrOut:	out STD_Logic_Vector(3 downto 0)
);
End EXEC;

architecture Structural of EXEC is
	begin
	if RESET = '0' then
		EInstrIn <= NULL;
	elsif (clk='1' and clk'event) then
	    if LOAD = '1' then
			EInstrIn <= OInstrOut;
			EInstrOut <= EInstrIn;
	    end if;
	end if;
end Structural;

Entity WRITEBACK is
Port(	WInstrIn:	in STD_Logic_Vector(3 downto 0);
		CLK:	in STD_LOGIC;
		LOAD:   in STD_LOGIC;
		RESET:  in STD_LOGIC;
		WInstrOut:	out STD_Logic_Vector(3 downto 0)
);
End WRITEBACK;

architecture Structural of WRITEBACK is
    begin
	if RESET = '0' then
		WInstrIn <= NULL;
	elsif (clk='1' and clk'event) then
	    if LOAD = '1' then
			WInstrIn <= EInstrOut;
			WInstrOut <= WInstrIn;
	    end if;
	end if;
end Structural;