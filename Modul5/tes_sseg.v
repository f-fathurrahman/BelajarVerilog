module tes_sseg(
  output [7:0] sseg,
  output [3:0] en_dig
);

  assign sseg[7] = 0;  // PIN 127
  assign sseg[6] = 1;  // PIN 124
  assign sseg[5] = 1;  // PIN 126
  assign sseg[4] = 1;  // PIN 132
  assign sseg[3] = 1;  // PIN 129
  assign sseg[2] = 1;  // PIN 125
  assign sseg[1] = 1;  // PIN 121
  assign sseg[0] = 1;  // PIN 128
  
  assign en_dig[3] = 0; // PIN 137
  assign en_dig[2] = 1; // PIN 136
  assign en_dig[1] = 1; // PIN 135
  assign en_dig[0] = 1; // PIN 133

endmodule
