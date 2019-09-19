//dependency mux4to1.v
module bit32_4to1mux(out, in1, in2, in3, in4, sel);
	input [31:0] in1, in2, in3, in4;
	input [1:0] sel;
	output [31:0] out;
	genvar j;
	
	generate for(j=0; j<32; j=j+1)
		begin: muxgen
		mux4to1 m1(out[j], sel, in1[j], in2[j], in3[j], in4[j]);
		end
	endgenerate
	
endmodule

// module tb_32bit4to1mux;
 // reg [31:0] INP1, INP2, INP3, INP4;
 // reg [1:0]SEL;
 // wire [31:0] out;
 // bit32_4to1mux M1(out,INP1,INP2, INP3, INP4, SEL);
 // initial
 // begin
 // $monitor("%2d", $time, "| in1=%5h, in2=%5h, in3=%5h, sel=%b, out=%5h", INP1, INP2, INP3, SEL, out);
 // INP1=32'hA5A5;
 // INP2=32'h5A5A;
 // INP3=32'hFFFF;
 // INP4 = 32'hFAFA;
 // SEL=2'b00;
 // #100 SEL=2'b01;
 // #100 SEL=2'b10;
 // #100 SEL=2'b11;
 // #100 SEL=2'b00;
 // #1000 $finish;
 // end
// endmodule