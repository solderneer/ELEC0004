`include "adder_onebit.sv"

module adder_threebit(
	input logic [2:0] A,
	input logic [2:0] B,
	output logic [2:0] S,
	output logic COUT
	);
	
	logic C1, C2;
	
	adder_onebit A1 (A[0], B[0], 1'b0, S[0], C1);
	adder_onebit A2 (A[1], B[1], C1, S[1], C2);
	adder_onebit A3 (A[2], B[2], C2, S[2], COUT);

endmodule : adder_threebit
