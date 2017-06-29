/******************************************************************
* Description
*	This is an 32-bit arithetic logic unit that can execute the next set of operations:
*		add
*		sub
*		or
*		and
*		nor
* This ALU is written by using behavioral description.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/

module ALU 
(
	input [3:0] ALUOperation,  
	input [31:0] A,
	input [31:0] B,
	input [4:0] Shamt,
	output reg Zero,
	output reg [31:0]ALUResult
);
localparam AND = 4'b0000;
localparam OR  = 4'b0001;// | ORI
localparam NOR = 4'b0010;
localparam ADD = 4'b0011;// | ADDI
localparam SUB = 4'b0100;// | BEQ
localparam LUI = 4'b0101;// <<
localparam SRL = 4'b0110;// <<
localparam SLL = 4'b0111;// <<
localparam LW  = 4'b1000;// <<
localparam SW  = 4'b1001;// <<
localparam BNE = 4'b1010;// <<

   
   always @ (A or B or ALUOperation)
     begin
		case (ALUOperation)
		  ADD: // add | addi
			ALUResult = A + B;
		  SUB: // sub | beq
			ALUResult = A - B;
			
		  AND: // and
			ALUResult = A & B;
			
		  OR:  // or  | ori
			ALUResult = A | B;
		  NOR: // nor
			ALUResult = ~(A|B);
			
		  LUI: // lui
			ALUResult = {B[15:0], 16'b0}; // Carga el INMEDIATO en la parte alta y concatena 16 0's en su parte baja

		  SRL: // srl
		   ALUResult= B >> Shamt; 
		  SLL: // sll
		   ALUResult= B << Shamt;                      
		  
		  LW:  // lw
			ALUResult = ( (A + B) - 32'h1001_0000 ) / 4;
		  SW:  // sw
			ALUResult = ( (A + B) - 32'h1001_0000 ) / 4;
			
		  BNE: // bne
		   ALUResult = ( (A - B) == 0)? 1'b1 : 1'b0;
			
		default:
			ALUResult= 0;
			
		endcase // case(control)
		Zero = (ALUResult == 0) ? 1'b1 : 1'b0;
		
     end // always @ (A or B or control)
endmodule // ALU