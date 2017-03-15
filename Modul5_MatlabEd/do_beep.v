// ffr: Testing speaker

module do_beep(
  input clk,
  input enable,
  output reg buzzer );
  
  // clk 50 MHz PIN_23
  
  // 16bit binary counter
  reg [15:0] counter;
  
  always @(posedge clk) counter <= counter + 1'b1;
  
  // use the most significant bit of the counter to drive
  // the speaker
  always @*
  if( enable )
    buzzer = counter[15];

endmodule
