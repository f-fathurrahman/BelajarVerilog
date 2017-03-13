`timescale 1ns / 1ps
`include "odd_zeros_detector.v"

// give out 0 if number of 0 is odd, 1 otherwise
module test_odd_zeros_detector();

  reg A, B, C;
  wire led;

  odd_zeros_detector UUT( A, B, C, led );

  initial begin
    A = 0; B = 1; C = 1;
    #1 A = 1;
    #1 A = 0; B = 0; C = 0;
    #1 A = 1;
    #1 A = 1; B = 1; C = 1;
    #1 $finish;
  end

  initial begin
    $monitor("A = %b, B = %b, C = %b, led = %b", A, B, C, led);
  end

endmodule


