module counter_N( clk, cntN );

  localparam N = 18;
  input clk;
  output cntN;
  reg [N-1:0] cnt;
  wire [N-1:0] q_next;
  
  always@(posedge clk)
    cnt <= q_next;
    
  assign q_next = cnt + 1'b1;
    
  assign cntN  = cnt[N-1];

endmodule
