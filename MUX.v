module mux (S1, S0, A, B, C, D, Y);
	input S1, S0;
	input [3:0]A;
	input [3:0]B;
	input [3:0]C;
	input [3:0]D;
	output [3:0]Y;
	assign Y[0] = ((~S1) & (~S0) & A[0]) | ((~S1) & S0 & B[0])|(S1 & (~S0) & C[0])|(S0 & S1 & D[0]);
	assign Y[1] = ((~S1) & (~S0) & A[1]) | ((~S1) & S0 & B[1])|(S1 & (~S0) & C[1])|(S0 & S1 & D[1]);
	assign Y[2] = ((~S1) & (~S0) & A[2]) | ((~S1) & S0 & B[2])|(S1 & (~S0) & C[2])|(S0 & S1 & D[2]);
	assign Y[3] = ((~S1) & (~S0) & A[3]) | ((~S1) & S0 & B[3])|(S1 & (~S0) & C[3])|(S0 & S1 & D[3]);
endmodule	
	
	
	