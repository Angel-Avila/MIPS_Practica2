/******************************************************************
* Description
*	This is the top-level of a MIPS processor that can execute the next set of instructions:
*		add
*		addi
*		sub
*		ori
*		or
*		bne
*		beq
*		and
*		nor
* This processor is written Verilog-HDL. Also, it is synthesizable into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be execute. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	12/06/2016
******************************************************************/


module MIPS_Processor
#(
	parameter MEMORY_DEPTH = 256
)

(
	// Inputs
	input clk,
	input reset,
	input [7:0] PortIn,
	// Output
	output [31:0] ALUResultOut,
	output [31:0] PortOut
);
//******************************************************************/
//******************************************************************/
assign  PortOut = 0;

//******************************************************************/
//******************************************************************/
// Data types to connect modules
wire BranchNE_wire;
wire BranchEQ_wire;
wire RegDst_wire;
wire NotZeroANDBrachNE;
wire ZeroANDBrachEQ;
wire ORForBranch;
wire ALUSrc_wire;
wire RegWrite_wire;
wire Zero_wire;
wire JrFlag_wire; 							// <<
wire MemRead_wire; 							// <<
wire MemtoReg_wire; 							// <<
wire MemWrite_wire; 							// <<
wire Jump_wire;								// <<
wire Jal_wire;									// <<
wire [31:0] ReadData_wire;					// <<
wire [31:0] WriteData_wire;				// <<
wire [5:0] ALUOp_wire; 						// <<
wire [27:0] JumpShift_wire;				// <<
wire [31:0] ShiftedJump_wire;				// <<
wire [31:0] MUX_ForJumpOutput_wire; 	// <<
wire [31:0] MUX_ForJrOutput_wire; 		// <<
wire [31:0] MUX_ForJalOutput_wire;		// <<
wire [31:0] MUX_ForReg_PCOutput_wire; 	// <<

wire [31:0] ID_PC_wire;
wire [31:0] ID_instruction_wire;

wire EX_BranchEQ_wire;
wire EX_BranchNE_wire;
wire EX_Jump_wire;
wire EX_MemRead_wire;
wire EX_MemWrite_wire;
wire EX_MemToReg_wire;
wire EX_Jal_wire;
wire [31:0] EX_PCPlusFour_wire;
wire [31:0] EX_ShiftedInstr_wire;
wire [31:0] EX_A_wire;
wire [31:0] EX_B_wire;
wire [31:0] EX_RD2_wire;
wire [4:0]  EX_Shamt_wire;
wire [3:0]  EX_AluOp_wire;
wire EX_JrFlag_wire;

wire MEM_BranchEQ_wire;
wire MEM_BranchNE_wire;
wire MEM_Jump_wire;
wire MEM_MemRead_wire;
wire MEM_MemWrite_wire;
wire MEM_MemToReg_wire;
wire MEM_Jal_wire;
wire [31:0] MEM_PC_PlusFour_wire;
wire [31:0] MEM_BranchAdder_wire;
wire [31:0] MEM_Shifted_Instruction_wire;
wire [31:0] MEM_RD2_wire;
wire [31:0] MEM_ALUResult_wire;
wire MEM_Zero_wire;
wire MEM_JrFlag_wire;
	
wire [31:0] WB_WriteData_wire;	
	
wire [3:0] ALUOperation_wire;
wire [4:0] WriteRegister_wire;
wire [31:0] MUX_PC_wire;
wire [31:0] PC_wire;
wire [31:0] Instruction_wire;
wire [31:0] ReadData1_wire;
wire [31:0] ReadData2_wire;
wire [31:0] InmmediateExtend_wire;
wire [31:0] ReadData2OrInmmediate_wire;
wire [31:0] ALUResult_wire;
wire [31:0] PC_4_wire;
wire [31:0] InmmediateExtendAnded_wire;
wire [31:0] PCtoBranch_wire;
/////////////////////////////////////////
wire [31:0] ShiftedInmmediateExtend_wire;
wire [31:0] BranchAdder_wire;
wire BranchORGate_wire;
wire BranchANDZero_wire;
wire [31:0] MUX_ForBranch_wire;

integer ALUStatus;


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
ControlUnit
(
	.OP(Instruction_wire[31:26]),
	.RegDst(RegDst_wire),
	.BranchNE(BranchNE_wire),
	.BranchEQ(BranchEQ_wire),
	.ALUOp(ALUOp_wire),
	.ALUSrc(ALUSrc_wire),
	.RegWrite(RegWrite_wire),
	.MemRead(MemRead_wire),		// <<
	.MemtoReg(MemtoReg_wire),	// <<
	.Jump(Jump_wire),				// <<
	.MemWrite(MemWrite_wire),	// <<
	.Jal(Jal_wire)					// <<
);

PC_Register
ProgramCounter
(
	.clk(clk),
	.reset(reset),
	.NewPC(MUX_ForJrOutput_wire), 
	.PCValue(PC_wire)
);


ProgramMemory
#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
ROMProgramMemory
(
	.Address(PC_wire),
	.Instruction(Instruction_wire)
);

Adder32bits
PC_Puls_4
(
	.Data0(ID_PC_wire),
	.Data1(4),
	
	.Result(PC_4_wire)
);


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/

//    _____ _            _ _            
//   |  __ (_)          | (_)           
//   | |__) | _ __   ___| |_ _ __   ___ 
//   |  ___/ | '_ \ / _ \ | | '_ \ / _ \
//   | |   | | |_) |  __/ | | | | |  __/
//   |_|   |_| .__/ \___|_|_|_| |_|\___|
//           | |                        
//           |_|                        

Pipe_IF_ID
FetchDecode_Register 
(
	.clk(clk),
	
	.Instruction_IN(Instruction_wire),
	.PC_IN(PC_wire),
	
	.Instruction_OUT(ID_instruction_wire),
	.PC_OUT(ID_PC_wire)
);

Pipe_ID_EX
DecodeExecute_Register
(
	.clk(clk),
	
	.BranchEQ_IN(BranchEQ_wire),
	.BranchNE_IN(BranchNE_wire),
	.Jump_IN(Jump_wire),
	.MemRead_IN(MemRead_wire),
	.MemWrite_IN(MemWrite_wire),
	.MemToReg_IN(MemtoReg_wire),
	.Jal_IN(Jal_wire),
	
	.PC_PlusFour_IN(PC_4_wire),
	.Shifted_Instruction_IN(ShiftedJump_wire),
	
	.A_IN(ReadData1_wire),
	.B_IN(ReadData2OrInmmediate_wire),
	
	.RD2_IN(ReadData2_wire),
	
	.Shamt_IN(Instruction_wire[10:6]),
	
	.JrFlag_IN(JrFlag_wire),
	.ALUOp_IN(ALUOperation_wire),
	
	
	
	
	.BranchEQ_OUT(EX_BranchEQ_wire),
	.BranchNE_OUT(EX_BranchNE_wire),
	.Jump_OUT(EX_Jump_wire),
	.MemRead_OUT(EX_MemRead_wire),
	.MemWrite_OUT(EX_MemWrite_wire),
	.MemToReg_OUT(EX_MemToReg_wire),
	.Jal_OUT(EX_Jal_wire),
	
	.PC_PlusFour_OUT(EX_PCPlusFour_wire),
	.Shifted_Instruction_OUT(EX_ShiftedInstr_wire),
	
	.A_OUT(EX_A_wire),
	.B_OUT(EX_B_wire),
	
	.RD2_OUT(EX_RD2_wire),
	
	.Shamt_OUT(EX_Shamt_wire),
	
	.JrFlag_OUT(EX_JrFlag_wire),
	.ALUOp_OUT(EX_AluOp_wire)
);

Pipe_EX_MEM
ExecuteMemory_Register
(
	.clk(clk),
	
	.BranchEQ_IN(EX_BranchEQ_wire),
	.BranchNE_IN(EX_BranchNE_wire),
	.Jump_IN(EX_Jump_wire),
	.MemRead_IN(EX_MemRead_wire),
	.MemWrite_IN(EX_MemWrite_wire),
	.MemToReg_IN(EX_MemToReg_wire),
	.Jal_IN(EX_Jal_wire),
	
	.PC_PlusFour_IN(EX_PCPlusFour_wire),
	.BranchAdder_IN(BranchAdder_wire),
	.Shifted_Instruction_IN(EX_ShiftedInstr_wire),
	
	.RD2_IN(EX_RD2_wire),
	
	.ALUResult_IN(ALUResult_wire),
	.Zero_IN(Zero_wire),
	
	.JrFlag_IN(EX_JrFlag_wire),
	
	
	
	
	.BranchEQ_OUT(MEM_BranchEQ_wire),
	.BranchNE_OUT(MEM_BranchNE_wire),
	.Jump_OUT(MEM_Jump_wire),
	.MemRead_OUT(MEM_MemRead_wire),
	.MemWrite_OUT(MEM_MemWrite_wire),
	.MemToReg_OUT(MEM_MemToReg_wire),
	.Jal_OUT(MEM_Jal_wire),
	
	.PC_PlusFour_OUT(MEM_PC_PlusFour_wire),
	.BranchAdder_OUT(MEM_BranchAdder_wire),
	.Shifted_Instruction_OUT(MEM_Shifted_Instruction_wire),
	
	.RD2_OUT(MEM_RD2_wire),
	
	.ALUResult_OUT(MEM_ALUResult_wire),
	.Zero_OUT(MEM_Zero_wire),
	
	.JrFlag_OUT(MEM_JrFlag_wire)
);

Pipe_MEM_WB
MemoryWriteback_Register 
(
	.clk(clk),
	
	.WriteData_IN(MUX_ForReg_PCOutput_wire),

	.WriteData_OUT(WB_WriteData_wire)
);

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/

//  ____                       _               
// |  _ \                     | |              
// | |_) |_ __ __ _ _ __   ___| |__   ___  ___ 
// |  _ <| '__/ _` | '_ \ / __| '_ \ / _ \/ __|
// | |_) | | | (_| | | | | (__| | | |  __/\__ \
// |____/|_|  \__,_|_| |_|\___|_| |_|\___||___/
//                                             

ShiftLeft2
BranchShifter 
(   
	.DataInput(EX_B_wire),
   .DataOutput(ShiftedInmmediateExtend_wire)

);

ShiftLeft2
JumpShifter 
(   
	.DataInput({6'b0, ID_instruction_wire[25:0]}),
   .DataOutput(ShiftedJump_wire)

);

Adder32bits
BranchAdder
(
	.Data0(PC_4_wire),
	.Data1(ShiftedInmmediateExtend_wire),
	
	.Result(BranchAdder_wire)
);



ORGate
BranchORGate
(
	.A(MEM_BranchEQ_wire),
	.B(MEM_BranchNE_wire),
	.C(BranchORGate_wire)
);


ANDGate
BranchANDGate
(
	.A(MEM_Zero_wire),
	.B(BranchORGate_wire),
	.C(BranchANDZero_wire)
);


Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForBranch
(
	.Selector(BranchANDZero_wire),
	.MUX_Data0(MEM_PC_PlusFour_wire),
	.MUX_Data1(MEM_BranchAdder_wire),
	
	.MUX_Output(MUX_ForBranch_wire)

);

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForJumps
(
	.Selector(MEM_Jump_wire),
	.MUX_Data0(MUX_ForBranch_wire),
	.MUX_Data1({4'b0, MEM_Shifted_Instruction_wire}),
	
	.MUX_Output(MUX_ForJumpOutput_wire)
);

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForJr
(
	.Selector(MEM_JrFlag_wire),
	.MUX_Data0(MUX_ForJumpOutput_wire),
	.MUX_Data1(MEM_ALUResult_wire),
	
	.MUX_Output(MUX_ForJrOutput_wire)
);

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForJal
(
	.Selector(Jal_wire),
	.MUX_Data0(WriteRegister_wire),
	.MUX_Data1(31),
	
	.MUX_Output(MUX_ForJalOutput_wire)
);

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForReg_PC
(
	.Selector(MEM_Jal_wire),
	.MUX_Data0(WriteData_wire),
	.MUX_Data1(MEM_PC_PlusFour_wire),
	
	.MUX_Output(MUX_ForReg_PCOutput_wire)
);

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForRTypeAndIType
(
	.Selector(RegDst_wire),
	.MUX_Data0(ID_instruction_wire[20:16]),
	.MUX_Data1(ID_instruction_wire[15:11]),
	
	.MUX_Output(WriteRegister_wire)

);



RegisterFile
Register_File
(
	.clk(clk),
	.reset(reset),
	.RegWrite(RegWrite_wire),
	.WriteRegister(MUX_ForJalOutput_wire),
	.ReadRegister1(ID_instruction_wire[25:21]),
	.ReadRegister2(ID_instruction_wire[20:16]),
	.WriteData(WB_WriteData_wire),
	.ReadData1(ReadData1_wire),
	.ReadData2(ReadData2_wire)

);

SignExtend
SignExtendForConstants
(   
	.DataInput(ID_instruction_wire[15:0]),
   .SignExtendOutput(InmmediateExtend_wire)
);



Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForReadDataAndInmediate
(
	.Selector(ALUSrc_wire),
	.MUX_Data0(ReadData2_wire),
	.MUX_Data1(InmmediateExtend_wire),
	
	.MUX_Output(ReadData2OrInmmediate_wire)

);


ALUControl
ArithmeticLogicUnitControl
(
	.ALUOp(ALUOp_wire),
	.ALUFunction(ID_instruction_wire[5:0]),
	.ALUOperation(ALUOperation_wire),
	.JrFlag(JrFlag_wire)
);

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForWriteData
(
	.Selector(MEM_MemToReg_wire),
	.MUX_Data0(MEM_ALUResult_wire),
	.MUX_Data1(ReadData_wire),
	
	.MUX_Output(WriteData_wire)
);

DataMemory
Data_Memory
(
	.WriteData(MEM_RD2_wire),
	.Address(MEM_ALUResult_wire),
	.MemWrite(MEM_MemWrite_wire),
	.MemRead(MEM_MemRead_wire),
	.clk(clk),
	.ReadData(ReadData_wire)
);


ALU
ArithmeticLogicUnit 
(
	.ALUOperation(EX_AluOp_wire),
	.A(EX_A_wire),
	.B(EX_B_wire),
	.Shamt(EX_Shamt_wire),
	.Zero(Zero_wire),
	.ALUResult(ALUResult_wire)
);

assign ALUResultOut = ALUResult_wire;


endmodule

