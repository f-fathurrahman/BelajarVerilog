module test_mux_sseg_4dig(
  input wire clk, reset,
  input wire [7:0] dig3, dig2, dig1, dig0,
  output wire [3:0] en_dig,
  output wire [7:0] sseg
);

  mux_sseg_4dig UUT( clk, reset, dig3, dig2, dig1, dig0, en_dig, sseg);

endmodule
