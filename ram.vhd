library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram is 
	port (
			clk : in std_logic;
			rst : in std_logic;
			we  : in std_logic;
			addr : in std_logic_vector;
			din  : in std_logic_vector;
			dout : out std_logic_vector
	);
	
end entity ram;

architecture behave of ram is 

type ram_type is array (0 to (2**addr'length) -1) of std_logic_vector(datain'range);
signal ram : ram_type;
signal r_addr : std_logic_vector(addr'range);

begin

proc : process(clk) is

begin 

	if rising_edge(clk) then
		if we = '1' then 
			ram(to_integer(unsigned(addr))) <= din;
		end if;
		
		r_addr <= addr;
	end if;
end process proc;

dout <= ram(to_integer(unsigned(r_addr)));

end architecture behave;
			
			