module UPC_Half_Adder (output s, c, input x, y);
  xor g1 (s, x, y);
  and g2 (c, x, y);
endmodule


module UPC_Full_Adder (output s, c, input x, y, z);
  wire	s1, c1, c2;

  UPC_Half_Adder HA1 (s1, c1, x, y);
  UPC_Half_Adder HA2 (s, c2, s1, z);
  or g1 (c, c2, c1);
endmodule



module UPC_Add_Sub_4 (output [3: 0] r, output c4, input [3:0]  a, b, input s);
	wire w1,w2,w3,t0,t1,t2,t3;
	
	
	xor g0 (t0,b[0],s);
	UPC_Full_Adder FA1 (r[0],w1,a[0],t0,s);
	xor g1 (t1,b[1],s);
	UPC_Full_Adder FA2 (r[1],w2,a[1],t1,w1);
	xor g2 (t2,b[2],s);
	UPC_Full_Adder FA3 (r[2],w3,a[2],t2,w2);
	xor g3 (t3,b[3],s);
	UPC_Full_Adder FA4 (r[3],c4,a[3],t3,w3);
	
endmodule





