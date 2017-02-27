`include "T_ff_v2.v"

module counter_2bit_T_ff(
  input wire clk,
  output wire [1:0] cnt );

  wire HIGH;
  wire [1:0] Q;
  wire [1:0] Qb;

  assign HIGH = 1;

  T_ff TFF0( HIGH, clk, cnt[0], Qb[0] );
  T_ff TFF1( cnt[0], clk, cnt[1], Qb[1] );

endmodule
