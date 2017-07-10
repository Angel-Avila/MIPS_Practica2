module Pipe_MEM_WB
(
	input clk,
	
	input [31:0] WriteData_IN,

	output reg [31:0] WriteData_OUT
);


always@(negedge clk)
	begin
		
		WriteData_OUT = WriteData_IN;

	end

endmodule
