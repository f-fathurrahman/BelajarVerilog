module mux4(
  input [3:0] select,
  input [3:0] in0,
  input [3:0] in1,
  input [3:0] in2,
  input [3:0] in3,
  output reg [3:0] out);

  // The signal select should be one-hot encoding
  always @(*)
  case( select )
    4'b0001: out = in0;
    4'b0010: out = in1;
    4'b0100: out = in2;
    4'b1000: out = in3;
    default: out = 4'b0000;
  endcase

endmodule 
