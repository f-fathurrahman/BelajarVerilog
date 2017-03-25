// 1: on, 0: off
// use inverter is the LED is ACTIVE LOW
module display_sseg(
  input bit3, bit2, bit1, bit0,
  output a, b, c, d, e, f, g
);

  assign a = bit1 | bit3 | (~bit2 & ~bit0) | (bit2 & bit0);

  assign b = ~bit2 | (~bit1 & ~bit0) | (bit1 & bit0);
  
  assign c = ~bit1 | bit0 | bit2;

  assign d = bit3 | (~bit2 & ~bit0) | (~bit2 & bit1) | (bit1 & ~bit0) | (bit2 & ~bit1 & bit0);
  
  assign e = (~bit2 & ~bit0) | (bit1 & ~bit0);
  
  assign f = bit3 | (~bit1 & ~bit0) | (bit2 & ~bit1) | (bit2 & ~bit0);
  
  assign g = bit3 | (~bit2 & bit1) | (bit1 & ~bit0) | (bit2 & ~bit1);

endmodule
