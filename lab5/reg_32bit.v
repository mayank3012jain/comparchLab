module reg_32bit(q, d, clk, reset);
	input [31:0] d;
	output [31:0] q;
	input clk, reset;
	genvar i;
	generate for(i=0; i<32; i = i+1)
		begin: loop
			dff_sync_clear  d1(q[i], d[i], clk, reset);
		end
	endgenerate
endmodule

module tb32reg;
reg [31:0] d;
reg clk,reset;
wire [31:0] q;
reg_32bit R(q,d,clk,reset);
always @(clk)
#5 clk<=~clk;
initial
begin
$monitor($time, " d=%b, q =%b", d,q);
clk= 1'b1;
reset=1'b0;//reset the register
#20 reset=1'b1;
	d=32'hAFAFAFAF;
#200 $finish;
end
endmodule