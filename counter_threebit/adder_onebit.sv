module adder_onebit (
	input logic A,
	input logic  B,
	input logic  CIN,
	output logic  S,
	output logic  COUT
	);
	
	assign S = (A ^ B) ^ CIN;
	assign COUT = (A & B) | (CIN & (A ^ B));

endmodule : adder_onebit

