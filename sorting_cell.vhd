library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorting_cell is 
	generic(data_width        : integer := 8;
			empty             : std_logic := 1;
			occupied          : std_logic := 1);
	port(
		clk, reset, enable    : in std_logic;
		prev_cell_data_pushed : in std_logic;
		prev_cell_state       : in std_logic;
		shift_up              : in std_logic;
		prev_cell_data        : in std_logic_vector(data_width-1 downto 0);
		new_data              : in std_logic_vector(data_width-1 downto 0);		
		next_cell_data        : in std_logic_vector(data_width-1 downto 0);
		cell_data_is_pushed   : out std_logic;
		cell_state            : out std_logic;
		cell_data             : out std_logic_vector(data_width-1 downto 0)
	);
end entity sorting_cell;

architecture rtl of sorting_cell is
signal new_data_fits   : std_logic;
signal priority_vector : std_logic_vector(4 downto 0);


begin 

priority_vector(4) <= shift_up;
priority_vector(3) <= new_data_fits;
priority_vector(2) <= prev_cell_data_pushed;
priority_vector(1) <= cell_state;
priority_vector(0) <= prev_cell_state;


new_data_fits <= "1" when (to_integer(unsigned(new_data)) < to_integer(unsigned(old_data)) || cell_state = empty) 
		    else "0";

    cell_data_is_pushed <= "1" when (new_data_fits = "1" && cell_state = occupied) 
    				  else "0";


proc1 : process(clk, rst)
begin 
    if rising_edge(clk) then
    	if (rst) then
    		cell_state <= empty;
    	elsif (en) then
			case (cell state)
				when empty => cell_state <= pre_cell_data_pushed when prev_cell_data_pushed = occupied 
			end case;
    	end if;
    end if;
end process proc1;

proc2 : process(clk, rst)
begin
	if rising_edge(clk) then
		if (rst) then
			cell_data <= b"0"		
		end if;
		if (en)	
			case (priority_vector)

			end case;
		else cell_data <= cell_data;
		end if;
	end if;	
end process proc2;


end architecture rtl; 