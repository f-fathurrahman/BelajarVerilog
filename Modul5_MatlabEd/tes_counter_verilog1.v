module tes_counter_verilog1(
  input clk,
  output [3:0] led
);

  localparam N = 30;

  reg [N-1:0] q_reg;
  wire [N-1:0] q_next;
  
  wire reset;
  
  assign reset = 1'b0;

  always@(posedge clk, posedge reset)
  if(reset)
    q_reg <= 0;
  else
    q_reg <= q_next;

  assign q_next = q_reg + 1'b1;
  
  assign led = ~q_reg[N-1:N-4]; // because our LEDs are ACTIVE LOW

endmodule
