module RegFile(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);
	input clk, reset, RegWrite;//regwrite is control bit
	output [31:0] ReadData1, ReadData2;
	input [1:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;
	wire [3:0] dc_out;
	decoder2_4 dc(dc_out, WriteReg);