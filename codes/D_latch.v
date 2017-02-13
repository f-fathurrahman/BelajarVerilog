module D_latch(D, clk, Q);

  input D, clk;
  output reg Q;

  always @(D,clk)
  if(clk)
    Q = D;

endmodule
