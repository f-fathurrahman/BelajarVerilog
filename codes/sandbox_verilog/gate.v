module gate(
    input x,
    input y,
    output z );

  wire x_, y_, p, q;

  not(x_, x);
  not(y_, y);
  not(y_, y);

  and(p, x , y );
  and(q, x_, y_);

  or(z, p, q);

endmodule


`timescale 1ns / 1ps

module test;

  reg x;
  reg y;

  wire z;

  gate uut( .x(x), .y(y), .z(z) );

  initial begin
    x = 0;
    y = 0;

    #100;
    #50 x = 1;
    #60 y = 1;
    #70 y = 1;
    #80 x = 0;
  end

  initial begin
    $monitor("t = %3d x = %2b, y = %2b, z = %d", $time, x, y, z);
  end

endmodule
