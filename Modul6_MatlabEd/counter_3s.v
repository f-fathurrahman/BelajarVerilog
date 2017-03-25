module counter_3s(
  input clk,
  output out
  );

  // clock 50 MHz -> 0.02 ms period
  // 3 s = 3e6 ms -> 3e6/0.02 150e6 period
  // 28 bits <= ceil(log2(150e6-1))

  localparam N = 25; // 

  reg [N-1:0] cnt;
  wire [N-1:0] q_next;
  
  always@(posedge clk)
    cnt <= q_next;
    
  assign q_next = cnt + 1'b1;

  assign out = cnt[N-1];
 
endmodule 
