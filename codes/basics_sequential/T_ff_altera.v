module T_ff_altera( T, clk, Q );

  input wire	clk;
  input wire	T;
  output reg	Q;

  always@(posedge clk)
  begin
  	Q <= Q ^ T;
  end

endmodule
