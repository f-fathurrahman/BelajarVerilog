`timescale 1ns / 1ps
`include "mux2.v"

module test_mux2;
  reg i1, i2, s;
  wire o;

  mux2 uut( .x1(i1), .x2(i2), .s(s), .f(o) );

  initial begin
    $dumpfile("test_mux2.vcd");
    $dumpvars(0, test_mux2);

    i1 = 1'b0;
    i2 = 1'b1;
    s  = 1'b1;

    #1 i1 = 1'b1; i2 = 1'b0;
    #1 i2 = 1'b1;
    #1 s  = 1'b0; i1 = 1'b0;
    #1 i1 = 1'b1;

    #1 $finish;
  end

  initial begin
    $display(" t   i1   i2   s   o");
    $monitor("%2d   %b    %b    %b    %b", $time, i1, i2, s, o);
  end

endmodule
