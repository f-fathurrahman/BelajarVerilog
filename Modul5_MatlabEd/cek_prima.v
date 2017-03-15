module cek_prima(
  input bit3,
  input bit2,
  input bit1,
  input bit0,
  output is_prime);

  assign is_prime = ( ~bit2 & bit1 )  | (bit2 & bit0);
  
endmodule
