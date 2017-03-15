module mux_sseg_4dig(
  input wire clk, reset,
  input [7:0] dig3, dig2, dig1, dig0,
  output reg [3:0] en_dig,
  output reg [7:0] sseg
  );

  localparam N = 18;

  reg [N-1:0] q_reg;
  wire [N-1:0] q_next;

  always@(posedge clk, posedge reset)
  if(reset)
    q_reg <= 0;
  else
    q_reg <= q_next;

  assign q_next = q_reg + 1'b1;

  always @*
  case(q_reg[N-1:N-2])
    2'b00:
      begin
        en_dig = 4'b1110;
        sseg = dig0;
      end
    2'b01:
      begin
        en_dig = 4'b1101;
        sseg = dig1;
      end
    2'b10:
      begin
        en_dig = 4'b1011;
        sseg = dig2;
      end
    2'b11:   //XXX use default instead ?
      begin
        en_dig = 4'b0111;
        sseg = dig3;
      end
  endcase

endmodule
