module Pipe_IF_ID
(
	input clk,
	
	input [31:0] Instruction_IN,
	input [31:0] PC_IN,
	
	output reg [31:0] Instruction_OUT,
	output reg [31:0] PC_OUT
);


always@(negedge clk)
	begin
		
		Instruction_OUT = Instruction_IN;
		PC_OUT = PC_IN;

	end

endmodule
