// T flip flop from JK flip flop

`include "JK_ff_v3.v"

module T_ff(
  input wire T,
  input wire clk,
  output wire Q,
  output wire Qb);

  JK_ff jkff( T, T, clk, Q, Qb);

endmodule
