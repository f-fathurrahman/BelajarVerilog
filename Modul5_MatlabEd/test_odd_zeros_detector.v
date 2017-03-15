module test_odd_zeros_detector(
  input [2:0] btn,
  output [3:0] led
);
  
  wire [2:0] btn_inv;
  wire [3:0] led_inv;
  
  //assign btn_inv = ~btn;
  
  odd_zeros_detector UUT( btn[0], btn[1], btn[2], led_inv[3] );
  
  assign led[3] = led_inv[3];
  
  assign led[2:0] = 3'b111;

endmodule
