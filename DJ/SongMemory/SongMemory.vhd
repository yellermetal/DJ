LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY SongMemory IS
	port (  
		Slow_clk : in std_logic; --Slow 100[Hz] Clock
		RESETN: in std_logic;
		mode : in std_logic_vector (1 downto 0); -- 0:Do nothing, 1:Rec, 2:Play
		Kbd_dat: in  std_logic_vector (8 downto 0);
		dpram_dat : in std_logic_vector (7 downto 0); -- Key_in, no extended keys
		WriteEn : out std_logic; --Memory write enable
		ReadEn : out std_logic; -- Memory Read enable
		ResetCount : out  std_logic; -- Reset the mem address counter
		CountEn : out std_logic;
		MemUsed : out std_logic;
		Key_out : out std_logic_vector (7 downto 0)
		); 
	
END SongMemory;

ARCHITECTURE SongMemory_arch OF SongMemory IS
	
begin
	process(Slow_clk, RESETN, mode)
	variable mem_counter : integer := 0;
	variable song_position : integer := 0;
	begin

		if(RESETN = '0') then
			ResetCount <= '1';
			MemUsed <= '0';
			Key_out <= x"15";
			mem_counter := 0;
			song_position := 0;
		elsif (rising_edge(Slow_clk)) then
			if (mem_counter > 0 ) then
				MemUsed <= '1';
			end if;
			if (mode = "00") then
				WriteEn <= '0';
				ReadEn <= '0';
				CountEn <= '0';
				ResetCount  <= '1';
			elsif (mode = "01") then
				WriteEn <= '1';
				ReadEn <= '0';
				CountEn <= '1';
				ResetCount  <= '0';
				Key_out <= Kbd_dat(7 downto 0);
				mem_counter := mem_counter + 1;
			elsif (mode = "10") then
				if (mem_counter > 0 and song_position <= mem_counter) then
					song_position := song_position + 1;
					WriteEn <= '0';
					ReadEn <= '1';
					CountEn <= '1';
					ResetCount  <= '0';
					Key_out <= dpram_dat;
				end if;
			 end if;
		end if;
	end process;
			




END SongMemory_arch;

