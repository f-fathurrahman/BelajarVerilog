module tes_counter2_up(
  input clk,
  input [3:0] btn,
  input reset,
  output [3:0] led
);

  wire [1:0] cnt;
  
  wire [3:0] dbtn;
  wire dreset;
  
  debouncer DB0( clk, btn[0], dbtn[0] );
  debouncer DB1( clk, reset, dreset ); 

  counter2_up UUT( ~dbtn[0], ~dreset, cnt );
  
  assign led[1:0] = ~cnt; // because of out leds are LOW ACTIVE

  assign led[2] = 1'b1;  
  assign led[3] = 1'b1;

endmodule
