module decoder2_4(register, reg_no);
	input [1:0] reg_no;
	output [3:0] register;
	wire n1, n0;
	not a(n1, reg_no[1]);
	not b(n0, reg_no[0]);
	and o0(register[0], n1, n0);
	and o1(register[1], n1, reg_no[0]);
	and o2(register[2], reg_no[1], n0);
	and o3(register[3], reg_no[1], reg_no[0]);
endmodule
	
	