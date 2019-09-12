module ALU(a, b, binvert,cin,op,result,cout);
	input [31:0] a, b;
	input binvert, cin;
	input [1:0] op;
	output [32:0] result;
	output cout;
	wire [31:0] nb, baftermux, outand, outor, outadd;
	// NOT n1(nb, b);
	nb = ~b;
	bit32_2to1mux submux(baftermux, binvert, b, nb);
	bit32AND a(outand, a, b);
	bit32OR o(outor, a, b);
	
	
endmodule