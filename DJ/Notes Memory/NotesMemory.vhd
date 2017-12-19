
library ieee ;
use ieee.std_logic_1164.all ;
use IEEE.numeric_std.ALL;

entity NotesMemory is 
	port ( 
		clk : in std_logic ; 
		oct : in std_logic_vector (1 downto 0);
		key_in : in std_logic_vector (8 downto 0);     
		dout : out integer range 0 to 1024
		); 
end NotesMemory; 
 
architecture NotesMemory_arch of NotesMemory is     

	signal pressed: std_logic; 
	signal out_led: std_logic; 
	begin 
		process ( key_in ,clk)         
		begin       
            if rising_edge(clk) then
				--Q
				if (key_in = x"15")  then 
					dout <= oct*262; 
					 
				--2               
				elsif (key_in = x"1E") then                 
					dout <= oct*247;
				--W
				elsif (key_in = x"1D") then                 
					dout <= oct*233;
				--3
				elsif (key_in = x"26") then                 
					dout <= oct*220;
				--E
				elsif (key_in = x"24") then                 
					dout <= oct*208;
				--R
				elsif (key_in = x"2D") then                 
					dout <= oct*196;
				--5
				elsif (key_in = x"2E") then                 
					dout <= oct*185;
				--T
				elsif (key_in = x"2C") then                 
					dout <= oct*175;
				--6
				elsif (key_in = x"36") then                 
					dout <= oct*165;
				--Y
				elsif (key_in = x"35") then                 
					dout <= oct*156;
				--7
				elsif (key_in = x"3D") then                 
					dout <= oct*147;
				--U
				elsif (key_in = x"3C") then                 
					dout <= oct*139;
				--I
				elsif (key_in = x"43") then                 
					dout <= oct*131;																																								
				end if;         
            end if;     
        end process; 
end NotesMemory_arch;
