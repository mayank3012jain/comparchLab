//dependencies fadder_g.v, decoder_g.v
module ADDER8 (s, cout, x, y, cin);
	input [7:0] x, y;
	input cin;
	output [7:0]s;
	output cout;
	wire c[6:0];
	FADDER f0(s[0], c[0], x[0], y[0], cin);
	FADDER f1(s[1], c[1], x[1], y[1], c[0]);
	FADDER f2(s[2], c[2], x[2], y[2], c[1]);
	FADDER f3(s[3], c[3], x[3], y[3], c[2]);
	FADDER f4(s[4], c[4], x[4], y[4], c[3]);
	FADDER f5(s[5], c[5], x[5], y[5], c[4]);
	FADDER f6(s[6], c[6], x[6], y[6], c[5]);
	FADDER f7(s[7], cout, x[7], y[7], c[6]);
endmodule