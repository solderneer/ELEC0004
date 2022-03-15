module d_ff_three(
	input logic CLK,
	input logic [2:0] D,
	input logic CLRN, // async clear
	output logic [2:0] Q
	);
	
	always @(posedge CLK or negedge CLRN) begin
		if(CLRN == 0)
			Q <= 0;
		else
			Q <= D;
	end

endmodule : d_ff_three

