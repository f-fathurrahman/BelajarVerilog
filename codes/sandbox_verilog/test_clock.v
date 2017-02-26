//`timescale 1ns/100ps

module test_clock;

  reg clk;
  reg clk2;

  initial clk = 1'b0;
  initial clk2 = 1'b0;

  always #10 clk = ~clk;
  always #20 clk2 = ~clk2;

  initial begin
    $monitor("%d %b %b", $time, clk, clk2);
    #100 $finish;
  end

  initial begin
    $dumpfile("test_clock.vcd");
    $dumpvars(0, test_clock);
  end
endmodule
