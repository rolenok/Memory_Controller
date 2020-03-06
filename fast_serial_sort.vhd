library ieee;
use ieee.st_logic_1164.all;
use ieee.numeric_std.all;

entity fast_serial_sort_top is 
	generic( data_width : integer := 8;
			 size       : integer := 3);
	port( clk, reset, en, wrt : in std_logic;
		  unsorted_data : in std_logic_vector(data_width-1 downto 0);
		  sort_data     : out std_logic_vector(data_width-1 downto 0));
end entity fast_serial_sort_top;

prev_cell_state      : std_logic_vector(size-1 downto 0);
prev_cell_data       : std_logic_vector(size-1 downto 0);
cell_data_is_pushed  : std_logic_vector(size-1 downto 0);
cell_state           : std_logic_vector(size-1 downto 0);

for i in 0 to size-1 generate 
begin

if (i == 0)

port map 
end if;


end generate



