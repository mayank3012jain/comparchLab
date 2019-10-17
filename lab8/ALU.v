module ALU(out, A, B, op);
	input [3:0] A, B;
	input [2:0] op;
	output reg [3:0] out;//sequential statement me reg likhna padta h lhs ko;
	always@ (op) //will change when op changes; always or initial is req for if
	begin
	if(op == 3'b000) //data flow will be like this out = op==3'b000?A+B:(op==3'b)
		out = A + B;
	else if(op == 3'b001)
		out = A-B;
	else if(op == 3'b010)
		out = A ^ B;
	else if(op == 3'b011)
		out = A | B;
	else if(op == 3'b100)
		out = A & B;
	else if(op == 3'b101)
		out = ~(A | B);
	else if(op == 3'b110)
		out = ~(A&B);
	else if(op == 3'b111)
		out = ~(A^B);
	end
endmodule