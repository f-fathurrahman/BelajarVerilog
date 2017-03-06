`timescale 1ns / 1ps
`include "counter_4bit_up.v"

module test_click_counter_4bit();

  reg click;
  reg reset, enable;
  wire [3:0] count;

  counter_4bit_up UUT( click, reset, enable, count );


  initial begin
    reset = 0;
    enable = 0;
    click = 1;  // not pushed
  end

  initial begin
    //
    $dumpfile("test_click_counter_4bit.vcd");
    $dumpvars(0, test_click_counter_4bit);
    //
    $display("time clock reset enable count");
    $monitor("%5d %b %b %b %b", $time, click, reset, enable, count);

    #5 reset = 1;
    #5 reset = 0; enable = 1;
    #5 click = 0; // pushed
    #1 click = 1; // lepas
    #5 click = 0;
    #1 click = 1;
    #400 $finish;
  end

endmodule
