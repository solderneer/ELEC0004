// Start of testbench code for counter_project
`timescale 1ns/1ps
`include "counter_threebit.sv"

module counter_threebit_tb;
logic clear, clk, cout;
logic [2:0] a, f;

counter_threebit dut(.CLRN (clear), .CLK (clk), .COUT (cout), .A(a), .F(f)); // Instantiation of circuit to be tested

initial begin // Stimulus generator
$dumpfile("counter_threebit_tb.vcd");
$dumpvars(0, counter_threebit_tb);

a = 3'h1;

clear = 0;
#10; clear = 1;
#10; clk = 1;
#10; clk = 0; 
#10; clk = 1; 
#10; clk = 0;
#10; clk = 1;
#10; clk = 0; 
#10; clk = 1; 
#10; clk = 0;
#10; clk = 1;
#10; clk = 0; 
#10; clk = 1; 
#10; clk = 0;
#10; clk = 1;
#10; clk = 0;
#10; clk = 1;
#10; clk = 0;
#10; clk = 1;
#10; clear = 0;
#10; clear = 1;

// Add further test inputs.

end

initial begin // Response monitor

$monitor("t=%3d clk=%d clear=%d a2=%d a1=%d a0=%d f2=%d f1=%d f0=%d cout=%d", $time, clk, clear, a[2], a[1], a[0], f[2], f[1], f[0], cout);

end

endmodule
// End of testbench code for counter_3bit_v module

