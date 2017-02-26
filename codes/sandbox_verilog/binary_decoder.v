module binary_decoder(
  input wire [1:0] in,
  input wire enable,
  output reg [3:0] out
  );

  always @(enable, in[1], in[0])
  begin
  if (enable == 1'b0)   out = 4'b0000;
  else if (in == 2'b00) out = 4'b0001;
  else if (in == 2'b01) out = 4'b0010;
  else if (in == 2'b10) out = 4'b0100;
  else if (in == 2'b11) out = 4'b1000;
  end
endmodule


`timescale 1ns / 1ps

module stimulus;
  reg [1:0] in;
  reg enable;
  wire [3:0] out;

  binary_decoder uut( .in(in), .enable(enable), .out(out));

  initial begin
    in = 4'b00;
    enable = 0;
    #20 enable = 1;
  end
endmodule
