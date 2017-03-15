module counter2_up(
  input clk,
  input rst,
  output reg [1:0] cnt
);

  wire [1:0] q_next;
  
  always@(posedge clk, posedge rst)
  if(rst)
    cnt <= 0;
  else
    cnt <= q_next;
    
  assign q_next = cnt + 1;

endmodule
