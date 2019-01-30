-- ============================================================
-- File Name: IP_telemetre_us_HC_SR04.vhd
-- Description: Telemetre a ultrason HC-SR04
-- ============================================================

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY Radar IS 			--déclaration des entrées
	Generic (  Fclock : positive := 50E6); -- System Clock Freq in Hertz
	PORT
	(
		RST_n		:  IN  STD_LOGIC;
		CLK 	:  IN  STD_LOGIC;
		trig  : out std_logic;
		echo  : in std_logic;
		pulse : out std_logic;
		switch : in std_logic_vector(1	 downto 0);
		led   : out std_logic_vector (7 downto 0);   -- durée de l'echo en cm (affichage sur les LEDs)
		--Interface avec le bus Avalon
		read_data : out std_logic_vector (15 downto 0);	-- durée de l'echo en cm 			
		read_enable :in std_logic;
		chip_select : in std_logic
		);		
end entity;

ARCHITECTURE RTL OF Radar IS

Component DF9GMS IS 			--déclaration des entrées
	Generic (  Fclock : positive := 50E6); -- System Clock Freq in Hertz
	PORT
	(
	RST_n	: IN  STD_LOGIC;
	CLK 	: IN  STD_LOGIC;
	pulse : out std_logic;
	switch : in std_logic_vector(1 downto 0)
);	
end Component DF9GMS;	

Component telemetre_us_HC_SR04 IS 			--déclaration des entrées
	Generic (  Fclock : positive := 50E6); -- System Clock Freq in Hertz
	PORT
	(
		RST_n		:  IN  STD_LOGIC;
		CLK 	:  IN  STD_LOGIC;
		trig  : out std_logic;
		echo  : in std_logic;
		dure_echo   : out std_logic_vector (15 downto 0)   -- durée de l'echo en cm (affichage sur les LEDs)
		);		
end Component telemetre_us_HC_SR04;
signal rst : std_logic;
signal dure_echo : std_logic_vector(15 downto 0);
begin
	rst <= not rst_n;
	led <= dure_echo(7 downto 0);
--Very Simple Avalon bus decoder
process(clk, rst)
begin
	if rst = '1' then 
		Read_data <= (others => '0');
	elsif rising_edge(clk) then 	
		if (chip_select = '1') and (read_enable = '1') then 
			Read_data <= dure_echo;
		end if; 
	end if; 
end process;

U0 :  component DF9GMS 
	generic map(Fclock => 50E6)
	port map(	
	RST_n	=> RST_n,
	CLK 	=> CLK,
	pulse => PULSE,
	switch => SWITCH
	);

U1 :  component telemetre_us_HC_SR04
	generic map(Fclock => 50E6)
	port map(	
	RST_n	=> RST_n,
	CLK => CLK,
	trig => trig,
	echo => echo,
	dure_echo => dure_echo
	);

      
END architecture;
