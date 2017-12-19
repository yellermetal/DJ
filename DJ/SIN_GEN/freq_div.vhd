library ieee ;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-- Entity "freq_div" Definition
-- Description: Frequency Divider (to change frequency component must be reset)
-- Inputs:  'RESETN', asyncronous reset
--		   	'CLK', clock
--			'FREQ', Desired frequency
-- Outputs: 'CLK_OUT', clock with lower frequency
entity freq_div is
port (
	RESETN : in std_logic;
	CLK : in std_logic;
	FREQ : integer;
	CLK_OUT : out std_logic
);
end freq_div;

architecture freq_div_arch of freq_div is

begin
	process(CLK,RESETN,FREQ)
		variable counter: integer := 0;
		variable sec: integer := 1;
	begin
		sec := FREQ;
		if RESETN = '0' then
			counter := 0;
		elsif rising_edge(CLK) then
			counter := counter + 1 ;
			if counter = sec then
				CLK_OUT <= '1' ;
				counter := 0;
			elsif counter > sec then
				counter := 0;
				CLK_OUT <= '0';
			else
				CLK_OUT <= '0';
			end if;
		end if;
	end process;
	
end freq_div_arch;