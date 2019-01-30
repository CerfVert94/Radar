-- ============================================================
-- File Name: DF9GMS.vhd
-- Description: Servomoteur DF9GMS
-- ============================================================

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY DF9GMS IS 			--déclaration des entrées
	Generic (  Fclock : positive := 50E6); -- System Clock Freq in Hertz
	PORT
	(
	RST_n	: IN  STD_LOGIC;
	CLK 	: IN  STD_LOGIC;
	pulse : out std_logic;
	--Interface avec le bus Avalon
	address :in std_logic;
	write_data : in std_logic_vector (7 downto 0);	-- La position du servomoteur			
	write_n :in std_logic;
	chip_select : in std_logic
);		
end entity;

ARCHITECTURE RTL OF DF9GMS IS

	signal Tick1us :  std_logic;	--signal tick de 1µs
	
	Type StateType is (E0, E1, E2, E3);	-- Déclaration des états de notre MAE
	signal State : StateType;
	
	signal Rst : std_logic;
	constant Divisor_us : positive := Fclock  / 1E6;
	signal Pulse_Width : integer := 20000;
	
	signal Count_Div     : integer range 0 to Divisor_us; -- compteur du diviseur de la fréquence
	signal Count_us : integer range 0 to Pulse_Width;	--compteur de µs
	signal Duty_Cycle : integer range 500 to 2500;			

begin

	Rst <= not Rst_N;

	--Very Simple Avalon bus decoder
	process(clk, Rst)
	begin
		if Rst = '1' then 
			Duty_cycle <= 500;
		elsif rising_edge(clk) then 	
			if (chip_select = '1') and (write_n = '1') and (address = '1') then 
				Duty_cycle <= (((to_integer(unsigned(write_data)))*2000) / 180) + 500;
			end if; 
		end if; 
	end process;

	-- process generate the Tick1us (One clock period Tick each 1 us)
	process (Rst,CLK)
	begin
		if Rst='1' then -- RAZ le diviseur de la fréquence et le compteur.
			Count_Div <= 0;
			Tick1us <= '0';
		elsif rising_edge (CLK) then -- Générer un tick tous les 1µs.
			Tick1us  <= '0';
			if Count_Div < Divisor_us-1 then 
				Count_Div <= Count_Div + 1;
			else
				Count_Div <= 0;
				Tick1us <= '1';
			end if;
		end if;
	end process;
	
	-- MAE de generation d'un pwm de 20ms avec un rapport cyclique de 5% à 10%
	process (Clk,Rst)
	begin
	if Rst='1' then		
		Pulse	<= '0';
		State <= E0;			--état initial
		Count_us <= 0;
	elsif rising_edge(Clk) then												
		case State is
		--------------------- E0 ---------------------			
		when E0 =>		
			Count_us <= 0;
			Pulse <= '1';	
			State <= E1;
		--------------------- E1 ---------------------			
		when E1 =>						--état initial
			if Count_us = Duty_Cycle then
				State <= E2;			
				Pulse <= '0';			
			elsif Tick1us = '1' then
				Count_us <=	 Count_us+1;					--incrémentation du compteur chaque 1 us
			end if;
		--------------------- E2 ---------------------	
		when E2 =>
			if Count_us = Pulse_Width then
				State <= E3;			
				Pulse <= '0';								
			elsif Tick1us = '1' then
				Count_us <= Count_us+1;					--incrémentation du compteur chaque 1 us
			end if;
		--------------------- E4 ---------------------						
		when others =>
			State <= E0;			
		end case;
	end if;
	end process;

END architecture;
