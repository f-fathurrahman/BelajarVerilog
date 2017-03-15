module tes_buzzer( input clk, output buzzer );

  reg beep_r;
  reg [27:0] count;

  assign buzzer = beep_r;

  always@(posedge clk)
	  count <= count + 1'b1;

  always @(count[9])
  	beep_r = ( count[13] & count[24] & count[27] );

endmodule
