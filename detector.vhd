library ieee;
use ieee.std_logic_1164.all;

entity detector is
	port (
		clk			: in std_logic;
		resetn		: in std_logic;
		input			: in std_logic;
		seqdec		: out std_logic_vector(0 to 7);
		valid_out	: out std_logic
	);
end entity detector;

architecture structure of detector is
	type state_type is (A_0, B_0, C_0, D_0, E_0, F_0, B_1, C_1, D_1, E_1, F_1, D_2, E_2, F_2);

	signal y									: state_type;
	signal header							: std_logic_vector(0 to 4);
	
	signal count_bit						: integer range 0 to 8;
	signal count							: integer range 0 to 8;
	
	signal seq_cod							: std_logic_vector(0 to 7);
begin
	process (clk, resetn)
		variable s2, s3, s4 : std_logic := '0';
	begin
		if (resetn = '0') then
			seqdec <= "00000000";
			valid_out <= '0';
		elsif (clk'event and clk = '1') then
			-- Moore FSM
			case y is
				when A_0 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= B_0;
					else y <= A_0;
					end if;
				when B_0 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= C_0;
					else y <= A_0;
					end if;
				when C_0 =>
					if input = '0' then y <= D_0;
					elsif input = '1' then y <= C_0;
					else y <= A_0;
					end if;
				when D_0 =>
					if input = '0' then y <= E_0;
					elsif input = '1' then y <= C_1;
					else y <= A_0;
					end if;
				when E_0 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= F_0;
					else y <= A_0;
					end if;
				when F_0 =>
					if input = '0' then y <= D_1;
					elsif input = '1' then y <= D_2;
					else y <= A_0;
					end if;
				when B_1 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= C_1;
					else y <= A_0;
					end if;
				when C_1 =>
					if input = '0' then y <= D_1;
					elsif input = '1' then y <= D_2;
					else y <= A_0;
					end if;
				when D_1 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= E_1;
					else y <= A_0;
					end if;
				when E_1 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= F_1;
					else y <= A_0;
					end if;
				when F_1 =>
					if input = '0' then y <= D_0;
					elsif input = '1' then y <= C_0;
					else y <= A_0;
					end if;
				when D_2 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= E_2;
					else y <= A_0;
					end if;
				when E_2 =>
					if input = '0' then y <= F_2;
					elsif input = '1' then y <= C_0;
					else y <= A_0;
					end if;
				when F_2 =>
					if input = '0' then y <= B_1;
					elsif input = '1' then y <= C_1;
					else y <= A_0;
					end if;
			end case;
			
			-- Handling the main counter
			if (input = 'X' or input = 'U') then
				count_bit <= count_bit;
			elsif (y = F_0 or y = F_1 or y = F_2 or count_bit = 7) then
				count_bit <= 0;
			else
				count_bit <= count_bit + 1;
			end if;
			
			-- Handling the outputs: seqdec and valid_out
			if (count = 7) then
				seqdec(0) <= header(0) xor seq_cod(0);
				seqdec(1) <= header(1) or seq_cod(1);
				seqdec(2) <= header(2) xor seq_cod(2);
				s2 := header(2) xor seq_cod(2);
				seqdec(3) <= header(3) and seq_cod(3);
				s3 := header(3) and seq_cod(3);
				seqdec(4) <= header(4) xor seq_cod(4);
				s4 := header(4) xor seq_cod(4);
				seqdec(5) <= header(0) xor seq_cod(5) xor s4;
				seqdec(6) <= (header(1) and seq_cod(6)) xor s3;
				seqdec(7) <= (header(2) xor seq_cod(7)) or s2;
				
				valid_out <= '1';
			else
				valid_out <= '0';
				seqdec <= "XXXXXXXX";
			end if;
		end if;
	end process;

	-- Getting header sequence
	header <= 	"11001" when y = F_0 else
					"01011" when y = F_1 else
					"01110" when y = F_2 else
					header;
	
	-- Handling the counter of vector position
	count <= 	0 when y = F_0 else
					0 when y = F_1 else
					0 when y = F_2 else
					0 when count_bit = 7 else
					count_bit + 1;
	
	-- Building coded data through input
	process (clk)
	begin
		if (clk'event and clk = '0') then
			seq_cod(count) <= input;
		end if;
	end process;

end structure;