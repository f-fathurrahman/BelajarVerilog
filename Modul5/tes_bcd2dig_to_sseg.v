module tes_bcd2dig_to_sseg(
  input [1:0] btn,
  output [7:0] sseg,
  output [3:0] en_dig);

  wire [1:0] btn_inv = ~btn;
  assign en_dig = 4'b1110;
  
  bcd2dig_to_sseg UUT( btn_inv[1], btn_inv[0],
        sseg[0], sseg[1], sseg[2], sseg[3],
        sseg[4], sseg[5], sseg[6], sseg[7]);

endmodule
