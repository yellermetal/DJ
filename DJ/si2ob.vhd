library ieee ;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-- Entity "si2ob" Definition
-- Description: Translates signed int (2's complement) to offset binary
-- Inputs: 'si_input', signed integer representation input
-- Outputs: 'ob_out',offset binary represantation output
entity si2ob is
port(
		si_input : in std_logic_vector(7 downto 0);
		ob_out : out std_logic_vector(7 downto 0)
	);
end si2ob;

architecture si2ob_arch of si2ob is
begin

	ob_out <= x"80" xor si_input;

end si2ob_arch;