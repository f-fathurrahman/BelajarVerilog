module freerun_shift_reg
  #(parameter N=8)
  (
    input wire clk, reset,
    input wire s_in,
    output wire s_out
  );

  reg [N-1:0] r_reg;
  wire [N-1:0] r_next;

  always @(posedge clk, posedge reset)
    if (reset)
      r_reg <= 0;
    else
      r_reg <= r_next;

  // next state logic: 1-bit shifter
  assign r_next = {s_in, r_reg[N-1:1]};

  assign s_out = r_reg[0];

endmodule
