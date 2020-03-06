library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_controller is 
	port (
			clk : in std_logic;
			rst : in std_logic;
			we  : in std_logic;
			addr : in std_logic_vector;
			din  : in std_logic_vector;
			dout : out std_logic_vector
	);
	
end entity memory_controller;

architecture behave of memory_controller is

component ram_global is ram 
	port map (clk => clk;
				 rst => rst;
				 we  => we;
				 addr => addr;
				 din => din;
				 dout => dout);
end component ram;



begin 			 
end architecture behave;
			