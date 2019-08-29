module testbench;
	reg [7:0] x,y;
	reg z;
	wire [7:0]s;
	wire c;
	ADDER8 fl(s,c,x,y,z);
	initial
	$monitor(,$time,"  x=%8b,y=%8b,z=%b,s=%8b,c=%b",x,y,z,s,c);
	initial
	begin
		#0 x=8'b00000000;y=8'b00000000;z=1'b0;
		#10 x=8'b00000001;y=8'b00000000;z=1'b0;
		#10 x=8'b00000001;y=8'b00000011;z=1'b0;
		#10 x=8'b00000111;y=8'b00000000;z=1'b0;
		#10 x=8'b11111111;y=8'b00000000;z=1'b0;
		#10 x=8'b11111111;y=8'b00000000;z=1'b1;
	end
endmodule