module tes_debouncer(
  input clk,
  input reset,
  input [3:0] btn,
  output [3:0] led,
  output [7:0] sseg,
  output [3:0] en_dig
);

  wire [3:0] dbtn;
  wire [1:0] cnt;
  wire dreset;

  debouncer DB0( clk, btn[0], dbtn[0] );
  debouncer DB1( clk, reset, dreset ); 

  counter2_up COUNTER2( ~dbtn[0], ~dreset, cnt );
  
  assign led[1:0] = ~cnt;
  
  bcd2dig_to_sseg BCD2( cnt[1], cnt[0],
        sseg[0], sseg[1], sseg[2], sseg[3],
        sseg[4], sseg[5], sseg[6], sseg[7]);

  assign en_dig = 4'b1110;
  
  assign led[3] = dbtn; // for debugging
  assign led[2] = 1'b1; // always OFF
endmodule
