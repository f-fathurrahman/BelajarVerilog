module priority_encoder(
  input wire[4:1] x,
  output reg[2:0] pcode
  );

  always @ ( x[4], x[3], x[2], x[1] )
  begin
    if     ( x[4] == 1'b1 ) pcode = 3'b100;
    else if( x[3] == 1'b1 ) pcode = 3'b011;
    else if( x[2] == 1'b1 ) pcode = 3'b010;
    else if( x[1] == 1'b1 ) pcode = 3'b001;
    else                    pcode = 3'b000;
  end
endmodule

`timescale 1ns / 1ps

module stimulus;
  reg [4:1] x;
  wire [2:0] pcode;

  priority_encoder uut( .x(x), .pcode(pcode) );

  initial begin
    x = 4'b0000;
    #20 x = 4'b0001;
    #20 x = 4'b1001;
    #20 x = 4'b0011;
  end

  initial begin
    $monitor("t  x  pcode");
  end

  initial begin
    $monitor("%3d %4b %3b", $time, x, pcode);
  end

endmodule
