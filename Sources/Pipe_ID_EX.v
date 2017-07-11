module Pipe_ID_EX
(
	input clk,
	
	input BranchEQ_IN,
	input BranchNE_IN,
	input Jump_IN,
	input MemRead_IN,
	input MemWrite_IN,
	input MemToReg_IN,
	input Jal_IN,
	input AluSrc_IN,
	input RegWrite_IN,
	input [4:0]  rt_IN,
	input [31:0] PC_PlusFour_IN,
	input [31:0] Shifted_Instruction_IN,
	input [31:0] RD1_IN,
	input [31:0] RD2_IN,
	input [31:0] ExtendedImm_IN,
	input [4:0]  Shamt_IN,
	input JrFlag_IN,
	input [3:0]  ALUOp_IN,
	
	output reg BranchEQ_OUT,
	output reg BranchNE_OUT,
	output reg Jump_OUT,
	output reg MemRead_OUT,
	output reg MemWrite_OUT,
	output reg MemToReg_OUT,
	output reg Jal_OUT,
	output reg AluSrc_OUT,
	output reg RegWrite_OUT,
	output reg [4:0]  rt_OUT,
	output reg [31:0] PC_PlusFour_OUT,
	output reg [31:0] Shifted_Instruction_OUT,
	output reg [31:0] RD1_OUT,
	output reg [31:0] RD2_OUT,
	output reg [31:0] ExtendedImm_OUT,
	output reg [4:0]  Shamt_OUT,
	output reg JrFlag_OUT,
	output reg [3:0]  ALUOp_OUT
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
		AluSrc_OUT = AluSrc_IN;
		RegWrite_OUT = RegWrite_IN;
		rt_OUT = rt_IN;
		PC_PlusFour_OUT = PC_PlusFour_IN;
		Shifted_Instruction_OUT = Shifted_Instruction_IN;
		RD1_OUT = RD1_IN;
		RD2_OUT = RD2_IN;
		ExtendedImm_OUT = ExtendedImm_IN;
		Shamt_OUT = Shamt_IN;
		JrFlag_OUT = JrFlag_IN;
		ALUOp_OUT = ALUOp_IN;
		
	end

endmodule
