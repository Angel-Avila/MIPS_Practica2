/******************************************************************
* Description
*	This is control unit for the MIPS processor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module Control
(
	input [5:0]OP,
	
	output RegDst,
	output BranchEQ,
	output BranchNE,
	output MemRead,
	output MemtoReg,
	output MemWrite,
	output ALUSrc,
	output RegWrite,
	output [5:0]ALUOp
);
							 // OP Code
localparam R_Type      = 6'h00;
localparam I_Type_ADDI = 6'h08;
localparam I_Type_ORI  = 6'h0d;
localparam I_Type_LUI  = 6'h0f; // << 


reg [14:0] ControlValues; // << 

always@(OP) begin
	casex(OP)
		R_Type:       ControlValues = 14'b1_001_00_00_000000; // 00 // << 
		I_Type_ADDI:  ControlValues = 14'b0_101_00_00_001000; // 08 // << 
		I_Type_ORI:   ControlValues = 14'b0_101_00_00_001101; // 0d // << 
		I_Type_LUI:   ControlValues = 14'b0_101_00_00_001111; // 0f // << 
		
		default:
			ControlValues = 14'b00000000000000; // <<
		endcase
end	
	
assign RegDst 		= ControlValues[13];
assign ALUSrc 		= ControlValues[12];
assign MemtoReg	= ControlValues[11];
assign RegWrite	= ControlValues[10];
assign MemRead 	= ControlValues[9];
assign MemWrite 	= ControlValues[8];
assign BranchNE	= ControlValues[7];
assign BranchEQ 	= ControlValues[6];
assign ALUOp 		= ControlValues[5:0]; //GreenCard OpCode // << 

endmodule


