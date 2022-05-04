-------------------------------------
entity Test_add1 is
end Test_add1;
architecture Behavior of test_add1 is
  component_add1
    port (b1, b2 : in BIT;
	       c1, s1 : out BIT);
end component;
  signal b1, b2, b3 : BIT;
  signal c1, s1 : BIT;
 begin
   p1 : add1 port map(b1 => b1, b2 => b2, b3 => b3, c1 => c1, s1 => s1);
	b1 <= '0',
	      '0' after 50 ns,
			'0' after 100 ns,
			'0' after 150 ns,
			'1' after 200 ns;
			'1' after 250 ns;
			'1' after 300 ns;
			'1' after 350 ns;
	b2 <= '0',
	      '0' after 50 ns,
			'1' after 100 ns,
			'1' after 150 ns,
			'0' after 200 ns;
			'0' after 250 ns;
			'1' after 300 ns;
			'1' after 350 ns;
   b3 <= '0'
		   '1' after 50 ns,
			'0' after 100 ns,
			'1' after 150 ns,
			'0' after 200 ns;
			'1' after 250 ns;
			'0' after 300 ns;
			'1' after 350 ns;
end behavior;