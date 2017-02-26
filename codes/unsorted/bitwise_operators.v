module bitwise_operators;

  reg [7:0] A;
  reg [7:0] B;

  initial begin
    A = 8'b1011_1110;
    B = 8'b1101_0010;

    $display("A = %b", A);
    $display("B = %b", B);

    $display("~A = %b", ~A);
    $display("A & B = %b", A & B); // bitwise AND
    $display("A | B = %b", A | B); // bitwise OR
    $display("A ^ B = %b", A^B); // bitwise XOR
  end

endmodule
