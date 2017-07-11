module Pipe_EX_MEM
(
	input clk,
	
	input BranchEQ_IN,
	input BranchNE_IN,
	input Jump_IN,
	input MemRead_IN,
	input MemWrite_IN,
	input MemToReg_IN,
	input Jal_IN,
	input RegWrite_IN,
	input [4:0]  rt_IN,
	input [31:0] PC_PlusFour_IN,
	input [31:0] BranchAdder_IN,
	input [31:0] Shifted_Instruction_IN,
	input [31:0] RD2_IN,
	input [31:0] ALUResult_IN,
	input Zero_IN,
	input JrFlag_IN,
	
	output reg BranchEQ_OUT,
	output reg BranchNE_OUT,
	output reg Jump_OUT,
	output reg MemRead_OUT,
	output reg MemWrite_OUT,
	output reg MemToReg_OUT,
	output reg Jal_OUT,
	output reg RegWrite_OUT,
	output reg [4:0]  rt_OUT,
	output reg [31:0] PC_PlusFour_OUT,
	output reg [31:0] BranchAdder_OUT,
	output reg [31:0] Shifted_Instruction_OUT,
	output reg [31:0] RD2_OUT,
	output reg [31:0] ALUResult_OUT,
	output reg Zero_OUT,
	output reg JrFlag_OUT

);


always@(negedge clk)
	begin
		
		BranchEQ_OUT = BranchEQ_IN;
		BranchNE_OUT = BranchNE_IN;
		Jump_OUT = Jump_IN;
		MemRead_OUT = MemRead_IN;
		MemWrite_OUT = MemWrite_IN;
		MemToReg_OUT = MemToReg_IN;
		Jal_OUT = Jal_IN;
		RegWrite_OUT = RegWrite_IN;
		rt_OUT = rt_IN;
		PC_PlusFour_OUT = PC_PlusFour_IN;
		BranchAdder_OUT = BranchAdder_IN;
		Shifted_Instruction_OUT = Shifted_Instruction_IN;
		RD2_OUT = RD2_IN;
		ALUResult_OUT = ALUResult_IN;
		Zero_OUT = Zero_IN;
		JrFlag_OUT = JrFlag_IN;
		
	end

endmodule
