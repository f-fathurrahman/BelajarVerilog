`timescale 1ns / 1ps
`include "D_ff.v"

module test_D_ff();

  reg D;
  wire Q;
  reg clk;

  D_ff UUT( D, clk, Q );

  initial clk = 0;
  always begin
    #10 clk = ~clk;
  end

  initial begin
    $dumpfile("test_D_ff.vcd");
    $dumpvars(0, test_D_ff);
  end

  initial begin
    $monitor("%8d %b %b %b", $time, clk, D, Q);
  end

  initial begin
    D = 0;
    #40 D = 1;
    #40 D = 0;
    #300 $finish;
  end

endmodule
