library ieee;
use ieee.std_logic_1164.all;

entity gerador is
	port (
		clk		: in std_logic;
		resetn	: in std_logic;
		seq		: out std_logic
	);
end entity gerador;

architecture behavior of gerador is
	-- 3 data packages with 10 bits each one
	constant data_in	: std_logic_vector(0 to 29) := "000100110101111001011001001101";
	
	signal header_in		: std_logic_vector(0 to 1);
	signal header_out		: std_logic_vector(0 to 4);
	
	signal data				: std_logic_vector(0 to 7);
	signal seq_out			: std_logic_vector(0 to 12);
begin
	process (clk, resetn)
		variable count_package	: integer range 0 to 3	:= 0;
		variable count_bit		: integer range 0 to 14	:= 0;
		variable count_bit_tr	: integer range 0 to 13	:= 0;

	begin
		if (resetn = '0') then
			seq <= '0';
		elsif (clk'event and clk = '1') then
			-- Getting header_in and data
			case count_package is
				when 0 =>
					header_in <= data_in(0 to 1);
					data <= data_in(2 to 9);
				when 1 =>
					header_in <= data_in(10 to 11);
					data <= data_in(12 to 19);
				when 2 =>
					header_in <= data_in(20 to 21);
					data <= data_in(22 to 29);
				when 3 =>
					seq <= 'X';
					header_in <= "UU";
					data <= "UUUUUUUU";
			end case;
			
			if (count_bit = 0) then
				seq <= 'X';
			else
				seq <= seq_out(count_bit_tr);
				count_bit_tr := count_bit_tr + 1;
			end if;
			
			count_bit := count_bit + 1;
			
			if (count_bit_tr = 13) then
				count_package := count_package + 1;
				count_bit := 0;
				count_bit_tr := 0;
			end if;
		end if;
	end process;
	
	-- Getting header_out through header_in
	process (header_in)
	begin
		case header_in is
			when "00" => header_out <= "11001";
			when "01" => header_out <= "01011";
			when "10" => header_out <= "01110";
			when others => header_out <= "00000";
		end case;
	end process;
	
	-- Getting seq_out through concatenating of header_out and data
	process (header_out, data)
	begin
		seq_out <= header_out & data;
	end process;
	
end behavior;