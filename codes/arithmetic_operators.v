module arithmetic_operators;

  reg [3:0] A;
  reg [3:0] B;

  integer intA;
  integer intB;

  initial begin
    A = 4'b1010;
    B = 4'b1011;

    intA = 4;
    intB = 7;

    $display("A = %b , B = %b", A, B);
    $display("intA = %4d , intB = %4d", intA, intB);

    // Arithmetic
    $display("A + B = %b", A+B);
    $display("A - B = %b", A-B);
    $display("A * B = %b", A*B);
    $display("A / B = %b", A/B);
    $display("A mod B = %b", A%B);
    $display("A ** B  = %b", A**B);

    $display("intA + intB = %d", intA+intB);
    $display("intA - intB = %d", intA-intB);
    $display("intA * intB = %d", intA*intB);
    $display("intA / intB = %d", intA/intB);
    $display("intA mod intB = %d", intA%intB);
    $display("intA ** intB  = %d", intA**intB);
  end

endmodule
