module tes_mux_sseg_4dig_hardwired(
  input clk,
  output [3:0] en_dig,
  output [7:0] sseg,
  output [3:0] led
);

  wire reset;
  wire [7:0] dig3, dig2, dig1, dig0;

  // hardwired values
  assign reset = 1'b0; // always no reset
  assign dig3 = 8'b1111_1001;
  assign dig2 = 8'b1111_1000;
  assign dig1 = 8'b1100_0000;
  assign dig0 = 8'b1001_0000;

  mux_sseg_4dig UUT( clk, reset, dig3, dig2, dig1, dig0, en_dig, sseg);
  
  assign led[3] = en_dig[3];
  assign led[2] = en_dig[2];
  assign led[1] = en_dig[1];
  assign led[0] = en_dig[0];

endmodule
