`timescale 1ns / 1ps
`include "counter_2bit_T_ff.v"

module test_counter_2bit_T_ff();

  reg clk;
  wire [1:0] count;

  counter_2bit_T_ff UUT( clk, count );

  initial clk = 0;
  always begin
    #10 clk = ~clk;
  end

  initial begin
    $dumpfile("test_counter_2bit_T_ff.vcd");
    $dumpvars(0, test_counter_2bit_T_ff);

    $monitor("%5d %b %b", $time, clk, count);

    #100 $finish;
  end

endmodule
