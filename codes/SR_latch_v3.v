module SR_latch( S, R, Q, Qbar );

output reg Q;
output reg Qbar;

input S;
input R;

always @(*)
begin
  if( S != R) begin
    Q    = S;
    Qbar = R;
  end
  else if( S==1 && R==1 ) begin
    Q    = 1'bz;
    Qbar = 1'bz;
  end
 end

endmodule
