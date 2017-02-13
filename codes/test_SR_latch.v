`timescale 1ns / 1ps
`include "SR_latch_v3.v"
//`include "SR_latch_v2.v"
//`include "SR_latch.v"

module test_SR_latch;

  reg S, R;
  wire Q, Qbar;

  SR_latch UUT( .S(S), .R(R), .Q(Q), .Qbar(Qbar) );

  initial begin
    $dumpfile("test_SR_latch.vcd");
    $dumpvars(0, test_SR_latch);

    S = 1'b0;
    R = 1'b1;

    #1 S = 1'b0; R = 1'b0;
    #1 S = 1'b1; R = 1'b0;
    #1 R = 1'b1; S = 1'b0;
    #1 R = 1'b0; S = 1'b0;
    #1 S = 1'b1; R = 1'b0;
    #1 R = 1'b1;
    #1 S = 1'b1; R = 0'b0;
    #1 $finish;
  end

  initial begin
    $monitor("%3d ns: S=%b, R=%b, Q=%b, Qb=%b", $time, S,R, Q,Qbar);
  end

endmodule
