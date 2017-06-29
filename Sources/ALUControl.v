/******************************************************************
* Description
*	This is the control unit for the ALU. It receves an signal called 
*	ALUOp from the control unit and a signal called ALUFunction from
*	the intrctuion field named function.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module ALUControl
(
	input [5:0] ALUOp, // <<
	input [5:0] ALUFunction,
	output [3:0] ALUOperation,
	output JrFlag
);
									
								     //ALU Op - ALU Function
localparam R_Type_SLL    = 12'b00_0000_00_0000; // 00/00 // <<
localparam R_Type_SRL	 = 12'b00_0000_00_0010; // 00/02 // <<
localparam R_Type_ADD    = 12'b00_0000_10_0000; // 00/20
localparam R_Type_SUB    = 12'b00_0000_10_0010; // 00/22 // <<
localparam R_Type_AND    = 12'b00_0000_10_0100; // 00/24
localparam R_Type_OR     = 12'b00_0000_10_0101; // 00/25
localparam R_Type_NOR    = 12'b00_0000_10_0111; // 00/27
localparam R_Type_JR 	 = 12'b00_0000_00_1000; // 00/08	// <<
localparam I_Type_ADDI   = 12'b00_1000_xx_xxxx; // 08/00
localparam I_Type_ORI    = 12'b00_1101_xx_xxxx; // 0D/00
localparam I_Type_LUI    = 12'b00_1111_xx_xxxx; // 0F/00 // <<
localparam I_Type_LW     = 12'b10_0011_xx_xxxx; // 23/00 // <<
localparam I_Type_SW     = 12'b10_1011_xx_xxxx; // 2B/00 // <<
localparam I_Type_BEQ    = 12'b00_0100_xx_xxxx; // 04/00 // <<
localparam I_Type_BNE    = 12'b00_0101_xx_xxxx; // 05/00 // <<


reg [4:0] ALUControlValues;
wire [11:0] Selector;

assign Selector = {ALUOp, ALUFunction};

always@(Selector)begin
	casex(Selector)

		R_Type_AND:    ALUControlValues = 5'b0_0000;
		R_Type_OR: 		ALUControlValues = 5'b0_0001;// #
		R_Type_NOR:    ALUControlValues = 5'b0_0010;
		R_Type_ADD:    ALUControlValues = 5'b0_0011;// *
		R_Type_SUB:    ALUControlValues = 5'b0_0100;// =
		R_Type_SLL:    ALUControlValues = 5'b0_0111;// <<
		R_Type_SRL:    ALUControlValues = 5'b0_0110;// <<
		
    R_Type_JR: 		ALUControlValues = 5'b1_1011;// <<
    
		I_Type_ADDI:   ALUControlValues = 5'b0_0011;// *
		I_Type_ORI:    ALUControlValues = 5'b0_0001;// #
		I_Type_LUI:    ALUControlValues = 5'b0_0101;// <<
		I_Type_LW:     ALUControlValues = 5'b0_1000;// <<
		I_Type_SW:     ALUControlValues = 5'b0_1001;// <<
		I_Type_BEQ:    ALUControlValues = 5'b0_0100;// =
		I_Type_BNE:    ALUControlValues = 5'b0_1010;// <<
		default: ALUControlValues = 5'b0_1001;

	endcase
end

assign JrFlag = ALUControlValues[4];
assign ALUOperation = ALUControlValues[3:0];

endmodule