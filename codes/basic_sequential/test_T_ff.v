`timescale 1ns / 1ps
`include "T_ff_v2.v"

module test_T_ff();

  reg T;
  wire Q, Qb;
  reg clk;

  T_ff UUT( T, clk, Q, Qb );

  initial clk = 0;
  always begin
    #10 clk = ~clk;
  end

  initial begin
    $dumpfile("test_T_ff.vcd");
    $dumpvars(0, test_T_ff);
  end

  initial begin
    $monitor("t=%8d clk=%b T=%b Q=%b Qb=%b", $time, clk, T, Q, Qb);
  end

  initial begin
    T = 0;
    #1 T = 1;
    #50 T = 0;
    #50 $finish;
  end

endmodule
