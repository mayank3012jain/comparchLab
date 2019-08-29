module testbench;
	reg [31:0] x,y;
	reg z;
	wire [31:0]s;
	wire c;
	ADDER8 fl(s,c,x,y,z);
	initial
	$monitor(,$time,"  x=%32b,y=%32b,z=%b,s=%32b,c=%b",x,y,z,s,c);
	initial
	begin
		#0 x=8'b00000000111111111111;y=8'b00000000;z=1'b0;

	end
endmodule