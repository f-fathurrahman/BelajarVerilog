`timescale 1ns / 1ps
`include "counter_4bit_up.v"

module test_counter_4bit_up;

  reg clock, reset, enable;
  wire [3:0] count;

  counter_4bit_up UUT( clock, reset, enable, count );

  initial clock = 0;
  always begin
    #10 clock = ~clock;
  end

  initial begin
    reset = 0;
    enable = 0;
  end

  initial begin
    //
    $dumpfile("test_counter_4bit_up.vcd");
    $dumpvars(0, test_counter_4bit_up);
    //
    $display("time clock reset enable count");
    $monitor("%5d %b %b %b %b", $time, clock, reset, enable, count);

    #5 reset = 1;
    #5 reset = 0; enable = 1;
    #400 $finish;
  end

endmodule
