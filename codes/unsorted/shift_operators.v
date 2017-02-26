module shift_operators;

  reg [7:0] A;
  reg [7:0] B;

  initial begin
    A = 8'b0101_1101;
    B = 8'b1101_0110;

    $display("A = %b", A);
    $display("B = %b", B);

    $display("A >>  2 = %b", A >> 2);
    $display("A <<  2 = %b", A << 2);

    $display("A >>> 2 = %b", A >>> 2);
    $display("A <<< 2 = %b", A <<< 2);
  end

endmodule
