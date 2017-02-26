module Mux2_1( out, cntrl, in1, in2 );
  input cntrl, in1, in2;
  output out;
  assign out = cntrl ? in1 : in2;
endmodule

module test_mux;
  wire out;
  reg cntrl, in1, in2;
  Mux2_1 uut( out, cntrl, in1, in2);

  initial begin
    $monitor("t=%3d cntrl=%b, in1=%b, in2=%b, out=%b", $time, cntrl, in1, in2, out);
    cntrl = 0; in1 = 0; in2 = 0;
    #1 in1 = 1; in2 = 0;
    #1 in1 = 0; in2 = 1;
    #1 in1 = 1; in2 = 1;
    #1 cntrl = 1;
    #1 in1 = 0; in2 = 0;
    #1 in1 = 1; in2 = 0;
    #1 in1 = 0; in2 = 1;
    #1 in1 = 1; in2 = 1;
    #10 $finish;
  end
endmodule
