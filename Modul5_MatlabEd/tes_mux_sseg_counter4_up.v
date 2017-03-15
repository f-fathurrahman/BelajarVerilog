module tes_mux_sseg_counter4_up(
  input clk,
  input [3:0] btn,
  input reset,
  output [3:0] led,
  output [7:0] sseg,
  output [3:0] en_dig  
);

  wire [3:0] cnt0, cnt1, cnt2, cnt3;
  wire [7:0] dig0, dig1, dig2, dig3;
  
  wire [3:0] dbtn;
  wire dreset;
  
  // debouncers
  debouncer DB0( clk, btn[0], dbtn[0] );
  debouncer DB1( clk, btn[1], dbtn[1] );
  debouncer DB2( clk, btn[2], dbtn[2] );
  debouncer DB3( clk, btn[3], dbtn[3] );
   
  debouncer DBr( clk, reset, dreset ); 

  // counters
  counter4_up CNT0( ~dbtn[0], ~dreset, cnt0 );
  counter4_up CNT1( ~dbtn[1], ~dreset, cnt1 );
  counter4_up CNT2( ~dbtn[2], ~dreset, cnt2 );
  counter4_up CNT3( ~dbtn[3], ~dreset, cnt3 );  
  
  assign led = ~cnt0; // because of out leds are LOW ACTIVE
  
  // code converters from hex to digits seven-segments
  hex_to_sseg_case BCD4SSEG0( cnt0, dig0);
  hex_to_sseg_case BCD4SSEG1( cnt1, dig1);
  hex_to_sseg_case BCD4SSEG2( cnt2, dig2);
  hex_to_sseg_case BCD4SSEG3( cnt3, dig3);  
  
  // SSEG time-multiplexing
  mux_sseg_4dig MUXSSEG( clk, ~dreset, dig3, dig2, dig1, dig0, en_dig, sseg); 

endmodule

