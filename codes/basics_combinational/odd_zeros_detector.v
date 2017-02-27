module odd_zeros_detector(
  input wire A,
  input wire B,
  input wire C,
  output wire led );

  assign led = (A & B & C) | (~A & ~B & C) | (~A & B & ~C) | (A & ~B & ~C);

endmodule
