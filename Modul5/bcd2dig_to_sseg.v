module bcd2dig_to_sseg(
  input wire s1, s0,
  output wire a, b, c, d, e, f, g, dp );
  
  assign a = !s1 && s0;
  assign b = 1'b0;  // always on
  assign c = s1 && !s0;
  assign d = !s1 && s0;
  assign e = s0;
  assign f = !s1 && s0 || s1;
  assign g = !s1;
  assign dp = 1'b1;  // always off
  
endmodule
