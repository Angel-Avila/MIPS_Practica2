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
	output Jump,
	output [5:0]ALUOp
);
							 // OP Code
localparam R_Type      = 6'h00;
localparam I_Type_ADDI = 6'h08;
localparam I_Type_ORI  = 6'h0d;
localparam I_Type_LUI  = 6'h0f; // << 
localparam I_Type_LW	  = 6'h23; // <<
localparam I_Type_SW	  = 6'h2b; // <<
localparam I_Type_BEQ  = 6'h04; // << 
localparam I_Type_BNE  = 6'h05; // << 
localparam J_Type_J	  = 6'h02; // <<
localparam J_Type_JAL  = 6'h03; // <<

reg [15:0] ControlValues; // << 

always@(OP) begin
	casex(OP)

		R_Type:       ControlValues = 15'b01_001_00_00_000000; // 00 // <<
		I_Type_ADDI:  ControlValues = 15'b00_101_00_00_001000; // 08 // <<
		I_Type_ORI:   ControlValues = 15'b00_101_00_00_001101; // 0d // <<
		I_Type_LUI:   ControlValues = 15'b00_101_00_00_001111; // 0f // <<
		I_Type_LW:    ControlValues = 15'b00_111_10_00_100011; // 23 // <<
		I_Type_SW:    ControlValues = 15'b00_100_01_00_101011; // 2b // <<
		I_Type_BEQ:   ControlValues = 15'b00_000_00_01_000100; // 04 // <<
		I_Type_BNE:   ControlValues = 15'b00_000_00_10_000101; // 05 // <<
		J_Type_J:     ControlValues = 15'b10_000_00_00_000010; // 02 // <<
		J_Type_JAL:   ControlValues = 15'b10_001_00_00_000011; // 03 // <<
		
		default:
			ControlValues = 15'b000000000000000; // <<
		endcase
end	

assign Jump			= ControlValues[14];	
assign RegDst 		= ControlValues[13];
assign ALUSrc 		= ControlValues[12];
assign MemtoReg	= ControlValues[11];
assign RegWrite	= ControlValues[10];
assign MemRead 	= ControlValues[9];
assign MemWrite 	= ControlValues[8];
assign BranchNE	= ControlValues[7];
assign BranchEQ 	= ControlValues[6];
assign ALUOp 		= ControlValues[5:0]; //GreenCard OpCode // << Se incrementó de 

endmodule


