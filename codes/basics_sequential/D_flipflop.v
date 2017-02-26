module D_flipflop(D, clk, Q);

  input D, clk;
  output reg Q;

  always @(posedge clk)
    Q = D;

endmodule
