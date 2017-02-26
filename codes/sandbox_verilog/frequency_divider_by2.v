module frequency_divider_by2 ( clk ,rst,out_clk );

output reg out_clk;
input clk ;
input rst;

always @(posedge clk)
begin
if (~rst)
  out_clk <= 1'b0;
else
  out_clk <= ~out_clk;
end

endmodule


`timescale 1ns/100ps
module frequencydiv;
  output reg clk;
  output reg rst;
  input wire out_clk;

  frequency_divider_by2 freq1(clk,rst,out_clk);

  initial clk = 1'b0;

  always #10 clk = ~clk;

  initial
  begin
    $monitor($time,"clk = %b,rst = %b,out_clk = %b",clk,rst,out_clk);
    rst =0;
    #20 rst =1;
    #100 $finish;
  end

  initial
  begin
    $dumpfile ("frequencydiv.vcd");
    $dumpvars (0,frequencydiv);
  end

endmodule
