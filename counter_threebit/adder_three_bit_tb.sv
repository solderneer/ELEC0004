/ Start of testbench code to test adder_3bit.v module
`timescale 1ns/1ps
`include "adder_3bit.v"

module adder_3bit_tb;
logic a2, a1, a0, b2, b1, b0, s2, s1, s0, cout;

adder_3bit  dut (.s2 (s2), .s1 (s1), .s0 (s0), .cout (cout), .a2 (a2), .a1 (a1), .a0 (a0), .b2 (b2), .b1 (b1), .b0 (b0));

initial begin // Stimulus generator
$dumpfile("adder_3bit_tb.vcd");
$dumpvars(0, adder_3bit_tb);

a2 = 0; a1 = 0; a0 = 0;
b2 = 0; b1 = 0; b0 = 0;
#20;
a0 = 1;
#20;
b1 = 1;
// Add further test inputs here.

end

initial begin // Response monitor

$monitor("t=%3d a2=%d a1=%d a0=%d b2=%d b1=%d b0=%d cout=%d s2=%d s1=%d s0=%d", $time, a2, a1, a0, b2, b1, b0, cout, s2, s1, s0);

end

endmodule
// End of testbench code for adder_3bit.v module

