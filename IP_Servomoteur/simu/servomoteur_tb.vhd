--test tb de la mae 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


entity servomoteur_tb is
end entity;

architecture RTL of servomoteur_tb is

  constant Fclock : positive := 50E6;
  constant Period : time := 1 sec / Fclock;
--  constant Pulse : time := 10 us;

  signal Clk : std_logic := '0';
  signal Rst_n  : std_logic := '0';
  signal Done : boolean;
  signal switch   : std_logic_vector(1 downto 0);
  signal pulse   : std_logic;
  signal read_data : std_logic_vector(7 downto 0);
  signal chip_select : std_logic;
  signal read_enable : std_logic;
BEGIN
	--clk <= not clk after period;
	rst_n <= '0','1' after Period;
	Clk <= '0' when done else not Clk after (Period / 2);
process
	variable t1, t2,t3: time := 0 ns;
  begin
  	wait until rst_n = '1';
  	wait until rising_edge(clk);
	switch <= 	"00";
  	wait until pulse = '1';
  	wait until pulse = '1';
   -- tester la position 0 degre
  		t1 := NOW;
  	wait until pulse = '0';
  		t2 := NOW;

	report "tester la position 0 degre" ;
	report "t2 - t1 = " & time'image(t2-t1) ;
  assert (t2-t1) < (500 us + Period) or (t2-t1) > (500 us - Period) report "Error : Pulse n'est pas egale a  a 0,5 ms !" severity failure;

   -- tester la position 45 degre  	
	switch <= 	"01";
 	wait until pulse = '1';
  	 t3 := NOW;  
  		assert (t3-t1) < (20000 us + Period) or (t2-t1) > (20000 us - Period) report "Error : La periode du PWM doit etre 20 ms!" severity failure;
  		t1 := NOW;       
	wait until pulse = '0';
  		t2 := NOW;
  report "tester la position 45 degre" ;
	report "t2 - t1 = " & time'image(t2-t1) ;
	assert (t2-t1) < (1000 us + Period) or (t2-t1) > (1000 us - Period) report "Error : Pulse est superieur a 1,0 ms !" severity failure;
 
   -- tester la position 135 degre 
	switch <= 	"10";  
  wait until pulse = '1';
   	 t3 := NOW;  
  		assert (t3-t1) < (20000 us + Period) or (t2-t1) > (20000 us - Period) report "Error : La periode du PWM doit etre 20 ms!" severity failure;
  		t1 := NOW;         
 	wait until pulse = '0';
  		t2 := NOW;

	report "tester la position 135 degre" ;
	report "t2 - t1 = " & time'image(t2-t1) ;
  assert (t2-t1) < (2000 us + Period) or (t2-t1) > (2000 us - Period) report "Error : Pulse est superieur a 2,0 ms !" severity failure; 	                            
 
  -- tester la position 180 degre 
	switch <= 	"11";
  wait until pulse = '1';
  	 t3 := NOW;  
  		assert (t3-t1) < (20000 us + Period) or (t2-t1) > (20000 us - Period) report "Error : La periode du PWM doit etre 20 ms!" severity failure;
  		t1 := NOW;                
 	wait until pulse = '0';
  		t2 := NOW;

	report "tester la position 180 degre(1)" ;
	report "t2 - t1 = " & time'image(t2-t1) ;
  assert (t2-t1) < (2500 us + Period) or (t2-t1) > (2500 us - Period) report "Error : Pulse est superieur a 2,5 ms !" severity failure;
-- Teste continue (repetition)
	report "tester la position 180 degre(2)" ;
  wait until pulse = '1';
  	 t3 := NOW;  
  		assert (t3-t1) < (20000 us + Period) or (t2-t1) > (20000 us - Period) report "Error : La periode du PWM doit etre 20 ms!" severity failure;
  		t1 := NOW;                
 	wait until pulse = '0';
  		t2 := NOW;

	report "t2 - t1 = " & time'image(t2-t1) ;
  assert (t2-t1) < (2500 us + Period) or (t2-t1) > (2500 us - Period) report "Error : Pulse est superieur a 2,5 ms !" severity failure;
-- Teste continue (repetition)
	report "tester la position 180 degre(3)" ;
  wait until pulse = '1';
  	 t3 := NOW;  
  		assert (t3-t1) < (20000 us + Period) or (t2-t1) > (20000 us - Period) report "Error : La periode du PWM doit etre 20 ms!" severity failure;
  		t1 := NOW;                
 	wait until pulse = '0';
  		t2 := NOW;

	report "t2 - t1 = " & time'image(t2-t1) ;
  assert (t2-t1) < (2500 us + Period) or (t2-t1) > (2500 us - Period) report "Error : Pulse est superieur a 2,5 ms !" severity failure;



  report "**************** Termine !********************";
  	done <= true;
  wait;

end process;

-- component instantiation
  D1: entity work.df9gms
    port map (
      Clk => Clk,
      Rst_n => Rst_n,
	  pulse => pulse,
      switch  => switch,
      read_data => read_data,
	  chip_select => chip_select,
	  read_enable => read_enable
	  );



end architecture;