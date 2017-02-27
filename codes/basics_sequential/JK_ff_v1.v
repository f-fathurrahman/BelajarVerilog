module JK_ff(
  input wire j,
  input wire k,
  input wire clk,
  input wire rst,
  output reg Q,
  output reg Qb );

  reg [1:0] jk;
  always@(posedge clk, rst)
  begin
    jk = {j,k};
    if( rst==0 ) begin  // normal operation
      case(jk)
        2'b01 : Q = 1'b0;
        2'b10 : Q = 1'b1;
        2'b11 : Q = ~Q;
        default: begin end
      endcase
    end
    else // reset is done here
      Q = 1'b0;

    Qb = ~Q;
  end

endmodule
