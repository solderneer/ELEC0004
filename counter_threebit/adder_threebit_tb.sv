// Start of testbench code to test adder_3bit.v module
`timescale 1ns/1ps
`include "adder_threebit.sv"

module adder_threebit_tb;
logic [2:0] a, b, s;
logic cout;

adder_threebit  dut (a, b, s, cout);

initial begin // Stimulus generator
$dumpfile("adder_threebit_tb.vcd");
$dumpvars(0, adder_threebit_tb);

a = 3'h0;
b = 3'h0;

#20; a = 3'h4; b=3'h1;
#20 a = 3'h4; b=3'h4;
// Add further test inputs here.

end

initial begin // Response monitor

$monitor("t=%3d a2=%d a1=%d a0=%d b2=%d b1=%d b0=%d cout=%d s2=%d s1=%d s0=%d", $time, a[2], a[1], a[0], b[2], b[1], b[0], cout, s[2], s[2], s[0]);

end

endmodule
// End of testbench code for adder_3bit.v module

