module mux3to1(out ,sel, in1, in2, in3);
	input in1, in2, in3;
	input [1:0] sel;
	output out;
	wire n1,n2,a1,a2,a3,a4;
	not n(n1,sel[1]);
	not nn(n2,sel[0]);
	and (a1,in1,n1,n2);
	and (a2,in2,n1,sel[0]);
	and (a3,in3,sel[1],n2);
	//and (a4,in[3],sel[0],sel[1]);
	or or1(out,a1,a2,a3);
endmodule