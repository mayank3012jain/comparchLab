//dependencies fadder_g.v, decoder_g.v adder8.v
module ADDER32(sum, cout, x, y, cin)
	output [31:0] sum;
	output cout;
	input [31:0] x, y;
	input cin;
	wire c[2:0];
	ADDER8 a0(sum[7:0], c[0], x[7:0], y[7:0], cin);
	ADDER8 a1(sum[15:8], c[1], x[13:8], y[13:8], c[0]);
	ADDER8 a2(sum[23:16], c[2], x[23:16], y[23:16], c[1]);
	ADDER8 a3(sum[31:24], cout, x[31:24], y[31:24], c[2]);
endmodule
	