module test_operators;

  reg [2:0] A, B;
  reg [2:0] res;

  //always @( A, B ) res = A & B;
  //always @( A, B ) res = A | B;
  //always @( A, B ) res = A ^ B; // XOR
  always @( A, B ) res = A ^~ B; // XNOR

  initial begin
    A = 3'b001;
    B = 3'b111;
  end

  initial begin
    #1 A = 3'b000;
    #1 A = 3'b111; B = 3'b111;
    #1 A = 3'b000; B = 3'b001;
    #100 $finish;
  end

  initial begin
    $monitor("t = %3d , A = %b , B = %b , res = %b", $time, A, B, res);
  end

endmodule
