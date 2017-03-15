module tes_sseg(
  output [7:0] sseg,
  output [3:0] en_dig
);

  assign sseg[7] = 1;
  assign sseg[6] = 1;
  assign sseg[5] = 0;
  assign sseg[4] = 0;
  assign sseg[3] = 0;
  assign sseg[2] = 0;
  assign sseg[1] = 0;
  assign sseg[0] = 0;
  
  assign en_dig[3] = 0;
  assign en_dig[2] = 1;
  assign en_dig[1] = 0;
  assign en_dig[0] = 1;

endmodule
