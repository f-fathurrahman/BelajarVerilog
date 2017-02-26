module test_nonblocking;

  reg [3:0] A, B, S;
  reg p, q;

  always @( A, B ) begin
    S <= A + B;
    p <= S[0];
    q <= S[1];
  end

  initial begin
    A = 4'b0001;
    B = 4'b0010;
  end

  initial begin
    #1 A = 4'b0000;
    #1 B = 4'b0101;
    #1 B = 4'b1110;
    #1 A = 4'b0011;
    #1 $finish;
  end

  initial begin
    $monitor("t = %4d , A = %b , B = %b , S = %b , p = %b, q = %b", $time, A, B, S, p, q );
  end

endmodule

