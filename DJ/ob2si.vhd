library ieee ;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-- Entity "ob2si" Definition
-- Description: Translates offset binary to signed int (2's complement)
-- Inputs: 'ob_input', offset binary represantation input
-- Outputs: 'si_out', signed integer representation output

entity ob2si is
port(
		ob_input : in std_logic_vector(7 downto 0);
		si_out : out std_logic_vector(7 downto 0)
	);
end ob2si;

architecture ob2si_arch of ob2si is
begin

	si_out <= x"80" xor ob_input;

end ob2si_arch;