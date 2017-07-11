module Pipe_MEM_WB
(
	input clk,
	
	input MemToReg_IN,
	input	Jal_IN,
	input RegWrite_IN,
	input [4:0]  rt_IN,
	input [31:0] ReadData_IN,
	input [31:0] ALUResult_IN,
	input [31:0] PC_PlusFour_IN,

	output reg MemToReg_OUT,
	output reg Jal_OUT,
	output reg RegWrite_OUT,
	output reg [4:0]  rt_OUT,
	output reg [31:0] ReadData_OUT,
	output reg [31:0] ALUResult_OUT,
	output reg [31:0] PC_PlusFour_OUT
);


always@(negedge clk)
	begin
		
		MemToReg_OUT = MemToReg_IN;
		Jal_OUT = Jal_IN;
		RegWrite_OUT = RegWrite_IN;
		rt_OUT = rt_IN;
		ReadData_OUT = ReadData_IN;
		ALUResult_OUT = ALUResult_IN;
		PC_PlusFour_OUT = PC_PlusFour_IN;

	end

endmodule
