//dependency bit8_2to1mux.v mux2to1.v
module bit32_2to1mux(out, sel, in1, in2);
	input [31:0] in1, in2;
	input sel;
	output [31:0] out;
	genvar j;
	
	generate for(j=0; j<32; j=j+8)
		begin: muxgen
		bit8_2to1mux m1(out[j+7:j], sel, in1[j+7:j], in2[j+7:j]);
		end
	endgenerate
	
endmodule

module tb_8bit2to1mux;
 reg [31:0] INP1, INP2;
 reg SEL;
 wire [31:0] out;
 bit32_2to1mux M1(out,SEL,INP1,INP2);
 initial
 begin
 $monitor("%2d", $time, "| in1=%h, in2=%h, sel=%b, out=%h", INP1, INP2, SEL, out);
 INP1=32'hA5A5;
 INP2=32'h5A5A;
 SEL=1'b0;
 #100 SEL=1'b1;
 #1000 $finish;
 end
endmodule
	