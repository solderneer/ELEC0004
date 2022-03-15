`include "adder_threebit.sv"
`include "d_ff_three.sv"

module counter_threebit (
	input logic [2:0] A,
	input logic CLK,
	input logic CLRN,
	output logic [2:0] F,
	output logic COUT
);

logic [2:0] D;

adder_threebit adder (A, F, D, COUT);
d_ff_three register (CLK, D, CLRN, F);

endmodule : counter_threebit

