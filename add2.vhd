entity add2 is
  port (b1, b2, b3 : in BIT;
        c1, s1 : out BIT);
end add2;

architecture struct_2 of add2 is
begin
  s1<= ((b1 xor b2)xor b3);
  c1<= ((b1 xor b2) and b3) or (b1 and b2);
 end struct_2;