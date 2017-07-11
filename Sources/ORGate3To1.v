module ORGate3To1
(
	input A,
	input B,
	input C,
	output reg D
);

always@(*)
	D = A | B | C;

endmodule