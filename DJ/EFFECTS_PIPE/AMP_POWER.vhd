library ieee ;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

-- Entity "AMP_POWER " Definition
-- Description: Amplifier
-- Inputs:  'SIG_IN', input signal
--			'AMP_ENABLE', enable signal
--			'POWER', the power of 2 to amplify the signal
-- Outputs: 'SIG_OUT', output signal
entity AMP_POWER is
port (
	SIG_IN : in std_logic_vector(7 downto 0);
	AMP_ENABLE : in std_logic;
	POWER : integer;
	SIG_OUT : out std_logic_vector(7 downto 0)
);
end AMP_POWER;

architecture AMP_POWER_arch of AMP_POWER is

begin

	process(AMP_ENABLE, POWER, SIG_IN)
		variable Amp : integer := 0;
	begin
		Amp := conv_integer(SIG_IN);
		if AMP_ENABLE = '1' then
			Amp := Amp*(2**POWER);
		end if;
		
		SIG_OUT <= conv_std_logic_vector(Amp, 8);
	end process;

end AMP_POWER_arch;