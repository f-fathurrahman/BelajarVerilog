// ffr: Testing speaker

module tes_beep(
  input clk,
  input [4:0] btn,
  output reg buzzer );
  
  // clk 50 MHz PIN_23
  
  // 16bit binary counter
  reg [15:0] counter;
  
  wire btn_inv;
  
  always @(posedge clk) counter <= counter + 1'b1;
  
  // use the most significant bit of the counter to drive
  // the speaker
  assign btn_inv = ~btn[0];
  always @*
  if( btn_inv )
    buzzer = counter[15];

endmodule
