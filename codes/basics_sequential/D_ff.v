// behavioral D_ff

module D_ff(D, clk, Q);

  input D, clk;
  output reg Q;

  always @(posedge clk)
    Q = D;

endmodule
