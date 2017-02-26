`timescale 1ns / 100ps

module counter_test;
  output reg clk;
  output reg rst;
  output reg [10:0] counter;

  initial clk = 1'b0;
  initial rst = 1'b1;
  initial counter = 11'b0;

  // 50 MHz
  always #10 clk = ~clk;

  always @(posedge clk)
  if(!rst) counter <= 11'd0;
  else if(counter == 11'd1750) counter <= 11'd0;
  else counter <= counter + 1'b1;

  initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_test);
    #20 $monitor("%d ns %d", $time, counter);
    #50 $finish;
  end

endmodule
