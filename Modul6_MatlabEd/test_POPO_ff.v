module test_POPO(
  input [4:0] btn,
  input clk,
  output [7:0] led );

  T_ff_altera UUT( btn[0], clk, led[0] );

endmodule
