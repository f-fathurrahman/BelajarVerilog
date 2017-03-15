module tes_bcd4dig_to_sseg_case(
  input [3:0] btn,
  output [7:0] sseg,
  output [3:0] en_dig);

  wire [3:0] btn_inv;

  assign btn_inv = ~btn;

  assign en_dig = 4'b1110; // only LSB digit is enabled
  
  bcd4dig_to_sseg_case UUT( btn_inv, sseg );

endmodule
