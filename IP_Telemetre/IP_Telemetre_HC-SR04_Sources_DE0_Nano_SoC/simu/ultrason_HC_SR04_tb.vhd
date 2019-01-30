--test tb de la mae 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


entity ultrason_HC_SR04_tb is
end entity;

architecture RTL of ultrason_HC_SR04_tb is

  constant Fclock : positive := 50E6;
  constant Period : time := 1 sec / Fclock;
  constant Pulse : time := 10 us;

  signal Clk : std_logic := '0';
  signal Rst_n  : std_logic := '0';
  signal Done : boolean;
  --signal Tick1us   : std_logic;
  signal trig,echo   : std_logic;
  signal dure_echo   : std_logic_vector(15 downto 0);
  signal led   : std_logic_vector(7 downto 0);


BEGIN
	--clk <= not clk after period;
	rst_n <= '0','1' after Period;
	Clk <= '0' when done else not Clk after (Period / 2);
process
	variable t1, t2,t3: time := 0 ns;
	
  
  begin
	
	echo <= '0';
    

   -- test pour un echo de 1 ms
  	wait until rising_edge(trig);
  		t1 := NOW;
  	wait until falling_edge(trig);
  		t2 := NOW;
  		report "t2 - t1 = " & time'image(t2-t1) ;
  		assert (t2-t1) > Pulse report "Error : Pulse est inferieur a 10 us !" severity failure;
		wait for 1 us;
		
		if trig = '0' then
			report "valeur trig ok ";
		else 
		  report " ERREUR trig No ok !";
		end if;
		wait for 3 us;		
		echo <= '0';
		wait for 1 us;
		echo <= '1';
		wait for 1 ms;
		echo <= '0';
		
		--wait for 50 ms;
	
   -- test pour un echo de 10 ms
  	wait until rising_edge(trig);
  		t1 := NOW;
  	wait until falling_edge(trig);
  		t2 := NOW;
  		report "t2 - t1 = " & time'image(t2-t1) ;
  		assert (t2-t1) > Pulse report "Error : Pulse est inferieur a 10 us !" severity failure;
		wait for 1 us;
		
		if trig = '0' then
			report "valeur trig ok ";
		else 
		  report " ERREUR trig No ok !";
		end if;
		
		echo <= '0';
		wait for 1 us;
		echo <= '1';
		wait for 10 ms;
		echo <= '0';
		
		--wait for 50 ms;
	
   -- test pour un echo de 40 ms (pas d'obstacle)
  	wait until rising_edge(trig);
  		t1 := NOW;
  	wait until falling_edge(trig);
  		t2 := NOW;
  		report "t2 - t1 = " & time'image(t2-t1) ;
  		assert (t2-t1) > Pulse report "Error : Pulse est inferieur a 10 us !" severity failure;
		wait for 1 us;
		
		if trig = '0' then
			report "valeur trig ok ";
		else 
		  report " ERREUR trig No ok !";
		end if;
		
		echo <= '0';
		wait for 1 us;
		echo <= '1';
		wait for 40 ms;
		echo <= '0';
		wait for 1 us;
	
	-- test pour un echo de 5 ms 
  	wait until rising_edge(trig);
  		t1 := NOW;
  	wait until falling_edge(trig);
  		t2 := NOW;
  		report "t2 - t1 = " & time'image(t2-t1) ;
  		assert (t2-t1) > Pulse report "Error : Pulse est inferieur a 10 us !" severity failure;
		wait for 1 us;
		
		if trig = '0' then
			report "valeur trig ok ";
		else 
		  report " ERREUR trig No ok !";
		end if;
		
		echo <= '0';
		wait for 1 us;
		echo <= '1';
		wait for 5 ms;
		echo <= '0';
		wait for 1 ms;
		
  	report "**************** Termine !********************";
                                          
  
  	done <= true;
  wait;

end process;

-- component instantiation

  

  
  D1: entity work.telemetre_us_HC_SR04
    port map (
      Clk => Clk,
      Rst_n => Rst_n,
	  led => led,
      trig  => trig,
	  echo => echo,
      read_data => dure_echo,
	  chip_select => '1',
	  read_enable => '1'
	  );
	



end architecture;