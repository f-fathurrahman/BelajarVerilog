// structural JK FF

module JK_ff(
  input wire J,
  input wire K,
  input wire clk,
  input wire clr,
  output reg Q,
  output reg Qb
  );

  initial begin
    Q  = 1'b0;
    Qb = 1'b1;
  end

  wire w1;
  wire w2;
  wire Q_, Qb_;

  assign w1 = J && clk && Q;
  assign w2 = K && clk && Qb;

  assign Q_  = ! ( w1 || Qb );
  assign Qb_ = ! ( w2 || Q  );

  always @ ( * ) begin
    Q  = Q_;
    Qb = Qb_;
  end

endmodule
