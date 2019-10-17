module encoder(out, in);
	input [7:0] in;
	output [2:0] out;
	assign out[0] = in[7] | in[5] |in[3] |in[1];
	assign out[1] = in[2] | in[3] | in[6] | in[7];
	assign out[2] = in[4] | in[5] | in[6] | in[7];
	//if (in == 8b'00000001) op = 3b'000);
endmodule