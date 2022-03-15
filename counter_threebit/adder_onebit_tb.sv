`timescale 1ns/1ps
`include "adder_onebit.sv"

module adder_onebit_tb;
logic a, b, cin;
logic s, cout;

adder_onebit dut (.S (s), .COUT (cout), .A (a), .B (b), .CIN (cin)); // Instantiation of circuit to be tested

initial begin // Stimulus generator
$dumpfile("adder_onebit_tb.vcd");
$dumpvars(0, adder_onebit_tb);

a = 0; b = 0; cin= 0;
#10; a = 1; b = 0; cin = 0;
#10; a = 0; b = 1; cin = 0;
#10; a = 1; b = 1; cin = 0;
#10; a = 0; b = 0; cin = 1;
#10; a = 1; b = 0; cin = 1;
#10; a = 0; b = 1; cin = 1;
#10; a = 1; b = 1; cin = 1;
#10;
// Add further test inputs here.

end

initial begin // Response monitor

$monitor("t = %3d a = %d b = %d cin = %d cout = %d s = %d", $time, a, b, cin, cout, s);

end

endmodule
// End of testbench code for adder_1bit.v module

