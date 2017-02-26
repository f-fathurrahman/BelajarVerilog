module free_run_shift_reg
  #(parameter N=8)
  (
    input wire clk, reset,
    input wire s_in,
    output wire s_out
  );

  reg [N-1:0] r_reg;
  wire [N-1:0] r_next;

  always @(posedge clk, negedge reset)
  begin
    if (~reset)
      r_reg <= 0;
    else
      r_reg <= r_next;
  end

  assign r_next = {s_in, r_reg[N-1:1]};
  assign s_out = r_reg[0];

endmodule


`timescale 1ns / 1ps

module stimulus;
  reg clk;
  reg reset;

  reg s_in;
  wire s_out;

  free_run_shift_reg #(2) s1 (
    .clk(clk),
    .reset(reset),
    .s_in(s_in),
    .s_out(s_out)
    );

  integer i, j;

  initial begin
    clk = 0;
    for(i = 0; i<=40; i=i+1) begin
      #10 clk = ~clk;  // period 20 ns (50 MHz)
    end
  end

  initial begin
    $dumpfile("shift_register.vcd");
    $dumpvars(0, stimulus);

    s_in = 0;
    reset = 1;

    #2 s_in = 0; reset = 0;
    #2 reset = 1;

    for(j = 0; j<=10; j=j+1) begin
      #20 s_in = ~s_in;
    end

    #20 s_in = 1;
    #20 s_in = 1;
    #20 s_in = 0;
    #20 s_in = 1;
    #20 s_in = 1;
    #20 s_in = 0;
    #20 s_in = 1;
    #20 s_in = 1;
    #20 s_in = 0;

  end

  initial begin
    $monitor("clk s_in s_out");
  end

  initial begin
    $monitor("%8d %d %b %b", $time, clk, s_in, s_out);
  end

endmodule
