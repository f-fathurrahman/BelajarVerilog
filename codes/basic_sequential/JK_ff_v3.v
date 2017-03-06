module JK_ff(J, K, clk, Q, Qb);
  output reg Q, Qb;
  input wire J, K, clk;

  initial begin
    Q  = 1'b0;
    Qb = 1'b1;
  end

  always @ (posedge clk)
  begin
    case({J,K})
      2'b00: begin Q =  Q; Qb =  Qb; end // no change
      2'b01: begin Q =  0; Qb =   1; end
	  	2'b10: begin Q =  1; Qb =   0; end
	  	2'b11: begin Q = ~Q; Qb = ~Qb; end  // toggle
	  endcase
   end

endmodule
