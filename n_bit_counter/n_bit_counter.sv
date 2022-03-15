module n_bit_adder #(
	parameter WIDTH = 3
)(
	input wire [WIDTH - 1:0] A,
	input wire [WIDTH - 1:0] B,
	output wire [WIDTH - 1:0] S,
	output wire COUT
);
	
	wire [WIDTH:0] D = A + B;
	
	assign S = D[WIDTH - 1:0];
	assign COUT = D[WIDTH];

endmodule : n_bit_adder

module n_d_ff #(
	parameter WIDTH = 3
)(
	input logic CLK,
	input logic [WIDTH - 1:0] D,
	input logic CLRN, // async clear
	output logic [WIDTH - 1:0] Q
);

	// Store from D on clock, CLRN is async
	always @(posedge CLK or negedge CLRN) begin
		if(CLRN == 0)
			Q <= 0;
		else
			Q <= D;
	end

endmodule : n_d_ff

module n_bit_counter #(
	parameter WIDTH = 3
)(
	input logic [WIDTH - 1:0] A,
	input logic CLK,
	input logic CLRN,
	output logic [WIDTH - 1:0]F,
	output logic COUT
);

	logic [WIDTH - 1:0] D;
	
	n_bit_adder adder(A, F, D, COUT);
	
	n_d_ff register(CLK, D, CLRN, F);

endmodule : n_bit_counter
	
