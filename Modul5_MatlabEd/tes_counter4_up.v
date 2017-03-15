module tes_counter4_up(
  input clk,
  input [3:0] btn,
  input reset,
  output [3:0] led,
  output [7:0] sseg,
  output [3:0] en_dig  
);

  wire [3:0] cnt;
  
  wire [3:0] dbtn;
  wire dreset;
  
  debouncer DB0( clk, btn[0], dbtn[0] );
   
  debouncer DBr( clk, reset, dreset ); 

  counter4_up UUT( ~dbtn[0], ~dreset, cnt );
  
  assign led = ~cnt; // because our leds are LOW ACTIVE
  
  hex_to_sseg_case BCD4SSEG0( cnt, sseg);

endmodule

