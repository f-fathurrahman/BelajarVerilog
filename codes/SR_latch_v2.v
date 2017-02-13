module SR_latch( S, R, Q, Qbar );
  input S, R;
  output Q, Qbar;

  nor( Q, R, Qbar );
  nor( Qbar, S, Q );
endmodule
