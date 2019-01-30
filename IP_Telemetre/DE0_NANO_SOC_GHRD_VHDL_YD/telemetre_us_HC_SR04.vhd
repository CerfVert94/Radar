-- ============================================================
-- File Name: IP_telemetre_us_HC_SR04.vhd
-- Description: Telemetre a ultrason HC-SR04
-- ============================================================

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

ENTITY telemetre_us_HC_SR04 IS 			--déclaration des entrées
	Generic (  Fclock : positive := 50E6); -- System Clock Freq in Hertz
	PORT
	(
		RST_n		:  IN  STD_LOGIC;
		CLK 	:  IN  STD_LOGIC;
		trig  : out std_logic;
		echo  : in std_logic;
		led   : out std_logic_vector (7 downto 0);   -- durée de l'echo en cm (affichage sur les LEDs)
		--Interface avec le bus Avalon
		read_data : out std_logic_vector (15 downto 0);	-- durée de l'echo en cm 			
		read_enable :in std_logic;
		chip_select : in std_logic
		);		
end entity;

ARCHITECTURE RTL OF telemetre_us_HC_SR04 IS


signal Tick1us :  std_logic;										--signal ticck1us
signal dure_echo : std_logic_vector (15 downto 0); 					--signal duré de l'écho
									
Type StateType is (E0, E1, E2, E3, E4, E5, E6, E7, E8);		-- Déclaration des états de notre MAE
signal State : StateType;
signal cmpt : integer range 0 to 200000;					--compteur de µs
signal rst : std_logic;
constant Divisor_us : positive := Fclock  / 1E6;
signal Count1     : integer range 0 to Divisor_us;
signal echo_r, echo_rr : std_logic;

begin

rst <= not rst_n;

led <= dure_echo(7 downto 0); -- led verification of the IP 

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

-- process generate the Tick1us (One clock period Tick each 1 us)
process (RST,CLK)
begin
  if RST='1' then
    Count1     <= 0;
    Tick1us  <= '0';
	 echo_r <= '0';
	 echo_rr <= '0';
  elsif rising_edge (CLK) then
    echo_r <= echo;      -- resynchronisation du signal echo
	echo_rr <= echo_r;   -- resynchronisation du signal echo
  
    Tick1us  <= '0';
    if Count1 < Divisor_us-1 then
      Count1 <= Count1 + 1;
    else
      Count1 <= 0;
      Tick1us <= '1';
    end if;
  end if;
end process;


-- MAE de generation du trige de 10 us toute les 60 ms  
  process (Clk,Rst)
 
begin
	if Rst='1' then															
			State <= E0;			--état initial
			trig <= '0';			-- trig a l'état bas
			cmpt <= 0;
			dure_echo <=(others => '0');
	elsif rising_edge(Clk) then												

		case State is
		
	--------------------- E0 ---------------------			
		when E0 =>						--état initial
			cmpt <= 0;
			trig <= '0';
			if Tick1us = '1' then		
				trig <= '1';		 			-- debut du Trig (Trig =1)
				cmpt <= 0;
				State <= E2;			
			end if;
			
			
	--------------------- E2 ---------------------	
		when E2 =>
			if cmpt = 20 then
				State <= E3;			
				trig <= '0';					-- Trig passe à zéro après 20 µs (fin du trig)
			elsif Tick1us = '1' then
				cmpt <= cmpt+1;					--incrémentation du compteur chaque 1 us
			
			end if;
	--------------------- E3 ---------------------		
		when E3 =>
			if Tick1us = '1' then
				trig <= '0';												
				State <= E4;									
			end if;
			
	--------------------- E4 ---------------------			
		when E4 =>
			if echo_rr = '1' then				-- attend le début de l'echo
				cmpt <= 0;						-- remise a zéro du compteur
				State <= E5;									
			end if;
			
	--------------------- E5 ---------------------	
		when E5 =>
			if echo_rr = '0' then				-- fin de l'echo
				State <= E6;
	
			elsif Tick1us = '1' then
				cmpt <= cmpt+1;					--incrémentation du compteur chaque us										
			
			end if;
			
	--------------------- E6 ---------------------	
		when E6 =>
			if cmpt <= 30000 then											-- si on est inférieur a 30000 (30 ms)
				State <= E7;												-- on passe a l'état7
	
			elsif cmpt > 30000 then											-- si on est supérieur a 30000 (30 ms)
				State <= E8;												-- on passe a l'état 8
				
			
			end if;	
			
	--------------------- E7 ---------------------			
		when E7 =>
			if Tick1us = '1' then
				dure_echo <= std_logic_vector(to_unsigned(cmpt/58,16));     --calcule de la distance /58 afin d'avoir la distance en cm
				State <= E8;												
			end if;	
			
	--------------------- E8 ---------------------	
		when E8 =>
			if cmpt > 60000 then											-- si on est sup a 60000 (60 ms)
				State <= E0;												-- on repasse a l'état init
				cmpt <= 0;													-- remise a 0 du compteur
	
			elsif Tick1us = '1' then
				cmpt <= cmpt+1;												--incrméentation du compteur
				State <= E8;												-- on reste dans l'état 8
			end if;
			
		when others => State <= E0;												-- autres cas , par defaut
		end case;
				
	end if;
end process;
      
END architecture;
