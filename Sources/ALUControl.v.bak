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
	output [3:0] ALUOperation

);
									
								      //ALU Op_ALU Function
localparam R_Type_SLL    = 12'b00_0000_00_0000; // 00/00 // <<
localparam R_Type_SRL	 = 12'b00_0000_00_0010; // 00/02 // <<
localparam R_Type_ADD    = 12'b00_0000_10_0000; // 00/20
localparam R_Type_SUB    = 12'b00_0000_10_0010; // 00/22 // <<
localparam R_Type_AND    = 12'b00_0000_10_0100; // 00/24
localparam R_Type_OR     = 12'b00_0000_10_0101; // 00/25
localparam R_Type_NOR    = 12'b00_0000_10_0111; // 00/27
localparam I_Type_ADDI   = 12'b00_1000_xx_xxxx; // 08/00
localparam I_Type_ORI    = 12'b00_1101_xx_xxxx; // 0D/00
localparam I_Type_LUI    = 12'b00_1111_xx_xxxx; // 0F/00 // <<
localparam I_Type_LW     = 12'b10_0011_xx_xxxx; // 23/00 // <<

reg [3:0] ALUControlValues;
wire [11:0] Selector;

assign Selector = {ALUOp, ALUFunction};

always@(Selector)begin
	casex(Selector)
		R_Type_AND:    ALUControlValues = 4'b0000;
		R_Type_OR: 		ALUControlValues = 4'b0001;// #
		R_Type_NOR:    ALUControlValues = 4'b0010;
		R_Type_ADD:    ALUControlValues = 4'b0011;// *
		R_Type_SUB:    ALUControlValues = 4'b0100; // <<
		R_Type_SLL:    ALUControlValues = 4'b0111; // <<
		R_Type_SRL:    ALUControlValues = 4'b0110; // <<
		I_Type_ADDI:   ALUControlValues = 4'b0011;// *
		I_Type_ORI:    ALUControlValues = 4'b0001;// #
		I_Type_LUI:    ALUControlValues = 4'b0101; // <<
		default: ALUControlValues = 4'b1001;
	endcase
end


assign ALUOperation = ALUControlValues;

endmodule