library ieee;
use ieee.std_logic_1164.all;

entity data_package_transmission is
	port(
		clk			: in std_logic;
		resetn		: in std_logic;
		seqdec		: out std_logic_vector(0 to 7);
		valid_out	: out std_logic
	);
end entity data_package_transmission;

architecture structure of data_package_transmission is
	signal i: std_logic;
	
	component gerador is
		port (
			clk		: in std_logic;
			resetn	: in std_logic;
			seq		: out std_logic
		);
	end component;

	component detector is
		port (
			clk		 	: in std_logic;
			resetn	 	: in std_logic;
			input		 	: in std_logic;
			seqdec		: out std_logic_vector(0 to 7);
			valid_out			: out std_logic
		);
	end component;

begin
	gen_cod	: gerador port map (clk, resetn, i);
	det_dec	: detector port map (clk, resetn, i, seqdec, valid_out);
end structure;