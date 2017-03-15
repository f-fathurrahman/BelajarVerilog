module tes_btns_typeB(
  input [4:0] btn,
  output [7:0] led
  );

  assign led[4] = btn[4];
  assign led[3] = btn[3];
  assign led[2] = btn[2];
  assign led[1] = btn[1];
  assign led[0] = btn[0];
  
  assign led[5] = 1'b0;
  assign led[6] = 1'b0;
  assign led[7] = 1'b0;

endmodule
