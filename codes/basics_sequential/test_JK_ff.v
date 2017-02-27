`timescale 1ns / 1ps
`include "JK_ff_v3.v"

module test_JK_ff();

  reg J, K;
  wire Q, Qb;
  reg clk;
  reg rst;

  JK_ff UUT( J, K, clk, Q, Qb );

  initial clk = 0;
  always begin
    #10 clk = ~clk;
  end

  initial begin
    $dumpfile("test_JK_ff.vcd");
    $dumpvars(0, test_JK_ff);
  end

  initial begin
    $monitor("t=%8d clk=%b rst=%b J=%b K=%b Q=%b Qb=%b", $time, clk, rst, J, K, Q, Qb);
  end

  initial begin
    J = 1;
    K = 1;
    rst = 1;
    #1 J = 1; K = 0; // set
    #20 J = 1; K = 1; // toggle
    #20 J = 1; K = 1; // toggle
    #20 J = 1; K = 1; // toggle
    //#40 K = 0;
    #50 $finish;
  end

endmodule
